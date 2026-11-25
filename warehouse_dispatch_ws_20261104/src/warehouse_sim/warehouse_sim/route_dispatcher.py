"""Fleet-wide SMAP route dispatcher with whole-route and segmented reservations."""

from __future__ import annotations

import json
import math
import os
import time
import uuid
from pathlib import Path

import rclpy
from action_msgs.msg import GoalStatus
from ament_index_python.packages import get_package_share_directory
from geometry_msgs.msg import PoseStamped, PoseWithCovarianceStamped, Twist
from nav2_msgs.action import FollowPath
from nav_msgs.msg import Path as NavPath
from rclpy.action import ActionClient
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from rclpy.signals import SignalHandlerOptions
from std_msgs.msg import String

from warehouse_sim.pose_tracker import PoseTracker
from warehouse_sim.route_graph import RouteError, RouteGraph, occupied_cells
from warehouse_sim.execution_store import ExecutionStore
from warehouse_sim.cycle_recovery import CycleVehicle, move_envelope, plan_cycle
from rclpy.clock import Clock, ClockType
from warehouse_sim.traffic_policy import STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE, TrafficStops, next_segment, wait_cycles, traffic_order
from warehouse_sim.domain_owner import DomainOwner
from warehouse_sim.navigation_recovery import remaining_route,restore_reservation,latest_executions


class RouteDispatcher(Node):
    def __init__(self):
        super().__init__('route_dispatcher')
        default_path = str(Path(get_package_share_directory('warehouse_sim')) /
                           'maps' / 'warehouse.smap')
        self.declare_parameter('smap_path', default_path)
        self.declare_parameter('robots', 2)
        self.declare_parameter('executor_db', '')
        self.smap_path = Path(self.get_parameter('smap_path').value)
        count = int(self.get_parameter('robots').value)
        if not 1 <= count <= 10:
            raise ValueError('robots must be between 1 and 10')
        self.robot_ids = [f'agv{i:02d}' for i in range(1, count + 1)]
        self.pose_tracker = PoseTracker(self, self.robot_ids)
        self.positions = {name: None for name in self.robot_ids}
        self.poses = {}
        self.pose_first_seen = {}
        self.action_clients = {name: ActionClient(self, FollowPath, f'/{name}/follow_path')
                               for name in self.robot_ids}
        self.pending = []
        self.task_ids = {}
        self.active = {}
        self.failed = {}
        self.waits = {}
        self.cycle_plan = None
        self.deadlock_reports = {}
        self.deadlock_last_search = {}
        self.command_ids = {}
        database=self.get_parameter('executor_db').value
        self.owner=DomainOwner('executor') if database else None
        self.session=uuid.uuid4().hex
        self.io_state={};self.io_at=-1e30
        self.stopped_since={};self.odom_at={}
        self.graph = None
        self.graph_mtime = None
        self.map_change_requires_restart=False
        traffic_qos = QoSProfile(depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL, reliability=ReliabilityPolicy.RELIABLE)
        self.traffic_pub = self.create_publisher(String, '/warehouse/traffic', traffic_qos)
        self.status = self.create_publisher(String, '/warehouse/status', 10)
        self.executor_state=self.create_publisher(String, '/warehouse/executor_state', traffic_qos)
        self.lease_pub=self.create_publisher(String, '/warehouse/motion_lease', 10)
        self.stop_publishers = {
            name: self.create_publisher(Twist, f'/{name}/cmd_vel', 1)
            for name in self.robot_ids}
        self.refresh_graph()
        self.traffic_stops = TrafficStops.load(
            self.graph.stations if self.graph else (), os.environ.get('SIM_TRAFFIC_POLICY'))
        if self.graph:
            self.traffic_stops.validate_closures(self.graph)
        self.segmented = os.environ.get('SIM_ROUTE_MODE', 'whole_route') == 'segmented'
        if self.segmented and (not database or not self.traffic_stops.waiting_points):
            raise ValueError('segmented routing requires a durable executor database and configured waiting points')
        self.store = ExecutionStore(database) if database else None
        if self.store:
            latest=latest_executions(self.store.records())
            saved_routes=self.store.metadata('reservations',{})
            for record in latest.values():
                c=record['body'];robot=c['robot']
                if c.get('cancel'):continue
                self.command_ids[robot]=c['command_id'];self.task_ids[robot]=c['task_id']
                if record['state']=='ACCEPTED':
                    goals=c.get('goals',[c.get('goal')])
                    task=dict(robot=robot,goal=goals[0],goals=goals,index=0,priority=c.get('priority',0))
                    if c.get('recovery_from'):
                        saved=saved_routes.get(robot,{})
                        if saved.get('task_id') not in (c['recovery_from'],c['task_id']) or not saved.get('nodes'):
                            raise ValueError('missing recovery reservation')
                        previous = {'body': {'task_id':saved['task_id']}}
                        geometry = restore_reservation(self.graph,previous,saved)
                        self.failed[robot] = dict(robot=robot, goal=c['goal'], **geometry,
                                                  cells=self.reservation_cells(geometry))
                        task.update(restore_recovery=True,recovery_nodes=geometry['nodes'],
                                    recovery_points=geometry['points'],cargo_id=c.get('cargo_id'))
                        if 'segment_goal' in geometry:
                            task['segment_goal'] = geometry['segment_goal']
                    self.pending.append(task)
                elif record['state'] in ('INTERRUPTED','FAILED','CANCELLED'):
                    saved=saved_routes.get(robot,{})
                    geometry=restore_reservation(self.graph,record,saved)
                    self.failed[robot]=dict(robot=robot,goal=c.get('goal'),**geometry,
                                           cells=self.reservation_cells(geometry))
        pose_qos = QoSProfile(
            depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL,
            reliability=ReliabilityPolicy.RELIABLE)
        self.pose_subscriptions = [
            self.create_subscription(
                PoseWithCovarianceStamped, f'/{name}/amcl_pose',
                lambda msg, name=name: self.on_pose(name, msg), pose_qos)
            for name in self.robot_ids]
        self.create_subscription(String, '/warehouse/task', self.on_task, 10)
        self.create_subscription(String,'/warehouse/actions_state',self.on_io,traffic_qos)
        from nav_msgs.msg import Odometry
        self.odom_subs=[self.create_subscription(Odometry,f'/{n}/odom',lambda m,n=n:self.on_odom(n,m),10) for n in self.robot_ids]
        self.create_timer(0.5, self.process)
        self.create_timer(.2, self.publish_executor, clock=Clock(clock_type=ClockType.STEADY_TIME))
        self.publish('ready', robots=self.robot_ids, smap=str(self.smap_path))

    def on_pose(self, robot, msg):
        point = msg.pose.pose.position
        q = msg.pose.pose.orientation
        yaw = math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))
        self.poses[robot] = (point.x, point.y, yaw)
        self.pose_first_seen.setdefault(robot, time.monotonic())
        if robot in self.active or robot in self.failed or self.graph is None:
            return
        self.positions[robot] = self.nearest_station(robot)

    def on_odom(self,robot,msg):
        now=time.monotonic();v=msg.twist.twist
        if now-self.odom_at.get(robot,-1e30) > .5:
            self.stopped_since.pop(robot,None)
        self.odom_at[robot]=now
        if math.hypot(v.linear.x,v.linear.y)<.04 and abs(v.angular.z)<.08:self.stopped_since.setdefault(robot,now)
        else:self.stopped_since.pop(robot,None)

    def nearest_station(self, robot):
        if self.graph is None or not self.graph.stations or robot not in self.poses:
            return None
        x, y = self.poses[robot][:2]
        closest = min(self.graph.stations.values(), key=lambda station:
                      math.hypot(station['pos']['x']-x, station['pos']['y']-y))
        if math.hypot(closest['pos']['x']-x, closest['pos']['y']-y) <= 0.65:
            return closest['instanceName']
        return None

    def publish(self, event, **fields):
        message = String()
        fields.setdefault('task_id', self.task_ids.get(fields.get('robot')))
        fields.setdefault('command_id', getattr(self,'command_ids',{}).get(fields.get('robot')))
        value={'event':event,**fields}
        store=getattr(self,'store',None)
        states=dict(queued='ACCEPTED',dispatched='ACTIVE',resumed='ACTIVE',paused='PAUSED',arrived='SUCCEEDED',failed='FAILED',cancelled='CANCELLED')
        if event in ('paused','resumed') and fields.get('robot') in self.active:
            value['route']=self.active[fields['robot']]['nodes']
        if store and fields.get('command_id') and store.get(fields['command_id']) and event in states:
            metadata = self.reservation_metadata() if event in ('dispatched','arrived','failed','cancelled') else None
            store.transition(fields['command_id'],states[event],value,metadata)
        message.data = json.dumps(value, ensure_ascii=False)
        self.status.publish(message)
        self.get_logger().info(message.data)

    def on_task(self, msg):
        task = {}
        accepted_here=False
        try:
            task = json.loads(msg.data)
            if not isinstance(task, dict):
                raise ValueError('task must be an object')
            robot = task['robot']
            if robot not in self.positions:
                raise ValueError('unknown robot')
            if task.get('map_name') and not any(task.get(k) for k in ('cancel','pause','resume')):
                if 'warehouse' != task['map_name']:
                    raise ValueError('map name mismatch; refusing motion')
            store=getattr(self,'store',None)
            if store:
                record,fresh=store.accept(task)
                accepted_here=fresh
                if not fresh:
                    if record['result']:self.status.publish(String(data=json.dumps(record['result'])))
                    else:self.publish('command_duplicate',robot=robot,task_id=task.get('task_id'),command_id=task['command_id'],state=record['state'])
                    return
            if task.get('pause') or task.get('resume'):
                if task.get('task_id')!=self.task_ids.get(robot):raise ValueError('control execution id mismatch')
                current=self.active.get(robot)
                pending=next((t for t in self.pending if t['robot']==robot),None)
                if task.get('pause'):
                    if current:
                        current['pause_requested']=True
                        if 'localization_retry_until' in current:
                            current.pop('localization_retry_until')
                            current['paused'] = True
                            self.publish('paused',robot=robot)
                        elif current.get('handle'):current['handle'].cancel_goal_async()
                    elif pending:
                        pending['paused']=True;self.publish('paused',robot=robot)
                    else:raise ValueError('no execution to pause')
                else:
                    if current and current.get('paused'):
                        if not self.refresh_pose(robot):raise ValueError('fresh TF required for resume')
                        points=current.get('points') or self.graph.path_points(current['nodes'])
                        p=self.poses[robot]
                        nearest=min(range(len(points)),key=lambda i:math.hypot(points[i][0]-p[0],points[i][1]-p[1]))
                        if math.hypot(points[nearest][0]-p[0],points[nearest][1]-p[1])>.65:raise ValueError('paused vehicle moved outside reserved path')
                        suffix = [p]+points[nearest:]
                        if 'segment_goal' in current and not occupied_cells(suffix) <= current['cells']:
                            raise ValueError('resumed path would exceed the saved segment reservation')
                        current.pop('pause_requested',None);current.pop('paused',None);current.pop('handle',None)
                        self.start_action(robot,suffix)
                        self.publish('resumed',robot=robot)
                    elif pending and pending.get('paused'):
                        pending.pop('paused',None);self.publish('resumed',robot=robot)
                    else:raise ValueError('execution is not paused')
                if store:store.transition(task['command_id'],'SUCCEEDED',dict(event='control_accepted',robot=robot,task_id=task['task_id'],command_id=task['command_id']))
                return
            if task.get('cancel'):
                if task.get('task_id') is not None and task['task_id'] != self.task_ids.get(robot):
                    raise ValueError('cancel execution id mismatch')
                current = self.active.get(robot)
                if current:
                    current['cancel_requested'] = True
                    if current.get('paused') or 'localization_retry_until' in current:
                        self.failed[robot]=self.active.pop(robot)
                        self.publish('cancelled',robot=robot)
                    elif current.get('handle'):
                        current['handle'].cancel_goal_async()
                pending = next((item for item in self.pending if item['robot'] == robot), None)
                self.pending = [item for item in self.pending if item['robot'] != robot]
                if pending and not current:
                    if pending.get('checkpoint'):
                        self.failed[robot] = pending['checkpoint']
                    self.publish('cancelled', robot=robot,motion_started=robot in self.failed,station=self.nearest_station(robot))
                self.publish('cancel_requested', robot=robot)
                if store:store.transition(task['command_id'],'SUCCEEDED',dict(event='cancel_requested',robot=robot,task_id=task['task_id'],command_id=task['command_id']))
                return
            if task.get('recovery_from'):
                now=time.monotonic();old=self.failed.get(robot)
                if not old or self.task_ids.get(robot)!=task['recovery_from'] or not self.refresh_pose(robot):raise ValueError('recovery does not match isolated execution')
                self.traffic_stops.validate_destinations([task['goal']])
                if now-self.odom_at.get(robot,-1e30)>1 or now-self.stopped_since.get(robot,now)<2:raise ValueError('recovery requires stopped feedback')
                if now-self.io_at>1 or self.io_state.get('loads',{}).get(robot)!=task.get('cargo_id'):raise ValueError('recovery cargo state mismatch')
                if task['goal']!=old['goal']:raise ValueError('recovery must keep original goal')
                segment_goal = old.get('segment_goal', old['goal'])
                checkpoint = old.get('at_checkpoint')
                if checkpoint or old.get('motion_started') is False:
                    station=self.nearest_station(robot)
                    if station is None:raise ValueError('unstarted execution recovery requires a confirmed station')
                    if checkpoint and station != segment_goal:
                        raise ValueError('vehicle has moved away from its saved waiting point')
                    nodes=self.graph.route(station,segment_goal);points=self.graph.path_points(nodes) or [self.poses[robot]]
                else:nodes,points=remaining_route(self.graph,old['nodes'],self.poses[robot],points=old.get('points'))
                self.task_ids[robot]=task['task_id'];self.command_ids[robot]=task['command_id']
                pending = dict(robot=robot,goal=task['goal'],goals=[task['goal']],index=0,
                               priority=task.get('priority',0), recovery_nodes=nodes,recovery_points=points)
                if 'segment_goal' in old:
                    pending['segment_goal'] = segment_goal
                self.pending.append(pending)
                self.publish('queued',robot=robot,goal=task['goal'],recovery=True)
                return
            if task.get('recover'):
                if store:raise ValueError('use checked recover_execution through business scheduler')
                station = self.nearest_station(robot)
                if robot in self.active or station is None:
                    raise ValueError('recovery requires a stopped robot localized within 0.65 m of a station')
                self.failed.pop(robot, None)
                self.positions[robot] = station
                self.publish('recovered', robot=robot, station=station)
            goals = task.get('goals')
            if goals is None:
                goals = [task['goal']]
            if (not isinstance(goals, list) or not goals or
                    any(not isinstance(goal, str) or not goal.strip() for goal in goals)):
                raise ValueError('goals must be a nonempty list of station names')
            self.traffic_stops.validate_destinations(goals)
            if robot in self.failed:
                raise ValueError('robot requires recovery after its previous failed task')
            if robot in self.active or any(item['robot'] == robot for item in self.pending):
                raise ValueError('robot already has a task')
            self.task_ids[robot] = task.get('task_id')
            if store:self.command_ids[robot]=task['command_id']
            self.pending.append({'robot': robot, 'goal': goals[0],
                                 'goals': goals, 'index': 0, 'priority': task.get('priority', 0)})
            fields = {'robot': robot, 'goal': goals[0]}
            if len(goals) > 1:
                fields['goals'] = goals
            self.publish('queued', **fields)
        except (ValueError, KeyError, TypeError, OSError) as error:
            if accepted_here:
                self.store.transition(task['command_id'],'FAILED',dict(event='rejected',robot=task['robot'],task_id=task.get('task_id'),command_id=task['command_id'],reason=str(error),motion_started=False))
            self.publish('rejected', robot=task.get('robot') if isinstance(task, dict) else None,
                         task_id=task.get('task_id') if isinstance(task, dict) else None,
                         command_id=task.get('command_id') if isinstance(task,dict) else None, reason=str(error))

    def publish_executor(self):
        # Only this process renews motion permission. A crash removes permission
        # within the independent guard's .8-second wall-clock deadline.
        allowed=[n for n,t in self.active.items() if not self.map_change_requires_restart
                 and not any(k in t for k in ('arrival_response','localization_retry_until'))
                 and not any(t.get(k) for k in ('cancel_requested','pause_requested','paused'))
                 and self.refresh_pose(n)]
        self.lease_pub.publish(String(data=json.dumps(dict(robots=allowed))))
        self.executor_state.publish(String(data=json.dumps(dict(session=self.session,map_name='warehouse',map_change_requires_restart=self.map_change_requires_restart,
            database_id=self.store.database_id if self.store else None,records=self.store.records() if self.store else [],active=list(self.active),pending=[t['robot'] for t in self.pending],failed=list(self.failed)))))

    def on_io(self,msg):
        self.io_state=json.loads(msg.data);self.io_at=time.monotonic()

    def blockers(self,robot,start,goal):
        closed = self.traffic_stops.closed_edges
        try:
            path = (next_segment(self.graph,start,goal,self.traffic_stops.waiting_points,(),(),(),closed_edges=closed)
                    if self.segmented else self.graph.route(start,goal,forbidden_directed_edges=closed))
        except RouteError:return []
        desired = occupied_cells(self.graph.path_points(path))
        if self.segmented:
            station = self.graph.stations[path[-1]]['pos']
            desired |= occupied_cells([(station['x'],station['y'])],radius=STOP_FOOTPRINT_RADIUS+STOP_TOLERANCE)
        desired_edges = set(map(frozenset,zip(path,path[1:])))
        blocked=[]
        reservations = self.reservations()
        for other in self.robot_ids:
            if other==robot:continue
            task=reservations.get(other)
            cells=task['cells'] if task else occupied_cells([self.poses[other]]) if other in self.poses else set()
            edges = set(map(frozenset,zip(task['nodes'],task['nodes'][1:]))) if task else set()
            if not desired.isdisjoint(cells) or not desired_edges.isdisjoint(edges):
                blocked.append(other)
        return blocked

    def resolve_cycle(self):
        if not self.segmented:
            self.resolve_legacy_cycle()
            return
        plan = self.cycle_plan
        if plan:
            if plan['moving']:
                if plan['moving'] not in self.active:
                    self.discard_cycle_plan('movement_interrupted')
                return
            step = plan['moves'][0]
            pending = next((task for task in self.pending if task['robot']==step.robot),None)
            if not pending or pending.get('paused') or plan['tasks'][step.robot] != self.task_ids.get(step.robot):
                self.discard_cycle_plan('task_changed')
            return

        observed = {tuple(cycle) for cycle in wait_cycles(self.waits)}
        self.deadlock_reports = {cycle:status for cycle,status in self.deadlock_reports.items() if cycle in observed}
        self.deadlock_last_search = {cycle:stamp for cycle,stamp in self.deadlock_last_search.items() if cycle in observed}
        now = time.monotonic()
        for cycle in sorted(observed):
            if not all(self.waits[name]['reason'] in ('resource_conflict','swept_area_conflict')
                       and now-self.waits[name]['since'] >= 1 for name in cycle):
                continue
            if now-self.deadlock_last_search.get(cycle,-1e30) < 2:
                continue
            self.deadlock_last_search[cycle] = now
            loads = self.confirmed_cycle_loads(cycle)
            if loads is None:
                self.report_cycle(cycle,'cargo_unconfirmed')
                continue
            tasks = {task['robot']:task for task in self.pending if task['robot'] in cycle}
            if any(name not in tasks or tasks[name].get('paused') or tasks[name].get('recovery_points')
                   or name in self.failed or not self.stopped(name) or not self.refresh_pose(name)
                   or self.nearest_station(name) is None for name in cycle):
                self.report_cycle(cycle,'vehicle_unconfirmed')
                continue
            reservations = self.reservations()
            vehicles = []
            for name in cycle:
                pose = self.poses[name][:2]
                cells = occupied_cells([pose])
                if name in reservations:
                    cells.update(reservations[name]['cells'])
                vehicles.append(CycleVehicle(name,self.nearest_station(name),tasks[name]['goal'],
                                             loads.get(name),frozenset(cells),pose))
            external = self.reserved(None, exclude=cycle)
            moves,status = plan_cycle(self.graph, vehicles, self.traffic_stops, *external, waits=self.waits,
                                      closed_edges=self.traffic_stops.closed_edges)
            self.report_cycle(cycle,status)
            if moves:
                self.cycle_plan = dict(robots=cycle, moves=list(moves), moving=None,
                                       tasks={name:self.task_ids[name] for name in cycle},
                                       envelopes=[move_envelope(self.graph, move.nodes) for move in moves])
                self.publish('traffic_deadlock_planned', cycle=list(cycle),
                             moves=[dict(robot=step.robot, station=step.nodes[-1], loaded=step.cargo is not None)
                                    for step in moves])
            return

    def confirmed_cycle_loads(self, robots):
        loads = self.io_state.get('loads')
        cargo = self.io_state.get('cargo')
        records = self.io_state.get('records')
        if (time.monotonic()-self.io_at>2 or not isinstance(loads, dict)
                or not isinstance(cargo, dict) or not isinstance(records, list)):
            return None
        if any(record['state'] in ('ACTIVE','INTERRUPTED') and record['body']['robot'] in robots
               for record in records):
            return None
        if any(not isinstance(loads[robot],str) or cargo.get(loads[robot],{}).get('location') != robot
               for robot in robots if robot in loads):
            return None
        return loads

    def report_cycle(self, cycle, status):
        previous = self.deadlock_reports.get(cycle)
        self.deadlock_reports[cycle] = status
        if previous != status and status != 'planned':
            self.publish('traffic_deadlock_held', cycle=list(cycle), reason=status)

    def discard_cycle_plan(self, reason):
        robots = self.cycle_plan['robots']
        self.publish('traffic_deadlock_replan', cycle=list(robots), reason=reason)
        for robot in robots:
            self.waits.pop(robot,None)
        self.deadlock_reports.pop(robots,None)
        self.cycle_plan = None

    def resolve_legacy_cycle(self):
        cycles=wait_cycles(self.waits)
        if not cycles or time.monotonic()-self.io_at>2:return
        for cycle in cycles:
            candidates=sorted((t for t in self.pending if t['robot'] in cycle
                               and not t.get('paused') and not t.get('recovery_points')
                               and not t.get('restore_recovery')),key=lambda t:(t.get('priority',0),t['robot']))
            for task in candidates:
                robot=task['robot']
                if robot in self.io_state.get('loads',{}) or task.get('yielding'):continue
                if any(r['state'] in ('ACTIVE','INTERRUPTED') and r['body']['robot']==robot for r in self.io_state.get('records',[])):continue
                start=self.nearest_station(robot)
                if start is None:continue
                nodes,edges,cells=self.reserved(robot)
                forbidden=set(edges)
                forbidden.update(frozenset(e) for e,c in self.graph.edge_cells.items() if not c.isdisjoint(cells))
                routes=[]
                for cp in sorted(self.traffic_stops.yield_bays):
                    if cp==start or cp in nodes:continue
                    try:
                        path=self.graph.route(start,cp,nodes,forbidden,
                                              forbidden_directed_edges=self.traffic_stops.closed_edges)
                        points=self.graph.path_points(path)
                        if not occupied_cells(points).isdisjoint(cells):continue
                        length=sum(self.graph.edges[a,b][1] for a,b in zip(path,path[1:]))
                        routes.append((length,cp))
                    except RouteError:pass
                if routes:
                    cp=min(routes)[1]
                    task['goals']=[cp]+task['goals'][task['index']:]
                    task.update(goal=cp,index=0,yielding=True)
                    self.waits.pop(robot,None)
                    self.publish('traffic_yield',robot=robot,station=cp,cycle=cycle,reason='unloaded vehicle yields via a collision-reserved path')
                    return

    def refresh_graph(self):
        if self.map_change_requires_restart:return False
        try:
            mtime = self.smap_path.stat().st_mtime_ns
            if self.graph is not None and mtime!=self.graph_mtime:
                if not self.map_change_requires_restart:self.publish('map_change_requires_restart',reason='SMAP changed during session; motion held, start a new world/session')
                self.map_change_requires_restart=True
                return False
            if mtime != self.graph_mtime:
                self.graph = RouteGraph(self.smap_path)
                self.graph_mtime = mtime
                self.publish('routes_loaded', stations=len(self.graph.stations),
                             directed_paths=len(self.graph.edges))
            return True
        except (OSError, ValueError, KeyError) as error:
            self.map_change_requires_restart=True
            self.publish('route_error', reason=str(error))
            return False

    def reservations(self):
        checkpoints = {task['robot']: task['checkpoint'] for task in self.pending if 'checkpoint' in task}
        return {**checkpoints, **self.failed, **self.active}

    @staticmethod
    def reservation_cells(task):
        if task.get('at_checkpoint'):
            return occupied_cells([task['points'][0][:2]], radius=STOP_FOOTPRINT_RADIUS)
        cells = occupied_cells(task['points'])
        if 'start_footprint' in task:
            cells.update(occupied_cells([task['start_footprint']]))
        if 'end_footprint' in task:
            cells.update(occupied_cells([task['end_footprint']], radius=STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE))
        return cells

    def reservation_metadata(self):
        fields = ('nodes','points','segment_goal','at_checkpoint','start_footprint','end_footprint')
        return {'reservations': {
            name: {**{key: task[key] for key in fields if key in task}, 'task_id': self.task_ids.get(name)}
            for name, task in self.reservations().items()
        }}

    def reserved(self, requesting_robot, *, exclude=()):
        omitted = {*exclude, requesting_robot}
        nodes, edges, cells = set(), set(), set()
        for robot, task in self.reservations().items():
            if robot in omitted:
                continue
            nodes.update(task['nodes'])
            cells.update(task['cells'])
            edges.update(frozenset((a, b)) for a, b in zip(task['nodes'], task['nodes'][1:]))
        for robot, station in self.positions.items():
            if robot not in omitted and robot not in self.active:
                if station is not None:
                    nodes.add(station)
                if robot in self.poses:
                    cells.update(occupied_cells([self.poses[robot]]))
        return nodes, edges, cells

    def make_path(self, points):
        path = NavPath()
        path.header.frame_id = 'map'
        path.header.stamp = self.get_clock().now().to_msg()
        for x, y, yaw in points:
            pose = PoseStamped()
            pose.header = path.header
            pose.pose.position.x = x
            pose.pose.position.y = y
            pose.pose.orientation.z = math.sin(yaw / 2)
            pose.pose.orientation.w = math.cos(yaw / 2)
            path.poses.append(pose)
        return path

    def complete_leg(self, robot, task):
        goal = task['goal']
        self.positions[robot] = goal
        next_index = task['index'] + 1
        if next_index < len(task['goals']):
            next_goal = task['goals'][next_index]
            self.pending.append({'robot': robot, 'goal': next_goal,
                                 'goals': task['goals'], 'index': next_index,'priority':task.get('priority',0),'yielding':task.get('yielding',False)})
            self.publish('waypoint_arrived', robot=robot, station=goal,
                         waypoint_index=next_index, waypoint_count=len(task['goals']),
                         next_goal=next_goal)
        else:
            fields = {'robot': robot, 'station': goal}
            if len(task['goals']) > 1:
                fields['goals'] = task['goals']
            self.publish('arrived', **fields)

    def stopped(self, robot):
        now = time.monotonic()
        return now-self.odom_at.get(robot, -1e30) <= .5 and now-self.stopped_since.get(robot, now) >= .25

    def navigation_target_confirmed(self, robot, task):
        if not self.refresh_pose(robot):
            return False
        pose = self.poses.get(robot)
        target = self.graph.stations.get(task.get('segment_goal', task['goal'])) if self.graph else None
        if not pose or not target or math.hypot(pose[0]-target['pos']['x'], pose[1]-target['pos']['y']) > STOP_TOLERANCE:
            return False
        if 'segment_goal' not in task:
            return True
        stopped_cells = occupied_cells([pose[:2]], radius=STOP_FOOTPRINT_RADIUS)
        return self.stopped(robot) and stopped_cells <= task['cells']

    def complete_segment(self, robot, task):
        station = task['segment_goal']
        self.positions[robot] = station
        checkpoint = dict(nodes=[station], points=[self.poses[robot]], goal=task['goal'],
                          segment_goal=station, at_checkpoint=True)
        checkpoint['cells'] = self.reservation_cells(checkpoint)
        pending = {key: task[key] for key in ('robot','goal','goals','index','priority','yielding') if key in task}
        self.pending.append({**pending, 'checkpoint': checkpoint})
        if self.store:
            self.store.save_metadata(self.reservation_metadata())
        self.publish('segment_released', robot=robot, station=station, next_goal=task['goal'],
                     pose=list(self.poses[robot]), released_cells=len(task['cells'] - checkpoint['cells']))

    def wait(self, robot, reason, blockers=()):
        previous = self.waits.get(robot)
        detail = dict(reason=reason, blockers=sorted(blockers))
        if not previous or previous['reason'] != reason or previous['blockers'] != detail['blockers']:
            detail['since'] = time.monotonic()
            detail['first_since'] = previous.get('first_since', previous['since']) if previous else detail['since']
            self.waits[robot] = detail
            self.publish('traffic_wait', robot=robot, **detail)

    def traffic_snapshot(self):
        active = {}
        for name, task in self.reservations().items():
            points = task.get('points') or (self.graph.path_points(task['nodes']) if self.graph else [])
            active[name] = dict(nodes=task['nodes'], points=points[::max(1, len(points)//200)],
                                task_id=self.task_ids.get(name), failed=name in self.failed,
                                segment_goal=task.get('segment_goal'), at_checkpoint=task.get('at_checkpoint',False))
        names = list(self.active)
        overlap = sum(len(self.active[a]['cells'] & self.active[b]['cells']) for i,a in enumerate(names) for b in names[i+1:])
        pending = {t['robot'] for t in self.pending}
        self.waits = {n:w for n,w in self.waits.items() if n in pending}
        stops = self.traffic_stops
        self.traffic_pub.publish(String(data=json.dumps(dict(active=active, waiting=self.waits,
            closed_edges=sorted(stops.closed_edges),
            deadlocks=wait_cycles(self.waits), overlap_cells=overlap, waiting_points=sorted(stops.waiting_points),
            deadlock_recovery=[dict(robots=list(cycle),status=status) for cycle,status in self.deadlock_reports.items()],
            reservation_mode='segmented' if self.segmented else 'whole_route',
            yield_bays=sorted(stops.yield_bays), no_stop_stations=sorted(stops.no_stop_stations)))))

    def refresh_pose(self, robot):
        tracker = getattr(self, 'pose_tracker', None)
        if tracker is None:
            return True
        reading = tracker.read(robot)
        if reading is None:
            return False
        self.poses[robot] = reading[0]
        return True

    def process(self):
        if not self.refresh_graph():return
        unknown=[robot for robot in self.robot_ids if not self.refresh_pose(robot)]
        for robot, task in list(self.active.items()):
            if 'localization_retry_until' in task:
                self.resume_after_localization_loss(robot, task)
            elif 'arrival_response' in task:
                ready = self.navigation_target_confirmed(robot, task)
                if ready or time.monotonic() >= task['arrival_deadline']:
                    response = task.pop('arrival_response')
                    self.result(robot, type('CompletedFuture', (), {'result': lambda _self, response=response: response})())
        self.traffic_snapshot()
        if not self.pending or not self.refresh_graph():
            return
        if unknown:
            for task in self.pending:self.wait(task['robot'],'fleet_localization_unavailable',unknown)
            return
        self.resolve_cycle()
        closed = self.traffic_stops.closed_edges
        guard = frozenset().union(*(self.cycle_plan or {}).get('envelopes', ()))
        now = time.monotonic()
        for task in sorted(self.pending, key=lambda task: traffic_order(
                task.get('priority', 0), self.waits.get(task['robot'], {}).get('first_since'), now, 30.)):
            if task.get('paused'):continue
            robot, goal = task['robot'], task['goal']
            plan = self.cycle_plan
            step = None
            if plan and robot in plan['robots']:
                if plan['moving'] or robot != plan['moves'][0].robot:
                    self.wait(robot,'cycle_plan_wait')
                    continue
                step = plan['moves'][0]
            if not self.refresh_pose(robot):
                self.wait(robot, 'fresh_tf_required')
                continue
            start = self.nearest_station(robot)
            self.positions[robot] = start
            if step:
                loads = self.confirmed_cycle_loads((robot,))
                if loads is None or loads.get(robot) != step.cargo or start != step.nodes[0] or not self.stopped(robot):
                    self.discard_cycle_plan('position_or_cargo_changed')
                    continue
            checkpoint = task.get('checkpoint')
            if checkpoint and (start != checkpoint['segment_goal'] or not self.stopped(robot)):
                self.wait(robot, 'waiting_point_pose_or_stop_unconfirmed')
                continue
            recovering=bool(task.get('recovery_points'))
            if task.get('restore_recovery'):
                if time.monotonic()-self.odom_at.get(robot,-1e30)>1 or time.monotonic()-self.stopped_since.get(robot,time.monotonic())<2:continue
                if time.monotonic()-self.io_at>1 or self.io_state.get('loads',{}).get(robot)!=task.get('cargo_id'):
                    self.wait(robot,'recovery_cargo_unconfirmed')
                    continue
                try:task['recovery_nodes'],task['recovery_points']=remaining_route(self.graph,task['recovery_nodes'],self.poses[robot],points=task['recovery_points'])
                except ValueError as error:
                    self.wait(robot,str(error));continue
                task.pop('restore_recovery')
            if (start is None or robot in self.failed) and not recovering:
                continue
            # Nav2 can expose FollowPath just before its map->odom TF is populated.
            # Let the initial AMCL transform settle before the first dispatch.
            if time.monotonic() - self.pose_first_seen.get(robot, time.monotonic()) < 2.0:
                continue
            # Validate the remaining ordered stops before starting the next leg.
            try:
                station = start
                remaining = task['goals'][task['index']:]
                business_goals = remaining[1:] if task.get('yielding') and task['index'] == 0 else remaining
                self.traffic_stops.validate_destinations(business_goals)
                for destination in ([] if recovering else remaining):
                    self.graph.route(station, destination)
                    station = destination
            except (RouteError, ValueError) as error:
                self.pending.remove(task)
                self.publish('rejected', robot=robot, reason=str(error))
                continue
            if start == goal and not recovering:
                self.pending.remove(task)
                self.complete_leg(robot, task)
                continue
            if not self.action_clients[robot].server_is_ready():
                continue
            reserved_nodes, reserved_edges, reserved_cells = self.reserved(robot)
            if self.cycle_plan and not step:
                reserved_cells.update(guard)
            if recovering:
                nodes,points=task['recovery_nodes'],task['recovery_points']
                if not closed.isdisjoint(zip(nodes, nodes[1:])):
                    self.wait(robot,'closed_topology')
                    continue
                active = {**task, 'nodes':nodes, 'points':points}
                if 'segment_goal' in active:
                    target = self.graph.stations[active['segment_goal']]['pos']
                    active.update(start_footprint=self.poses[robot][:2], end_footprint=(target['x'], target['y']))
                active['cells'] = self.reservation_cells(active)
                if not active['cells'].isdisjoint(reserved_cells):
                    self.wait(robot,'recovery_path_conflict');continue
                self.pending.remove(task);self.failed.pop(robot,None);self.waits.pop(robot,None)
                self.active[robot]=active
                self.publish('dispatched',robot=robot,goal=goal,route=nodes,recovery=True)
                if 'segment_goal' in active and len(points) == 1 and self.navigation_target_confirmed(robot,active):
                    self.active.pop(robot)
                    self.finish_navigation(robot,active)
                else:
                    self.start_action(robot,points)
                continue
            directed_blocked=set(closed)
            for edge, cells in self.graph.edge_cells.items():
                if not cells.isdisjoint(reserved_cells):
                    directed_blocked.add(edge)
            try:
                if step:
                    nodes = list(step.nodes)
                    if (reserved_nodes.intersection(nodes[1:]) or any(
                        edge in directed_blocked or frozenset(edge) in reserved_edges
                        for edge in zip(nodes,nodes[1:])
                    )):
                        self.discard_cycle_plan('reservation_changed')
                        continue
                elif self.segmented:
                    nodes = next_segment(self.graph,start,goal,self.traffic_stops.waiting_points,
                                         reserved_nodes,reserved_edges,directed_blocked,closed_edges=closed)
                else:
                    nodes = self.graph.route(start, goal, reserved_nodes, reserved_edges,forbidden_directed_edges=directed_blocked)
            except RouteError:
                if closed:
                    try:
                        self.graph.bid_distance(start, goal, closed)
                    except RouteError:
                        self.wait(robot, 'closed_topology')
                        continue
                self.wait(robot, 'resource_conflict', self.blockers(robot,start,goal))
                # A route may become available when another robot releases its reservation.
                continue
            points = self.graph.path_points(nodes)
            if not points:
                continue
            active = {**task, 'nodes': nodes, 'points': points}
            active.pop('checkpoint',None)
            if self.segmented:
                station = self.graph.stations[nodes[-1]]['pos']
                active.update(segment_goal=nodes[-1], start_footprint=self.poses[robot][:2],
                              end_footprint=(station['x'],station['y']))
            active['cells'] = self.reservation_cells(active)
            if not active['cells'].isdisjoint(reserved_cells):
                if step:
                    self.discard_cycle_plan('reservation_changed')
                    continue
                self.wait(robot, 'swept_area_conflict', self.blockers(robot,start,goal))
                continue
            self.pending.remove(task)
            self.waits.pop(robot, None)
            self.active[robot] = active
            if step:
                plan['moving'] = robot
                active['cycle_move'] = True
                if nodes[-1] != goal:
                    self.publish('traffic_yield',robot=robot,station=nodes[-1],
                                 cycle=list(plan['robots']),loaded=step.cargo is not None,
                                 cargo_id=step.cargo)
            self.publish('dispatched', robot=robot, goal=goal, route=nodes,
                         segment_goal=active.get('segment_goal'), poses=len(points))
            self.start_action(robot,points)

    def finish_navigation(self, robot, task):
        if task.get('segment_goal', task['goal']) != task['goal']:
            self.complete_segment(robot,task)
        else:
            self.complete_leg(robot,task)
        plan = self.cycle_plan
        if task.get('cycle_move') and plan and plan['moving']==robot:
            plan['moves'].pop(0)
            if 'envelopes' in plan:
                plan['envelopes'].pop(0)
            plan['moving'] = None
            if not plan['moves']:
                self.publish('traffic_deadlock_resolved', cycle=list(plan['robots']))
                self.deadlock_reports.pop(plan['robots'],None)
                self.cycle_plan = None

    def resume_after_localization_loss(self, robot, task):
        if time.monotonic() >= task['localization_retry_until']:
            self.failed[robot] = self.active.pop(robot)
            self.publish('failed', robot=robot, route=task['nodes'], reason='localization recovery timed out')
            return
        if (not self.refresh_pose(robot) or not self.stopped(robot)
                or not self.action_clients[robot].server_is_ready()):
            return
        try:
            _, suffix = remaining_route(self.graph, task['nodes'], self.poses[robot], points=task['points'])
        except ValueError:
            return
        if not occupied_cells(suffix) <= task['cells']:
            return
        task.pop('localization_retry_until')
        self.publish('localization_resumed', robot=robot, station=task['segment_goal'])
        self.start_action(robot, suffix)

    def start_action(self,robot,points):
        action_goal=FollowPath.Goal();action_goal.path=self.make_path(points)
        action_goal.controller_id='FollowPath';action_goal.goal_checker_id='general_goal_checker';action_goal.progress_checker_id='progress_checker'
        future=self.action_clients[robot].send_goal_async(action_goal)
        future.add_done_callback(lambda finished,robot=robot:self.goal_response(robot,finished))

    def goal_response(self, robot, future):
        try:
            handle = future.result()
            if handle is None or not handle.accepted:
                old=self.active.pop(robot, None)
                if old:self.failed[robot]=old
                self.publish('failed', robot=robot, reason='Nav2 rejected FollowPath')
                return
            self.active[robot]['handle'] = handle
            if self.active[robot].get('cancel_requested') or self.active[robot].get('pause_requested'):
                handle.cancel_goal_async()
            result_future = handle.get_result_async()
            result_future.add_done_callback(lambda finished, robot=robot: self.result(robot, finished))
        except Exception as error:
            task = self.active.pop(robot, None)
            if task:
                self.failed[robot] = task
            self.publish('failed', robot=robot, reason=str(error))

    def result(self, robot, future):
        task = self.active.pop(robot, None)
        if task is None:
            return
        try:
            response = future.result()
            if task.get('pause_requested') and not task.get('cancel_requested') and response.status in (GoalStatus.STATUS_CANCELED,GoalStatus.STATUS_SUCCEEDED):
                task['paused']=True;task.pop('handle',None)
                self.active[robot]=task
                self.publish('paused',robot=robot)
                return
            if task.get('cancel_requested'):
                self.failed[robot]=task
                self.publish('cancelled',robot=robot,reason='navigation cancelled; stopped occupancy retained',route=task['nodes'])
                return
            if ('segment_goal' in task and not task.get('localization_retried') and not task.get('pause_requested')
                    and response.status == GoalStatus.STATUS_ABORTED
                    and response.result.error_code == FollowPath.Result.TF_ERROR):
                task.pop('handle',None)
                task.update(localization_retried=True, localization_retry_until=time.monotonic()+8)
                self.active[robot] = task
                self.publish('localization_wait', robot=robot, station=task['segment_goal'])
                return
            at_goal = self.navigation_target_confirmed(robot, task)
            if response.status == GoalStatus.STATUS_SUCCEEDED and response.result.error_code == 0 and not at_goal and getattr(self, 'pose_tracker', None) and 'arrival_deadline' not in task:
                task['arrival_deadline'] = time.monotonic()+2.0
                task['arrival_response'] = response
                self.active[robot] = task
                self.publish('arrival_check_wait', robot=robot, reason='waiting for trusted arrival and stop evidence')
                return
            if response.status == GoalStatus.STATUS_SUCCEEDED and response.result.error_code == 0 and at_goal:
                if task.get('cancel_requested'):
                    self.positions[robot] = task['goal']
                    self.publish('cancelled', robot=robot, station=task['goal'])
                else:
                    self.finish_navigation(robot, task)
            else:
                # Keep its swept area reserved: a failed robot can be between stations.
                self.failed[robot] = task
                self.positions[robot] = None
                self.publish('failed', robot=robot, reason=response.result.error_msg or ('arrival or stop evidence unavailable' if response.status==GoalStatus.STATUS_SUCCEEDED and not at_goal else 'FollowPath terminated'),route=task['nodes'],
                             error_code=response.result.error_code,
                             note='Check the robot pose before assigning a new task')
        except Exception as error:
            self.failed[robot] = task
            self.positions[robot] = None
            self.publish('failed', robot=robot, reason=str(error))

    def stop(self):
        for task in self.active.values():
            if task.get('handle'):
                task['handle'].cancel_goal_async()
        deadline = time.monotonic() + 1.0
        while rclpy.ok() and time.monotonic() < deadline:
            for publisher in self.stop_publishers.values():
                publisher.publish(Twist())
            rclpy.spin_once(self, timeout_sec=0.05)


def main():
    rclpy.init(signal_handler_options=SignalHandlerOptions.NO)
    node = RouteDispatcher()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        node.stop()
    finally:
        if node.store:node.store.close()
        if node.owner:node.owner.close()
        node.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()


if __name__ == '__main__':
    main()
