"""ROS-independent business scheduling. No motion or battery state is fabricated here."""
from dataclasses import dataclass, field, asdict
import math
import json
import time
from datetime import datetime, timezone
from warehouse_sim.assignment import match_jobs, SOLVER
from warehouse_sim.scheduling_policy import DEFAULT_POLICY, validate_policy, priority, update_weights, components
from warehouse_sim.layout import exclusive_destination
from warehouse_sim.traffic_policy import STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE

def utc_now():
    return datetime.now(timezone.utc).isoformat(timespec="milliseconds")


@dataclass
class Robot:
    station: str = None
    soc: float = None
    seen: float = -1e30
    job: str = None
    blocked: bool = False
    dispatch_state: str = 'enabled'


@dataclass
class Job:
    id: str
    kind: str
    goals: list
    priority: int
    created: float
    requested_robot: str = None
    state: str = 'QUEUED'
    robot: str = None
    index: int = 0
    execution_id: str = None
    loaded: bool = False
    ready_at: float = 0.
    reason: str = ''
    bids: list = field(default_factory=list)
    retries: int = 0
    allow_transfer: bool = False
    request_fingerprint: str = ''
    action_sent: bool = False
    reconcile_state: str = ''
    control_seq: int = 0
    created_at: str = ''
    assigned_at: str = ''
    started_at: str = ''
    finished_at: str = ''
    origin_station: str = None
    exclusions: dict = field(default_factory=dict)
    cancel_reason: str = ''
    charge_trigger: str | None = None
    charge_mode: str | None = None
    allocation: dict = field(default_factory=dict)
    transfer_from: str | None = None


class Fleet:
    """Priority queue + centralized bids + exclusive charger bookings.

    Execution is serialized per robot. Urgent jobs do not preempt active motion.
    Failed/cancelled execution blocks the robot; its route reservation remains
    owned by RouteDispatcher until explicitly recovered by an operator.
    """
    def __init__(self, graph, robots, *, low_soc=.20, release_soc=.80,
                 freshness=4., handling_seconds=2., feedback_handling=False):
        self.graph = graph
        self.robots = {name: Robot() for name in robots}
        self.jobs, self.chargers, self.events = {}, {}, []
        self.destinations={}
        self.charger_occupancy = {}
        self.workstations = {}
        self.low_soc, self.release_soc = low_soc, release_soc
        self.freshness, self.handling_seconds = freshness, handling_seconds
        self.serial = 0
        self.feedback_handling = feedback_handling
        self.dispatch_paused = False
        self.finished_at = {}
        self.unavailable = set()
        self.weights = dict(distance=1., battery=20., congestion=8.)
        self.congestion = {}
        self.reserved_cells = set()
        self.charge_waiting = {}
        self.policy = validate_policy(DEFAULT_POLICY)
        self.policy_revision = 1
        self.policy_state = dict(weights=dict(self.policy['weights']), reasons=[], observations={})
        self.policy_updated_at = -1e30
        self.edge_wait_s = {}
        self.waiting_robots = set()

    def scheduling_priority(self, job, now):
        robot = self.robots.get(job.requested_robot)
        return priority(job, now, self.policy, robot.soc if robot else None)

    def refresh_policy(self, now):
        if now-self.policy_updated_at < 5:
            return
        available = [r for r in self.robots.values() if r.dispatch_state=='enabled'
                     and not r.blocked and now-r.seen<=self.freshness and r.soc is not None]
        count = max(1,len(available))
        low = sum(r.soc<self.policy['target_soc'] for r in available)/count
        wait = min(1.,len(self.waiting_robots)/count)
        weights,reasons = update_weights(self.policy,self.policy_state.get('weights'),low,wait)
        self.policy_state = dict(weights=weights,reasons=reasons,
                                 observations=dict(low_soc_ratio=low,waiting_ratio=wait))
        self.policy_updated_at = now

    def charger_distance(self, station):
        distances=[]
        for cp in self.graph.stations:
            if cp.startswith('CP_'):
                try:distances.append(self.distance(station,cp))
                except ValueError:pass
        return min(distances) if distances else math.inf

    def emit(self, event, **fields):
        self.events.append(dict(event=event, **fields))

    def update(self, name, station, soc, now):
        if name not in self.robots or station not in self.graph.stations:
            raise ValueError('unknown robot/station')
        if isinstance(soc, bool) or not isinstance(soc, (int, float)) or not math.isfinite(soc) or not 0 <= soc <= 1:
            raise ValueError('invalid SOC')
        r = self.robots[name]
        r.station, r.soc, r.seen = station, soc, now

    def validate_submission(self, request):
        if not isinstance(request, dict):
            raise ValueError('request must be an object')
        job_id = request.get('id')
        if not isinstance(job_id, str) or not job_id or len(job_id) > 120:
            raise ValueError('id must be a nonempty string (max 120)')
        kind = request.get('type', 'transport')
        if kind == 'transport':
            goals = [request['pickup'], request['dropoff']]
        elif kind == 'charge':
            goals = [] if request.get('goal') is None else [request['goal']]
        elif kind in ('move', 'return', 'standby'):
            goals = [request['goal']]
        else:
            raise ValueError('unsupported task type')
        priority = request.get('priority', 0)
        if priority not in (0, 100) or isinstance(priority, bool):
            raise ValueError('priority must be 0 (normal) or 100 (urgent)')
        robot = request.get('robot')
        if robot is not None and robot not in self.robots:
            raise ValueError('unknown robot')
        if any(not isinstance(g, str) or g not in self.graph.stations for g in goals):
            raise ValueError('unknown station')
        if kind == 'charge' and (robot is None or (goals and not goals[0].startswith('CP_'))):
            raise ValueError('charge requires robot and CP station')
        if kind == 'transport':
            if goals[0] == goals[1]:
                raise ValueError('pickup and dropoff must differ')
            if any(g.startswith('CP_') for g in goals):
                raise ValueError('charging bays cannot be pickup/dropoff stations; use move/standby/charge')
            if any(g.startswith('PP_') for g in goals):
                raise ValueError('parking bays cannot be pickup/dropoff stations; use move/standby')
            self.graph.route(*goals)
        allow_transfer = request.get('allow_transfer', False)
        if not isinstance(allow_transfer, bool):
            raise ValueError('allow_transfer must be boolean')
        fingerprint = json.dumps([kind, goals, priority, robot, allow_transfer])
        return job_id, kind, goals, priority, robot, allow_transfer, fingerprint

    def submit(self, request, now, *, manual_charge=False):
        job_id, kind, goals, priority, robot, allow_transfer, fingerprint = self.validate_submission(request)
        if kind == 'charge' and not goals and not manual_charge:
            raise ValueError('use request_charge to choose a charger automatically')
        if job_id in self.jobs:
            old = self.jobs[job_id]
            if old.request_fingerprint != fingerprint:
                raise ValueError('id reused with different task')
            self.emit('duplicate', task_id=job_id, state=old.state)
            return old
        if kind == 'charge' and any(job.kind == 'charge' and job.requested_robot == robot and
                                   job.state not in ('DONE', 'FAILED', 'CANCELLED') for job in self.jobs.values()):
            raise ValueError('该车辆已有未结束的充电任务')
        j = Job(job_id, kind, goals, priority, now, robot)
        j.created_at = utc_now()
        j.allow_transfer = allow_transfer
        j.request_fingerprint = fingerprint
        self.jobs[job_id] = j
        self.emit('created', task_id=j.id, type=kind, goals=goals, priority=priority)
        return j

    def distance(self, start, goal):
        nodes = self.graph.route(start, goal)
        return sum(self.graph.edges[a, b][1] for a, b in zip(nodes, nodes[1:]))

    def can_book_workstations(self, job, name):
        if job.kind != 'transport' or not self.feedback_handling:
            return True
        for station in job.goals[job.index:]:
            booking = self.workstations.get(station)
            if booking and (booking['robot'] != name or
                            (booking['job'] != job.id and booking['phase'] != 'departing')):
                return False
        return True

    def book_workstations(self, job):
        if job.kind == 'transport' and self.feedback_handling:
            for station in job.goals[job.index:]:
                if self.workstations.get(station,{}).get('job') != job.id:
                    self.workstations[station] = dict(job=job.id, robot=job.robot, phase='reserved')

    def clear_departed_workstations(self, positions):
        for station, booking in list(self.workstations.items()):
            pose = positions.get(booking['robot'])
            if booking['phase'] != 'departing' or pose is None:
                continue
            target = self.graph.stations[station]['pos']
            if math.hypot(pose[0]-target['x'], pose[1]-target['y']) > STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE:
                self.workstations.pop(station)
                self.emit('workstation_released', task_id=booking['job'], robot=booking['robot'], station=station)

    def bids(self, job, now):
        self.refresh_policy(now)
        result = []
        job.exclusions={}
        charging, charge_reservations = set(), {}
        for queued in self.jobs.values():
            if queued.kind == 'charge' and queued.state in ('QUEUED', 'PAUSED'):
                charging.add(queued.requested_robot)
                if queued.goals:
                    charge_reservations.setdefault(queued.goals[0], queued.id)
        for name, r in self.robots.items():
            reasons=[]
            if r.dispatch_state != 'enabled':reasons.append('车辆未参与调度')
            if job.kind != 'charge' and name in charging:reasons.append('已有充电任务')
            if r.blocked or name in self.unavailable:reasons.append('车辆隔离')
            if r.job:reasons.append('正在执行其他任务')
            if now-r.seen>self.freshness:reasons.append('有效遥测或定位过期')
            if r.soc is None:reasons.append('缺少电量')
            if r.station is None:reasons.append('未确认站点')
            if job.requested_robot not in (None,name):reasons.append('不符合指定车辆')
            if job.transfer_from == name:reasons.append('故障转单需选择另一台车')
            if not self.can_book_workstations(job,name):reasons.append('装卸工位已预约或尚未清空')
            if reasons:
                job.exclusions[name]='；'.join(reasons)
                continue
            goal = job.goals[0] if job.goals else self.available_charger(name)
            if goal is None:
                job.exclusions[name] = '暂无空闲且可达的充电位，等待释放'
                continue
            try:
                empty_distance = self.distance(r.station, goal)
                loaded_distance = 0.
                if job.kind == 'transport':
                    loaded_distance = self.distance(*job.goals)
                distance = empty_distance+loaded_distance
                # Conservative configurable-model assumption, not measured energy.
                escape_distance = self.charger_distance(job.goals[-1]) if job.kind!='charge' else 0.
                reserve = self.policy['reserve_soc'] + self.policy['energy_per_m']*(distance+escape_distance)
                if job.kind != 'charge' and r.soc < max(self.low_soc, reserve):
                    job.exclusions[name]='电量不足以完成任务并保留到充电点的余量'
                    continue
                endpoint=job.goals[-1] if job.goals else goal
                if exclusive_destination(endpoint):
                    if charge_reservations.get(endpoint, job.id) != job.id:
                        job.exclusions[name]='目标充电位已有排队充电任务'
                        continue
                    owner = self.destinations.get(endpoint) or self.chargers.get(endpoint)
                    if owner is not None and owner != name:
                        job.exclusions[name]='目标充电/停靠位已有预约'
                        continue
                    if self.other_vehicle_at(endpoint, name):
                        job.exclusions[name]='目标充电/停靠位仍被其他车辆占用'
                        continue
                route = self.graph.route(r.station, goal)
                if job.kind == 'transport':
                    route += self.graph.route(*job.goals)[1:]
                congestion = sum(not self.graph.edge_cells[a,b].isdisjoint(self.reserved_cells) for a,b in zip(route,route[1:]))
                # Multiple edges may be held by the same route. Use the largest
                # hold estimate, not a sum that counts one holder repeatedly.
                wait = max((self.edge_wait_s.get((a,b),self.policy['occupied_wait_s']
                            if not self.graph.edge_cells[a,b].isdisjoint(self.reserved_cells) else 0.)
                            for a,b in zip(route,route[1:])),default=0.)
                predicted_soc = r.soc-self.policy['energy_per_m']*(distance+escape_distance)
                parts = components(self.policy,empty_distance,loaded_distance,wait,predicted_soc,job.kind=='transport')
                if self.policy['mode']=='distance':parts['travel']=distance/self.policy['empty_speed_mps']
                weights=self.policy_state['weights']
                score=sum(weights[k]*v for k,v in parts.items())
                result.append(dict(robot=name,goal=goal,distance_m=distance,soc=r.soc,congestion=congestion,cost=score,
                                   components_s=parts,weights=dict(weights),expected_wait_s=wait,
                                   charger_escape_m=escape_distance,predicted_soc_at_charger=predicted_soc))
            except ValueError as error:
                job.exclusions[name]='无有效路线：'+str(error)
                continue
        return sorted(result, key=lambda b: (b['cost'], b['robot']))

    def command(self, j):
        self.serial += 1
        j.execution_id = f'{j.id}:{self.serial}'
        j.state = 'EXECUTING'
        j.started_at = j.started_at or utc_now()
        self.emit('leg_sent', task_id=j.id, robot=j.robot,
                  execution_id=j.execution_id, goal=j.goals[j.index])
        return dict(robot=j.robot, goal=j.goals[j.index], task_id=j.execution_id, priority=j.priority)

    def tick(self, now, *, supplied=None):
        self.refresh_policy(now)
        commands = []
        self.charge_waiting = {}
        for name, r in self.robots.items():
            if r.job:
                j = self.jobs[r.job]
                # Validate health BEFORE producing the next motion/action.
                # Paused and transition states still own physical resources.
                if j.state in ('NEXT_LEG','EXECUTING','CHARGING','HANDLING','PAUSING','PAUSED_ACTIVE','RESUMING') and now-r.seen>self.freshness:
                    if j.state in ('EXECUTING','PAUSING','PAUSED_ACTIVE','RESUMING') or (j.state=='HANDLING' and self.feedback_handling):
                        commands.append(self.cancel(j.id,reason='telemetry or localization expired'))
                    else:self.fail(j,'telemetry or localization expired')
                    continue
                if j.state == 'NEXT_LEG':
                    commands.append(self.command(j))
                if j.state == 'CHARGING' and r.soc >= self.release_soc and now-r.seen <= self.freshness:
                    self.finish(j)
                if j.state == 'HANDLING' and self.feedback_handling and not j.action_sent:
                    j.action_sent = True
                    commands.append(dict(robot=name, action='pickup' if j.index == 0 else 'dropoff',
                                         goal=j.goals[j.index], cargo_id=j.id, task_id=j.execution_id))
                if j.state == 'HANDLING' and not self.feedback_handling and now >= j.ready_at:
                    if j.index == 0:
                        j.loaded = True
                        j.index = 1
                        self.emit('simulated_pickup', task_id=j.id, robot=name)
                        commands.append(self.command(j))
                    else:
                        j.loaded = False
                        self.emit('simulated_dropoff', task_id=j.id, robot=name)
                        self.finish(j)
            # Bookings describe mission ownership; physically parked cars are
            # separately checked even after charge completion releases booking.
            if (r.dispatch_state == 'enabled' and not r.job and not r.blocked and name not in self.unavailable
                    and r.soc is not None and r.soc < self.low_soc
                    and now-r.seen <= self.freshness):
                if not any(j.kind == 'charge' and j.requested_robot == name
                           and j.state in ('QUEUED', 'PAUSED') for j in self.jobs.values()):
                    station = self.available_charger(name)
                    if station:
                        self.serial += 1
                        job = self.submit(dict(id=f'autocharge-{name}-{self.serial}', type='charge',
                                               robot=name, goal=station, priority=100), now)
                        job.charge_trigger = 'automatic'
                    else:
                        self.charge_waiting[name] = '低电等待：暂无空闲且可达的充电位；需先释放桩位'
        if self.dispatch_paused:
            return commands
        queue = sorted((j for j in self.jobs.values() if j.state == 'QUEUED' and
                        (supplied is None or j.kind != 'transport' or j.id in supplied)),
                       key=lambda j: (self.scheduling_priority(j,now)[0], j.created, j.id))
        cursor=0
        while cursor<len(queue):
            decision_started=time.perf_counter()
            group=[];tier=self.scheduling_priority(queue[cursor],now)[0]
            while cursor<len(queue) and self.scheduling_priority(queue[cursor],now)[0]==tier and len(group)<32:
                j=queue[cursor];cursor+=1;j.bids=self.bids(j,now);group.append(j)
            candidates = []
            for j in group:
                if not j.bids:
                    continue
                goal = j.goals[-1] if j.goals else j.bids[0]['goal']
                resource = goal if exclusive_destination(goal) else None
                if j.kind == 'transport' and self.feedback_handling:
                    resource = j.goals[0]
                candidates.append(dict(id=j.id, bids=j.bids, resource=resource))
            selected=match_jobs(candidates)
            compute_ms=(time.perf_counter()-decision_started)*1000
            if selected:self.emit('assignment_planned',allocation=selected,total_cost=sum(next(b['cost'] for b in j.bids if b['robot']==selected[j.id]) for j in group if j.id in selected),window=len(group),rule='maximize_count_then_FIFO_then_cost',decision_compute_ms=compute_ms)
            for j in group:
                if j.id not in selected:
                    continue
                if not self.can_book_workstations(j,selected[j.id]):
                    j.reason = '装卸工位已有本轮预约，等待释放'
                    continue
                j.reason=''
                j.robot = selected[j.id]
                chosen=next(b for b in j.bids if b['robot']==j.robot)
                if not j.goals:
                    j.goals = [chosen['goal']]
                j.allocation=dict(solver=SOLVER,status='OPTIMAL_WINDOW',window_size=len(group),
                                  policy_revision=self.policy_revision,mode=self.policy['mode'],
                                  priority_reason=self.scheduling_priority(j,now)[1],
                                  policy_reasons=list(self.policy_state['reasons']),chosen=dict(chosen),
                                  decision_compute_ms=compute_ms,
                                  scope='当前优先级窗口，先最大化分配数量，再按排队顺序选择任务，最后最小化总预测代价')
                j.assigned_at = utc_now()
                j.origin_station = self.robots[j.robot].station
                self.robots[j.robot].job = j.id
                self.book_workstations(j)
                if exclusive_destination(j.goals[-1]):self.destinations[j.goals[-1]]=j.robot
                if j.kind == 'charge':
                    self.chargers[j.goals[0]] = j.robot
                self.emit('assigned', task_id=j.id, robot=j.robot, bids=j.bids,
                          assignment_latency_s=now-j.created,queue_wait_s=now-j.created,decision_compute_ms=compute_ms,assignment_mode='same_priority_batch',chosen_cost=next(b['cost'] for b in j.bids if b['robot']==j.robot))
                commands.append(self.command(j))
            for j in group:
                if j.id not in selected:
                    j.bids=self.bids(j,now)
                    if j.bids:
                        j.reason = '本轮可用车辆或目标资源已分配，等待下一轮'
                    elif j.kind == 'charge':
                        j.reason = j.exclusions.get(j.requested_robot, '等待车辆和桩位就绪')
                        self.charge_waiting[j.requested_robot] = j.reason
                    else:
                        j.reason = '暂无符合条件的车辆；查看各车未参与原因'
        return commands

    def on_route(self, event, now):
        name = event.get('robot')
        if name not in self.robots or not self.robots[name].job:
            return
        j = self.jobs[self.robots[name].job]
        if event.get('task_id') != j.execution_id or j.state not in ('EXECUTING', 'CANCELING', 'HANDLING','PAUSING','PAUSED_ACTIVE','RESUMING'):
            return
        kind = event.get('event')
        if kind=='paused' and j.state=='PAUSING':
            j.state='PAUSED_ACTIVE';self.emit('paused_active',task_id=j.id,robot=name);return
        if kind in ('resumed','dispatched') and j.state=='RESUMING':
            j.state='EXECUTING';self.emit('resumed_active',task_id=j.id,robot=name);return
        if kind in ('failed', 'rejected', 'cancelled', 'handling_failed'):
            if event.get('loaded') is True:j.loaded=True
            self.fail(j, (j.cancel_reason or event.get('reason',kind)) if j.state=='CANCELING' else event.get('reason',kind), cancelled=j.state == 'CANCELING')
        elif kind == 'handling_done' and j.state == 'HANDLING' and self.feedback_handling:
            expected = j.index == 0
            if event.get('loaded') is not expected or event.get('station') != j.goals[j.index] or event.get('cargo_id') != j.id:
                self.fail(j, 'handling feedback mismatch'); return
            j.loaded = expected
            booking = self.workstations.get(j.goals[j.index])
            if booking and booking['job'] == j.id:
                booking['phase'] = 'departing'
            self.emit('pickup_confirmed' if expected else 'dropoff_confirmed', task_id=j.id, robot=name, cargo_id=j.id)
            if expected:
                j.index = 1
                j.state = 'NEXT_LEG'
            else:
                self.finish(j)
        elif kind == 'arrived':
            if j.state == 'CANCELING':
                self.fail(j, 'cancel raced with arrival', cancelled=True)
                return
            if event.get('station') != j.goals[j.index]:
                self.fail(j, 'arrival station mismatch')
                return
            self.robots[name].station = event['station']
            if j.kind == 'charge':
                j.state = 'CHARGING'
                self.emit('charging_wait', task_id=j.id, robot=name)
            elif j.kind == 'transport':
                if not self.can_book_workstations(j,name):
                    self.fail(j,'arrival workstation ownership mismatch')
                    return
                self.book_workstations(j)
                if self.feedback_handling:
                    self.workstations[event['station']]['phase'] = 'handling'
                j.state, j.ready_at = 'HANDLING', now+self.handling_seconds
                if self.feedback_handling:
                    j.execution_id += ':pickup' if j.index == 0 else ':dropoff'
                    j.action_sent = False
                self.emit('handling_requested' if self.feedback_handling else 'handling_simulation', task_id=j.id, robot=name,
                          stage='pickup' if j.index == 0 else 'dropoff')
            else:
                self.finish(j)

    def finish(self, j):
        j.state = 'DONE'
        j.finished_at = utc_now()
        self.release_job(j)
        self.finished_at[j.robot] = j.id
        self.emit('completed', task_id=j.id, robot=j.robot)

    def release_job(self, j):
        self.robots[j.robot].job = None
        if j.kind == 'charge' and self.chargers.get(j.goals[0]) == j.robot:
            self.chargers.pop(j.goals[0], None)
        if self.destinations.get(j.goals[-1])==j.robot:self.destinations.pop(j.goals[-1])

    def fail(self, j, reason, cancelled=False):
        j.state = 'CANCELLED' if cancelled else 'FAILED'
        j.finished_at = utc_now()
        j.reason = reason
        r = self.robots[j.robot]
        r.blocked, r.job = True, None
        for booking in self.workstations.values():
            if booking['job'] == j.id and booking['phase'] == 'handling':
                booking['phase'] = 'uncertain'
        # Charger ownership is retained on uncertainty. No automatic transfer
        # of a possibly loaded job or release of an occupied resource.
        self.emit(j.state.lower(), task_id=j.id, robot=j.robot,
                  reason=reason, loaded=j.loaded, requires_operator=True)

    def cancel(self, job_id, reason='operator requested cancellation', now=None):
        j = self.jobs[job_id]
        j.cancel_reason=reason
        if j.state in ('QUEUED', 'PAUSED'):
            j.state = 'CANCELLED'
            j.finished_at = utc_now()
            j.reason=reason
            self.emit('cancelled', task_id=j.id)
            return None
        if j.state in ('EXECUTING','PAUSING','PAUSED_ACTIVE','RESUMING'):
            j.state = 'CANCELING'
            return dict(robot=j.robot, cancel=True, task_id=j.execution_id)
        if j.state == 'HANDLING' and self.feedback_handling:
            j.state='CANCELING'
            return dict(robot=j.robot,cancel=True,action='cancel',task_id=j.execution_id,goal=j.goals[j.index],cargo_id=j.id)
        if j.state == 'CHARGING' and now is not None:
            robot = self.robots[j.robot]
            if (robot.blocked or robot.job != j.id or now-robot.seen > self.freshness
                    or robot.station != j.goals[0] or self.chargers.get(j.goals[0]) != j.robot):
                raise ValueError('充电位或车况尚未确认，暂不能停止充电')
            if robot.dispatch_state == 'enabled' and robot.soc < self.low_soc:
                raise ValueError('车辆电量低，停止充电前请先停用调度')
            j.state, j.reason, j.finished_at = 'CANCELLED', reason, utc_now()
            self.release_job(j)
            self.emit('cancelled', task_id=j.id, robot=j.robot, reason=reason)
            return None
        if j.state in ('HANDLING', 'CHARGING'):
            self.fail(j, 'cancelled while stationary', cancelled=True)
        return None

    def update_charger_occupancy(self, positions):
        chargers = {name: point['pos'] for name, point in self.graph.stations.items() if name.startswith('CP_')}
        for robot, pose in positions.items():
            self.charger_occupancy[robot] = [
                name for name, point in chargers.items()
                if math.hypot(pose[0]-point['x'], pose[1]-point['y']) <= STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE
            ]

    def other_vehicle_at(self, station, name):
        return any(other != name and (robot.station == station or
                   station in self.charger_occupancy.get(other, ())) for other, robot in self.robots.items())

    def available_charger(self, name):
        robot = self.robots[name]
        reserved = set(self.chargers) | set(self.destinations)
        reserved.update(j.goals[0] for j in self.jobs.values()
                        if j.kind == 'charge' and j.goals and j.state in ('QUEUED', 'PAUSED'))
        candidates = []
        for station in self.graph.stations:
            if station.startswith('CP_') and station not in reserved and not self.other_vehicle_at(station, name):
                try:
                    candidates.append((self.distance(robot.station, station), station))
                except ValueError:
                    continue
        return min(candidates)[1] if candidates else None

    def request_charge(self, request, now):
        name, identity, goal = request['robot'], request['id'], request.get('goal')
        task = dict(id=identity, type='charge', robot=name, goal=goal, priority=100)
        self.validate_submission(task)
        previous = self.jobs.get(identity)
        if previous:
            if (previous.charge_trigger == 'manual' and previous.charge_mode is None
                    and previous.requested_robot == name and goal is None):
                return
            if previous.charge_trigger != 'manual':
                raise ValueError('任务编号已使用')
            self.submit(task, now, manual_charge=True)
            return
        robot = self.robots[name]
        if (robot.dispatch_state != 'enabled' or robot.blocked or name in self.unavailable
                or robot.station is None or robot.soc is None or now-robot.seen > self.freshness):
            raise ValueError('去充电需要已纳入调度且定位、电量有效的车辆')
        if robot.soc >= self.release_soc:
            raise ValueError('电量已达到当前充电完成阈值')
        job = self.submit(task, now, manual_charge=True)
        job.charge_trigger = 'manual'
        job.charge_mode = 'nearest' if goal is None else 'fixed'
        job.reason = '等待当前任务完成' if robot.job else '等待分配充电位'

    def change_vehicle_state(self, request):
        name = request['robot']
        robot = self.robots[name]
        target = {'enable_vehicle': 'enabled', 'disable_vehicle': 'disabled', 'remove_vehicle': 'removed'}[request['operation']]
        if target == robot.dispatch_state:
            return
        if target == 'disabled' and robot.dispatch_state == 'removed':
            raise ValueError('请先将车辆重新纳入调度')
        if target == 'removed':
            if robot.dispatch_state != 'disabled':
                raise ValueError('请先停用车辆，再移出调度')
            if (robot.job or robot.blocked or name in self.chargers.values()
                    or name in self.destinations.values()
                    or any(job.requested_robot == name and job.state in ('QUEUED', 'PAUSED') for job in self.jobs.values())):
                raise ValueError('请先处理车辆的任务、隔离状态和资源预约')
        robot.dispatch_state = target
        self.emit('vehicle_dispatch_state', robot=name, state=target)

    def operation(self, request, now):
        op = request['operation']
        if op == 'request_charge':
            self.request_charge(request, now)
        elif op == 'set_policy':
            desired=validate_policy(request.get('policy'))
            if desired==self.policy:return
            if type(request.get('expected_revision')) is not int or request['expected_revision']!=self.policy_revision:
                raise ValueError('调度策略已变化，请刷新后再修改')
            self.policy=desired;self.policy_revision+=1;self.policy_updated_at=-1e30
            self.policy_state=dict(weights=dict(desired['weights']),reasons=[],observations={})
            self.refresh_policy(now)
            self.emit('policy_updated',revision=self.policy_revision,policy=self.policy)
        elif op in ('enable_vehicle', 'disable_vehicle', 'remove_vehicle'):
            self.change_vehicle_state(request)
        elif op == 'update':
            j = self.jobs[request['id']]
            if j.state not in ('QUEUED', 'PAUSED') or j.robot or j.execution_id or j.loaded:
                raise ValueError('只允许编辑尚未分配车辆的排队或暂停任务')
            if j.kind not in ('transport', 'move', 'standby'):
                raise ValueError('自动充电和返程任务不支持编辑')
            values = request.get('task')
            if not isinstance(values, dict) or values.get('id') != j.id or values.get('type') not in ('transport', 'move', 'standby'):
                raise ValueError('编辑参数须保留任务编号，并使用搬运、移动或待命类型')
            _, kind, goals, priority, robot, transfer, fingerprint = self.validate_submission(values)
            current = [j.kind, j.goals, j.priority]
            desired = [kind, goals, priority]
            if request.get('expected') != current and desired != current:
                raise ValueError('任务已被修改，请刷新后重新编辑')
            j.kind, j.goals, j.priority = kind, goals, priority
            j.requested_robot, j.allow_transfer, j.request_fingerprint = robot, transfer, fingerprint
            j.bids, j.exclusions = [], {}
            self.emit('updated', task_id=j.id, type=kind, goals=goals, priority=priority)
        elif op == 'hold_dispatch':
            if not isinstance(request.get('enabled',True),bool):raise ValueError('enabled must be boolean')
            self.dispatch_paused = bool(request.get('enabled', True))
            self.emit('dispatch_hold', enabled=self.dispatch_paused)
        elif op=='set_weights':
            values=request['weights']
            if not isinstance(values,dict) or set(values)!=set(self.weights) or any(isinstance(v,bool) or not isinstance(v,(int,float)) or not math.isfinite(v) or not 0<=v<=1000 for v in values.values()) or sum(values.values())==0:
                raise ValueError('weights require finite nonnegative distance/battery/congestion values, not all zero')
            self.weights=dict(values)
            converted=dict(travel=values['distance'],energy=values['battery']/20,congestion=values['congestion']/8)
            scale=max(1.,max(converted.values())/10)
            self.policy={**self.policy,'mode':'balanced','weights':{k:v/scale for k,v in converted.items()}}
            self.policy_revision+=1;self.policy_updated_at=-1e30;self.refresh_policy(now)
            self.emit('weights_updated',weights=self.weights,policy_revision=self.policy_revision)
        elif op in ('priority', 'pause', 'resume'):
            j = self.jobs[request['id']]
            if op == 'priority':
                if j.state not in ('QUEUED', 'PAUSED') or request.get('priority') not in (0, 100):
                    raise ValueError('priority update requires queued/paused job and 0/100')
                j.priority = request['priority']
            elif op == 'pause':
                if j.state=='EXECUTING':
                    j.state='PAUSING'
                    j.control_seq+=1
                    return dict(robot=j.robot,pause=True,task_id=j.execution_id,control_seq=j.control_seq)
                if j.state != 'QUEUED':
                    raise ValueError('pause is supported at the queued boundary only')
                j.state = 'PAUSED'
            else:
                if j.state=='PAUSED_ACTIVE':
                    j.state='RESUMING'
                    j.control_seq+=1
                    return dict(robot=j.robot,resume=True,task_id=j.execution_id,control_seq=j.control_seq)
                if j.state != 'PAUSED':
                    raise ValueError('resume requires paused job')
                j.state = 'QUEUED'
            self.emit(op, task_id=j.id, state=j.state, priority=j.priority)
        elif op == 'fault_idle':
            name = request['robot']
            r = self.robots[name]
            if r.job:
                raise ValueError('idle fault injection refuses a moving/assigned robot')
            r.blocked = True
            self.unavailable.add(name)
            self.emit('robot_fault', robot=name, injected=True, reason='demonstration idle fault')
            for j in self.jobs.values():
                if j.state == 'QUEUED' and j.requested_robot == name and j.allow_transfer:
                    j.requested_robot = None
                    self.emit('task_transferred', task_id=j.id, previous_robot=name, reason='fault before execution')
        elif op == 'clear_idle_fault':
            name = request['robot']
            r = self.robots[name]
            if name not in self.unavailable or r.job or now-r.seen > self.freshness:
                raise ValueError('only injected idle fault with fresh telemetry can be cleared')
            r.blocked = False
            self.unavailable.remove(name)
            self.emit('robot_fault_cleared', robot=name)
        elif op == 'requeue_unloaded':
            j = self.jobs[request['id']]
            if j.state not in ('FAILED','CANCELLED') or j.loaded or j.retries >= 2 or j.kind == 'charge':
                raise ValueError('only failed unloaded noncharging task, at most two retries')
            previous = j.robot
            j.state, j.index, j.robot, j.execution_id = 'QUEUED', 0, None, None
            j.requested_robot = None
            j.retries += 1
            self.emit('requeued', task_id=j.id, previous_robot=previous, retries=j.retries)
        else:
            raise ValueError('unknown operation')

    def recover_execution(self,job_id):
        j=self.jobs[job_id]
        if j.state not in ('FAILED','CANCELLED') or not j.robot or not self.robots[j.robot].blocked or ':pickup' in (j.execution_id or '') or ':dropoff' in (j.execution_id or ''):
            raise ValueError('only isolated navigation execution can be recovered')
        previous=j.execution_id
        r=self.robots[j.robot]
        if r.job:raise ValueError('robot already assigned')
        if not self.can_book_workstations(j,j.robot):
            raise ValueError('workstation is occupied by another task')
        self.book_workstations(j)
        cmd=self.command(j)
        cmd.update(recovery_from=previous,cargo_id=j.id if j.loaded else None)
        r.blocked=False;r.job=j.id;j.reason='';j.cancel_reason='';j.finished_at=''
        self.emit('recovery_requested',task_id=j.id,robot=j.robot,previous_execution_id=previous,loaded=j.loaded)
        return cmd

    def release_unused_workstations(self, job):
        for station, booking in list(self.workstations.items()):
            if booking['job'] == job.id and booking['phase'] == 'reserved':
                self.workstations.pop(station)
                self.emit('workstation_released', task_id=job.id, robot=job.robot, station=station,
                          reason='已确认车辆未作业且停在工位外')

    def transfer_pre_pickup(self, job):
        previous_robot, previous_execution = job.robot, job.execution_id
        self.release_unused_workstations(job)
        job.state, job.robot, job.execution_id = 'QUEUED', None, None
        job.requested_robot = None
        job.transfer_from = previous_robot
        job.reason, job.cancel_reason, job.finished_at = '已确认货物在原取货点，等待改派','', ''
        job.assigned_at = ''
        self.emit('task_transferred', task_id=job.id, previous_robot=previous_robot,
                  previous_execution_id=previous_execution, station=job.goals[0])

    def return_plan(self,homes):
        plans=[]
        for name,completed in self.finished_at.items():
            r=self.robots[name];old=self.jobs[completed];home=homes[name]
            identity=f'park-{name}-{completed}'
            if r.dispatch_state != 'enabled' or r.job or r.blocked or old.kind in ('return','standby') or r.station==home or identity in self.jobs:continue
            # A robot with a separate parking bay must vacate shared chargers.
            # Preserve the existing four-car charge-in-home behaviour.
            if old.kind=='charge' and not home.startswith('PP_'):continue
            plans.append(dict(id=identity,type='return',robot=name,goal=home))
        return plans

    def queue_returns(self,plans,now):
        for req in plans:
            for old in list(self.jobs.values()):
                if old.kind=='return' and old.id.startswith('park-') and old.requested_robot==req['robot'] and old.id!=req['id'] and old.state=='QUEUED':
                    self.cancel(old.id,reason='superseded by newer parking intent')
            self.submit(req,now).priority=-20

    def snapshot(self):
        return dict(jobs={k: asdict(v) for k, v in self.jobs.items()},
                    robots={k: asdict(v) for k, v in self.robots.items()}, chargers=self.chargers.copy(), destinations=self.destinations.copy(), charge_waiting=self.charge_waiting.copy(), dispatch_paused=self.dispatch_paused, weights=self.weights.copy(),
                    workstations={name:booking.copy() for name,booking in self.workstations.items()},
                    charger_occupancy={name:bays.copy() for name,bays in self.charger_occupancy.items()},
                    scheduling=dict(config=self.policy,revision=self.policy_revision,**self.policy_state,solver=SOLVER))
