"""Business tasks -> existing SMAP FollowPath executor. Simulation only."""
import json
import uuid
import math
import time
from pathlib import Path

import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from std_msgs.msg import String
from sensor_msgs.msg import BatteryState, LaserScan
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseWithCovarianceStamped
from ament_index_python.packages import get_package_share_directory
from warehouse_sim.pose_tracker import PoseTracker
from warehouse_sim.route_graph import RouteGraph, occupied_cells
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch, DurabilityError
from warehouse_sim.domain_owner import DomainOwner
from warehouse_sim.layout import parking_homes


class FleetScheduler(Node):
    def __init__(self):
        super().__init__('fleet_scheduler')
        self.declare_parameter('robots', 2)
        self.declare_parameter('smap_path', str(Path(get_package_share_directory('warehouse_sim'))/'maps/warehouse.smap'))
        self.declare_parameter('evidence_dir', 'dispatch_runs')
        self.declare_parameter('demo_controls', False)
        self.declare_parameter('auto_return', False)
        self.declare_parameter('durable_db', '')
        self.declare_parameter('feedback_handling', False)
        names = [f'agv{i:02d}' for i in range(1, int(self.get_parameter('robots').value)+1)]
        if not 1 <= len(names) <= 10:
            raise ValueError('robots must be 1..10')
        self.pose_tracker = PoseTracker(self, names)
        self.graph = RouteGraph(self.get_parameter('smap_path').value)
        self.fleet = Fleet(self.graph, names,feedback_handling=self.get_parameter('feedback_handling').value)
        database = self.get_parameter('durable_db').value
        self.owner=DomainOwner('scheduler') if database else None
        if database and self.get_parameter('demo_controls').value and not self.fleet.feedback_handling:
            raise ValueError('persistent simulation controls require explicit feedback_handling=true')
        self.durable = DurableDispatch(self.fleet, database, 'warehouse',simulation_controls=self.get_parameter('demo_controls').value) if database else None
        self.telemetry = {n: {} for n in names}
        self.sent_at = {}
        self.active_since = {}
        self.return_counter = 0
        self.returned_jobs = set()
        self.traffic = {}
        self.adapter_states={}
        self.last_sync=-1e30
        self.adapters_ready=False
        root = Path(self.get_parameter('evidence_dir').value)
        root.mkdir(parents=True, exist_ok=True)
        self.run = root / (time.strftime('%Y%m%dT%H%M%S')+'_'+uuid.uuid4().hex[:8])
        self.run.mkdir(exist_ok=False)
        self.log = (self.run/'events.jsonl').open('a', encoding='utf8')
        self.out = self.create_publisher(String, '/warehouse/task', 10)
        self.action_out=self.create_publisher(String,'/warehouse/actions',10)
        self.events = self.create_publisher(String, '/dispatch/events', 10)
        qos = QoSProfile(depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL,
                         reliability=ReliabilityPolicy.RELIABLE)
        self.state = self.create_publisher(String, '/dispatch/state', qos)
        self.subs = [self.create_subscription(String, '/dispatch/tasks', self.request, 10),
                     self.create_subscription(String, '/warehouse/status', self.route_event, 10),
                     self.create_subscription(String, '/warehouse/traffic', self.traffic_event, qos)]
        self.subs += [self.create_subscription(String,topic,lambda m,key=key:self.adapter_state(key,m),qos)
                      for key,topic in [('route','/warehouse/executor_state'),('actions','/warehouse/actions_state')]]
        for n in names:
            self.subs += [
                self.create_subscription(PoseWithCovarianceStamped, f'/{n}/amcl_pose',
                                         lambda m, n=n: self.pose(n, m), qos),
                self.create_subscription(BatteryState, f'/{n}/battery_state',
                                         lambda m, n=n: self.battery(n, m), 10),
                self.create_subscription(Odometry, f'/{n}/odom',
                                         lambda m, n=n: self.odom(n, m), 10),
                self.create_subscription(LaserScan, f'/{n}/scan_mapping',
                                         lambda m, n=n: self.scan(n, m),
                                         rclpy.qos.qos_profile_sensor_data)]
        self.create_timer(.2, self.tick)
        self.get_logger().info(f'Business scheduler; evidence: {self.run}')

    def pose(self, name, msg):
        if msg.header.frame_id != 'map':
            return
        p = msg.pose.pose.position
        if math.isfinite(p.x) and math.isfinite(p.y):
            q = msg.pose.pose.orientation
            yaw = math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))
            self.telemetry[name]['pose'] = (p.x, p.y, yaw)

    def battery(self, name, msg):
        if math.isfinite(msg.percentage) and 0 <= msg.percentage <= 1:
            self.telemetry[name].update(soc=msg.percentage, battery_at=time.monotonic())

    def odom(self, name, msg):
        t=self.telemetry[name];now=time.monotonic();v=msg.twist.twist
        if now-t.get('odom_at',-1e30)>.5:
            t.pop('stopped_since',None)
        t['odom_at']=now
        if math.hypot(v.linear.x,v.linear.y)<.04 and abs(v.angular.z)<.08:
            t.setdefault('stopped_since',now)
        else:t.pop('stopped_since',None)

    def recovery_preflight(self, job_id):
        if not self.durable or not self.adapters_ready:raise ValueError('fresh durable adapters required')
        j=self.fleet.jobs[job_id];n=j.robot;now=time.monotonic();t=self.telemetry.get(n,{})
        if not self.pose_tracker.read(n) or now-t.get('odom_at',-1e30)>1 or now-t.get('stopped_since',now)<2:
            raise ValueError('fresh pose and at least two seconds stopped required')
        adapters={k:v for k,(at,v) in self.adapter_states.items() if now-at<1}
        if len(adapters)!=2:raise ValueError('fresh execution and handling query required')
        actions=adapters['actions'];loaded=actions.get('loads',{}).get(n)
        if loaded!=(j.id if j.loaded else None):raise ValueError('cargo ownership is uncertain')
        if abs(actions.get('joints',{}).get(n,99)-(.22 if j.loaded else 0))>.03:raise ValueError('fork height not confirmed')
        if any(r['body'].get('robot')==n and r['state'] in ('ACTIVE','INTERRUPTED') for r in actions['records']):raise ValueError('handling execution is uncertain')
        record=next((r for r in adapters['route']['records'] if r['body'].get('task_id')==j.execution_id and not any(r['body'].get(k) for k in ('cancel','pause','resume'))),None)
        if not record or record['state'] not in ('FAILED','CANCELLED','INTERRUPTED'):raise ValueError('previous navigation is not terminal')

    def scan(self, name, msg):
        self.telemetry[name]['scan_msg_at']=time.monotonic()
        if any(math.isfinite(x) and msg.range_min <= x <= msg.range_max for x in msg.ranges):
            self.telemetry[name]['scan_at'] = time.monotonic()

    def send(self, cmd):
        if cmd:
            if self.durable and (self.durable.failed or 'command_id' not in cmd):
                raise DurabilityError('refusing an uncommitted command')
            if cmd.get('action') and not self.durable:
                cmd.setdefault('command_id',uuid.uuid4().hex)
                cmd.setdefault('map_name','warehouse')
            (self.action_out if cmd.get('action') else self.out).publish(String(data=json.dumps(cmd)))
            if self.durable:
                self.durable.published(cmd)
            if not cmd.get('cancel'):
                self.sent_at[cmd['task_id']] = time.monotonic()

    def request(self, msg):
        try:
            req = json.loads(msg.data)
            if not isinstance(req, dict):
                raise ValueError('request must be an object')
            if req.get('operation')=='recover_execution':
                self.recovery_preflight(req['id'])
                _,commands=self.durable.recover_execution(req['id'])
                for command in commands:self.send(command)
            elif self.durable:
                _, commands = self.durable.request(req, time.monotonic())
                for command in commands:self.send(command)
            elif req.get('operation') == 'cancel':
                self.send(self.fleet.cancel(req['id'], now=time.monotonic()))
            elif 'operation' in req:
                if req['operation'] in ('fault_idle', 'clear_idle_fault') and not self.get_parameter('demo_controls').value:
                    raise ValueError('demo fault controls disabled')
                result=self.fleet.operation(req, time.monotonic())
                if isinstance(result,dict):self.send(result)
            else:
                self.fleet.submit(req, time.monotonic())
            self.fleet.emit('request_accepted',request_id=req.get('request_id'),task_id=req.get('id'),operation=req.get('operation'),durable=self.durable is not None)
        except DurabilityError as error:
            self.get_logger().fatal(str(error))
            self.fleet.emit('request_rejected',request_id=req.get('request_id') if isinstance(locals().get('req'),dict) else None,reason=str(error),storage_fault=True)
        except (ValueError, KeyError, TypeError) as error:
            self.fleet.emit('request_rejected', request_id=req.get('request_id') if isinstance(locals().get('req'),dict) else None,task_id=req.get('id') if isinstance(locals().get('req'), dict) else None, reason=str(error))

    def route_event(self, msg):
        try:
            event = json.loads(msg.data)
            if event.get('event') in ('dispatched','resumed'):
                self.active_since[event.get('task_id')] = time.monotonic()
            if self.durable:self.durable.route_event(event, time.monotonic())
            else:self.fleet.on_route(event, time.monotonic())
        except (ValueError, KeyError, TypeError, DurabilityError) as error:
            self.get_logger().error(str(error))

    def traffic_event(self, msg):
        self.traffic = json.loads(msg.data)
        if self.durable:self.durable.traffic = self.traffic
        self.fleet.reserved_cells = set()
        self.fleet.edge_wait_s={}
        self.fleet.waiting_robots=set(self.traffic.get('waiting',{}))
        for name,task in self.traffic.get('active', {}).items():
            points=task['points'];cells=occupied_cells(points)
            self.fleet.reserved_cells.update(cells)
            pose=self.telemetry.get(name,{}).get('pose')
            remaining=points
            if points and pose:
                nearest=min(range(len(points)),key=lambda i:math.hypot(points[i][0]-pose[0],points[i][1]-pose[1]))
                remaining=points[nearest:]
            length=sum(math.hypot(a[0]-b[0],a[1]-b[1]) for a,b in zip(remaining,remaining[1:]))
            # This is a bounded estimate, never an authorization to enter a lock.
            wait=300. if task.get('failed') else min(300.,max(2.,length/self.fleet.policy['loaded_speed_mps']))
            for edge,edge_cells in self.graph.edge_cells.items():
                if not edge_cells.isdisjoint(cells):
                    self.fleet.edge_wait_s[edge]=max(wait,self.fleet.edge_wait_s.get(edge,0.))

    def adapter_state(self,key,msg):
        self.adapter_states[key]=(time.monotonic(),json.loads(msg.data))

    def tick(self):
        now = time.monotonic()
        positions, stopped = {}, {}
        for name, t in self.telemetry.items():
            reading = self.pose_tracker.read(name)
            if reading is None:
                continue
            t['pose'], t['tf_age'] = reading
            t['pose_source'] = 'TF map-base'
            if now-t.get('odom_at',-1e30) <= .5:
                positions[name] = t['pose']
                if now-t.get('stopped_since',now) >= 2:
                    stopped[name] = t['pose']
            if ('pose' not in t or 'soc' not in t
                    or any(now-t.get(key, -math.inf) > 3 for key in ('battery_at', 'odom_at', 'scan_at'))):
                continue
            p = t['pose']
            station = min(self.graph.stations, key=lambda s: math.hypot(
                self.graph.stations[s]['pos']['x']-p[0], self.graph.stations[s]['pos']['y']-p[1]))
            distance = math.hypot(self.graph.stations[station]['pos']['x']-p[0],
                                  self.graph.stations[station]['pos']['y']-p[1])
            if distance <= .65 or self.fleet.robots[name].job or self.fleet.robots[name].blocked:
                self.fleet.update(name, station, t['soc'], now)
        if self.get_parameter('auto_return').value:
            homes=parking_homes(self.fleet.robots)
            try:
                if self.durable:self.durable.queue_returns(homes,now)
                else:self.fleet.queue_returns(self.fleet.return_plan(homes),now)
            except DurabilityError as error:self.get_logger().fatal(str(error))
        try:
            if self.durable and self.fleet.feedback_handling:
                adapters={key:value for key,(at,value) in self.adapter_states.items() if now-at<2.}
                for command in self.durable.reconcile(adapters.get('route'),adapters.get('actions'),now):self.send(command)
                valid=(len(adapters)==2 and bool(self.durable.adapter_ids) and all(not v.get('map_change_requires_restart') and v.get('map_name')==self.durable.map_name and v.get('database_id')==self.durable.adapter_ids.get(k) for k,v in adapters.items()))
                self.adapters_ready=valid
                if valid and now-self.last_sync>2:
                    self.last_sync=now
                    for command in self.durable.synchronize(adapters['route'],adapters['actions'],now):self.send(command)
                commands=(self.durable.tick(now,positions=positions,stopped=stopped,
                                            executor=adapters['route'],actions=adapters['actions']) if valid else [])
            else:commands = self.durable.tick(now) if self.durable else self.fleet.tick(now)
            for cmd in commands:self.send(cmd)
        except DurabilityError as error:
            self.get_logger().fatal(str(error))
        # Route duration is not a failure criterion. Nav2 checks actual progress
        # (25 simulation seconds without 0.5 m movement); telemetry and leases
        # independently handle loss of feedback/permission. Long valid routes
        # must not be cancelled merely because 240 wall seconds elapsed.
        for event in self.fleet.events:
            event['wall_monotonic'] = now
            line = json.dumps(event, ensure_ascii=False)
            self.log.write(line+'\n')
            self.events.publish(String(data=line))
        self.fleet.events.clear()
        if self.durable:self.durable.events_flushed()
        self.log.flush()
        snapshot = self.fleet.snapshot()
        for name, robot in self.fleet.robots.items():
            snapshot['robots'][name]['feedback_fresh'] = now-robot.seen <= self.fleet.freshness
        snapshot['charging_policy'] = dict(low_soc=self.fleet.low_soc, release_soc=self.fleet.release_soc)
        snapshot['telemetry'] = {n: dict(pose=t.get('pose'), source=t.get('pose_source','AMCL'), tf_age=t.get('tf_age'), battery_age=now-t['battery_at'] if 'battery_at' in t else None, odom_age=now-t['odom_at'] if 'odom_at' in t else None, scan_age=now-t['scan_at'] if 'scan_at' in t else None,scan_message_age=now-t['scan_msg_at'] if 'scan_msg_at' in t else None) for n,t in self.telemetry.items()}
        snapshot['traffic'] = self.traffic
        for n in self.telemetry:snapshot['telemetry'][n]['localization']=self.pose_tracker.quality[n]
        snapshot['handling'] = self.adapter_states.get('actions',(None,{}))[1]
        snapshot['execution_adapter'] = self.adapter_states.get('route',(None,{}))[1]
        snapshot['durability'] = dict(enabled=self.durable is not None, fenced=self.durable.fenced if self.durable else False, storage_fault=self.durable.failed if self.durable else False, revision=self.durable.revision if self.durable else None)
        snapshot['durability']['adapters_ready']=self.adapters_ready
        self.state.publish(String(data=json.dumps(snapshot, ensure_ascii=False)))


def main():
    rclpy.init()
    node = FleetScheduler()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        (node.run/'final_state.json').write_text(json.dumps(node.fleet.snapshot(), indent=2), encoding='utf8')
        node.log.close()
        if node.durable:node.durable.close()
        if node.owner:node.owner.close()
        node.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()
