"""ROS-independent business scheduling. No motion or battery state is fabricated here."""
from dataclasses import dataclass, field, asdict
from collections import Counter
import math
import json
import time
from datetime import datetime, timezone
from warehouse_sim.assignment import match_job_resources, match_jobs, SOLVER
from warehouse_sim.charging_policy import (
    ChargerObservation, ChargerProfile, UNMONITORED_CHARGER, WorkloadChargingPolicy,
    plan_charge_queue, plan_fleet_charge_queue,
)
from warehouse_sim.scheduling_policy import (
    DEFAULT_POLICY, validate_policy, priority, update_weights, valid_business_priority, components,
    validate_vehicle_performance,
)
from warehouse_sim.layout import exclusive_destination
from warehouse_sim.route_graph import forklift_footprint
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
    model: str | None = None
    payload_kg: float | None = None
    performance: dict = field(default_factory=dict)


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
    charge_target_signalled: bool = False
    allocation: dict = field(default_factory=dict)
    transfer_from: str | None = None
    next_robot: str | None = None
    next_assigned_at: str = ''
    first_allocation_at: str = ''
    handoff: dict = field(default_factory=dict)
    requirements: dict = field(default_factory=dict)
    via_index: int = 0
    admission: dict = field(default_factory=dict)


class Fleet:
    """Priority queue + centralized bids + exclusive charger bookings.

    Execution is serialized per robot. Urgent jobs do not preempt active motion.
    Failed/cancelled execution blocks the robot; its route reservation remains
    owned by RouteDispatcher until explicitly recovered by an operator.
    """
    def __init__(self, graph, robots, *, low_soc=.20, release_soc=.80,
                 freshness=4., handling_seconds=2., feedback_handling=False, diagnostic_bids=None):
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
        self.diagnostic_bids = diagnostic_bids
        self.dispatch_paused = False
        self.finished_at = {}
        self.unavailable = set()
        self.weights = dict(distance=1., battery=20., congestion=8.)
        self.congestion = {}
        self.reserved_cells = frozenset()
        self.dispatch_closed_edges = frozenset()
        self.route_headings = {}
        self.route_no_stop_stations = frozenset()
        self.charge_waiting = {}
        self.charge_wait_started = {}
        self.charge_forecasts = {}
        self.charge_homes = {}
        self.charge_closed_edges = frozenset()
        self.last_idle_topup = None
        self.charger_rates = {}
        self.charger_profiles = {}
        self.charger_observations = {}
        self.predictive_charging = True
        self.workload_charging = None
        self.policy = validate_policy(DEFAULT_POLICY)
        self.policy_revision = 1
        self.policy_state = dict(weights=dict(self.policy['weights']), reasons=[], observations={})
        self.policy_updated_at = -1e30
        self.edge_wait_s = {}
        self.waiting_robots = set()

    def scheduling_priority(self, job, now):
        robot = self.robots.get(job.requested_robot)
        tier, reason = priority(job, now, self.policy, robot.soc if robot else None)
        deadline = job.requirements.get('deadline_s')
        if tier > 2 and deadline is not None and deadline - (now - job.created) <= self.policy['normal_wait_s']:
            return 2, '任务接近业务时限'
        return tier, reason

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

    def charger_distance(self, station, *, robot=None, now=None):
        return self.charger_escape(station, robot=robot, now=now)[0]

    def charger_escape(self, station, *, robot=None, now=None):
        candidates = []
        reserve = self.policy['reserve_soc']
        energy = self.vehicle_costs(robot)[2] if robot is not None else self.policy['energy_per_m']
        for cp in self.graph.stations:
            if not cp.startswith('CP_') or robot is not None and not self.charger_compatible(cp, robot):
                continue
            profile = self.charger_profile(cp)
            if robot is not None and profile.feedback_required:
                report = self.charger_observation(cp, now)
                if report is None or report.state == 'unavailable':
                    continue
            try:
                shape = forklift_footprint(robot.model) if robot is not None else None
                if shape:
                    _, distance = self.graph.vehicle_bid_route(
                        station, cp, shape, self.dispatch_closed_edges, no_stop_stations=self.route_no_stop_stations)
                else:
                    distance = self.dispatch_distance(station, cp)
            except ValueError:
                continue
            floor = max(reserve, profile.min_arrival_soc) if robot is not None else reserve
            candidates.append((floor + energy * distance, distance, floor))
        if not candidates:
            return math.inf, reserve
        _, distance, floor = min(candidates)
        return distance, floor

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
        if not valid_business_priority(priority):
            raise ValueError('priority must be -100 (low), 0 (normal), or 100 (high)')
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
        requirements = self.validate_requirements(request.get('requirements', {}), kind, goals)
        fields = [kind, goals, priority, robot, allow_transfer]
        if requirements:
            fields.append(requirements)
        fingerprint = json.dumps(fields, sort_keys=True)
        return job_id, kind, goals, priority, robot, allow_transfer, fingerprint, requirements

    def validate_requirements(self, value, kind, goals):
        if not isinstance(value, dict) or set(value) - {'models', 'payload_kg', 'via', 'deadline_s', 'pallet'}:
            raise ValueError('任务约束须包含支持的车型、载荷、必经点或业务时限')
        if value and kind not in ('transport', 'move', 'standby'):
            raise ValueError('该任务类型不支持业务约束')
        result = {}
        models = value.get('models', [])
        if not isinstance(models, list) or len(models) > 16 or any(
                not isinstance(model, str) or not model.strip() or len(model) > 64 for model in models):
            raise ValueError('车型须为最多 16 项有效名称')
        if models:
            result['models'] = sorted(set(models))
        for key, limit in (('payload_kg', 1000000), ('deadline_s', 86400)):
            if key in value:
                number = value[key]
                if type(number) not in (int, float) or not 0 < number <= limit:
                    raise ValueError(f'{key} 须为大于 0 且不超过 {limit} 的数值')
                result[key] = number
        if 'payload_kg' in result and kind != 'transport':
            raise ValueError('载荷约束用于搬运任务')
        if 'pallet' in value:
            if kind != 'transport' or value['pallet'] not in ('1000x1200', '800x1200', '1000x1000'):
                raise ValueError('请选择搬运任务支持的托盘规格')
            result['pallet'] = value['pallet']
        via = value.get('via', [])
        if not isinstance(via, list) or len(via) > 16 or any(
                not isinstance(station, str) or station not in self.graph.stations
                or station.startswith(('CP_', 'PP_', 'HP_')) for station in via):
            raise ValueError('必经点须为当前地图的普通可停站点，最多 16 项')
        if via:
            if len(set(via)) != len(via) or set(via).intersection(goals):
                raise ValueError('必经点不可重复或与起终点相同')
            sequence = [*goals[:1], *via, goals[-1]] if kind == 'transport' else [*via, goals[-1]]
            for start, end in zip(sequence, sequence[1:]):
                self.distance(start, end)
            result['via'] = list(via)
        return result

    @staticmethod
    def vehicle_fits(job, robot):
        models = job.requirements.get('models')
        payload = job.requirements.get('payload_kg')
        return ((not models or robot.model in models)
                and (payload is None or (robot.payload_kg is not None and robot.payload_kg >= payload)))

    @staticmethod
    def remaining_stops(job):
        via = job.requirements.get('via', ())[job.via_index:]
        pickup = job.goals[:1] if job.kind == 'transport' and job.index == 0 else ()
        return (*pickup, *via, job.goals[-1])

    def submit(self, request, now, *, manual_charge=False):
        job_id, kind, goals, priority, robot, allow_transfer, fingerprint, requirements = self.validate_submission(request)
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
        j.requirements = requirements
        self.jobs[job_id] = j
        self.emit('created', task_id=j.id, type=kind, goals=goals, priority=priority)
        return j

    def distance(self, start, goal):
        return self.graph.distance(start, goal)

    def dispatch_distance(self, start, goal):
        return self.graph.bid_distance(start, goal, self.dispatch_closed_edges)

    def set_dispatch_closures(self, edges):
        closed = frozenset(tuple(edge) for edge in edges)
        if closed - self.graph.edges.keys():
            raise ValueError('关闭的路段不属于当前地图')
        self.dispatch_closed_edges = closed

    def vehicle_costs(self, robot):
        profile = robot.performance
        return (profile.get('empty_speed_mps', self.policy['empty_speed_mps']),
                profile.get('loaded_speed_mps', self.policy['loaded_speed_mps']),
                profile.get('empty_soc_per_m', self.policy['energy_per_m']),
                profile.get('loaded_soc_per_m', self.policy['energy_per_m']),
                profile.get('handling_s', self.policy['handling_s']))

    def dispatch_trip(self, start, stops, *, transport, loaded=False, robot=None, pallet=None, yaw=None):
        if robot is not None and forklift_footprint(robot.model):
            empty, carrying, _ = self.forklift_trip(start, stops, robot, pallet, yaw,
                                                    transport=transport, loaded=loaded)
            return empty, carrying
        approach = self.dispatch_distance(start, stops[0])
        onward = sum(self.dispatch_distance(a, b) for a, b in zip(stops, stops[1:]))
        if loaded:
            return 0., approach + onward
        return (approach, onward) if transport else (approach + onward, 0.)

    def forklift_trip(self, start, stops, robot, pallet, yaw, *, transport, loaded=False):
        empty, carrying, route = 0., 0., [start]
        blocked_chargers = {bay for bay, name in self.chargers.items() if (
            (charge := self.jobs.get(self.robots[name].job)) and charge.state == 'CHARGING')}
        # A charging berth may be an escape destination, but should not be
        # counted as a currently usable through-route for another assignment.
        closed = self.dispatch_closed_edges | {
            (before, bay) for bay in blocked_chargers for before, _ in self.graph.incoming(bay)
        }
        for index, destination in enumerate(stops):
            has_load = loaded or (transport and index > 0)
            shape = forklift_footprint(robot.model, loaded=has_load, pallet=pallet)
            leg, distance = self.graph.vehicle_bid_route(
                route[-1], destination, shape, closed, start_yaw=yaw,
                no_stop_stations=self.route_no_stop_stations)
            if len(leg) > 1:
                yaw = self.graph.stations[destination].get('dir', self.graph.vehicle_edge_points(tuple(leg[-2:]))[-1][2])
            route.extend(leg[1:])
            if has_load:
                carrying += distance
            else:
                empty += distance
        return empty, carrying, route

    def can_book_workstations(self, job, name):
        if job.kind != 'transport' or not self.feedback_handling:
            return True
        for station in job.goals[job.index:]:
            if self.destinations.get(station) not in (None, name):
                return False
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

    @staticmethod
    def reserve_destination(job, endpoint):
        return exclusive_destination(endpoint) or job.kind == 'return' or (
            job.kind in ('move', 'standby') and job.requested_robot is None)

    def reserve_next(self, job, now, feedback_unavailable):
        """Choose a concrete next vehicle without granting motion or station rights."""
        if job.state != 'QUEUED' or job.next_robot or job.kind == 'charge':
            return
        if self.dispatch_paused:
            job.admission = {'state': 'waiting', 'reasons': {'dispatch_paused': 1}}
            return
        owners, charging = self.reservation_vehicle_sets()
        candidates, rejected = self.reservation_offers(job, now, feedback_unavailable, owners, charging, {}, {})
        job.admission = {'state': 'reserved' if candidates else 'waiting', 'reasons': dict(rejected)}
        if candidates:
            self.book_next_vehicle(job, candidates[0]['robot'])

    def reserve_batch_next(self, jobs, now, feedback_unavailable, *, budget_s=.45):
        """Commit independent next-job slots in bounded priority windows."""
        jobs = [job for job in jobs if job.state == 'QUEUED' and not job.next_robot
                and job.kind in ('transport', 'move', 'standby')]
        if self.dispatch_paused:
            for job in jobs:
                job.admission = {'state': 'waiting', 'reasons': {'dispatch_paused': 1}}
            return
        deadline = time.perf_counter() + budget_s
        owners, charging = self.reservation_vehicle_sets()
        forecasts, escapes = {}, {}
        ordered = sorted(jobs, key=lambda job: (self.scheduling_priority(job, now)[0], job.created, job.id))
        cursor = 0
        while cursor < len(ordered) and time.perf_counter() < deadline:
            tier, _ = self.scheduling_priority(ordered[cursor], now)
            window = []
            while cursor < len(ordered) and len(window) < 24 and time.perf_counter() < deadline:
                job = ordered[cursor]
                if self.scheduling_priority(job, now)[0] != tier:
                    break
                bids, reasons = self.reservation_offers(job, now, feedback_unavailable, owners, charging,
                                                        forecasts, escapes)
                window.append((job, bids, reasons))
                cursor += 1
            chosen = match_jobs([{'id': job.id, 'bids': bids} for job, bids, _ in window if bids])
            for job, bids, rejected in window:
                vehicle = chosen.get(job.id)
                if vehicle:
                    self.book_next_vehicle(job, vehicle)
                    owners.add(vehicle)
                elif bids:
                    rejected['slot_full'] += len(bids)
                job.admission = {'state': 'reserved' if vehicle else 'waiting', 'mode': 'batch',
                                 'reasons': dict(rejected)}
        for job in ordered[cursor:]:
            job.admission = {'state': 'waiting', 'mode': 'batch', 'reason': '已接单，等待常规分配窗口',
                             'reasons': {'admission_budget': 1}}

    def reservation_vehicle_sets(self):
        return ({job.next_robot for job in self.jobs.values() if job.state == 'QUEUED' and job.next_robot},
                {job.requested_robot for job in self.jobs.values()
                 if job.kind == 'charge' and job.state in ('QUEUED', 'PAUSED')})

    def book_next_vehicle(self, job, vehicle):
        job.next_robot = vehicle
        job.next_assigned_at = utc_now()
        job.first_allocation_at = job.first_allocation_at or job.next_assigned_at
        self.emit('next_vehicle_reserved', task_id=job.id, robot=vehicle)

    def reservation_pose(self, name, robot):
        current = self.jobs.get(robot.job)
        if current and (current.kind == 'charge' or current.state not in ('EXECUTING', 'HANDLING', 'NEXT_LEG')
                        or current.handoff.get('phase') in ('to_bay', 'clearing')):
            return None
        station = robot.station
        heading = self.route_headings.get(name, self.graph.stations[station].get('dir'))
        remaining_time, used_soc = 0., 0.
        if current:
            empty_speed, loaded_speed, empty_energy, loaded_energy, handling = self.vehicle_costs(robot)
            empty, carrying = self.dispatch_trip(
                station, self.remaining_stops(current), transport=current.kind == 'transport',
                loaded=current.loaded, robot=robot, pallet=current.requirements.get('pallet'), yaw=heading)
            remaining_time = empty / empty_speed + carrying / loaded_speed
            used_soc = empty * empty_energy + carrying * loaded_energy
            station = current.goals[-1]
            heading = self.graph.stations[station].get('dir')
            if current.kind == 'transport':
                remaining_time += handling
        return station, heading, remaining_time, used_soc

    def reservation_offers(self, job, now, feedback_unavailable, owners, charging, forecasts, escapes):
        stops = self.remaining_stops(job)
        try:
            onward = sum(self.dispatch_distance(a, b) for a, b in zip(stops, stops[1:]))
        except ValueError:
            return [], Counter(unreachable=len(self.robots))
        candidates = []
        rejected = Counter()
        for name, robot in self.robots.items():
            if (job.requested_robot not in (None, name) or job.transfer_from == name
                    or not self.vehicle_fits(job, robot)):
                rejected['incompatible'] += 1
                continue
            if (name in feedback_unavailable or name in self.unavailable
                    or robot.dispatch_state != 'enabled' or robot.blocked or robot.soc is None
                    or robot.station is None or now - robot.seen > self.freshness):
                rejected['unavailable'] += 1
                continue
            if name in charging:
                rejected['charging'] += 1
                continue
            if not robot.job and not self.charger_movement_ready(name, now):
                rejected['charger_release'] += 1
                continue
            empty_speed, loaded_speed, empty_energy, loaded_energy, handling = self.vehicle_costs(robot)
            modeled = forklift_footprint(robot.model)
            task_onward = onward
            try:
                if name not in forecasts:
                    try:
                        forecasts[name] = self.reservation_pose(name, robot)
                    except ValueError:
                        forecasts[name] = False
                pose = forecasts[name]
                if pose is None or pose is False:
                    rejected['busy_transition' if pose is None else 'unreachable'] += 1
                    continue
                station, heading, remaining_time, used_soc = pose
                if modeled:
                    empty, carrying = self.dispatch_trip(
                        station, stops, transport=job.kind == 'transport', robot=robot,
                        pallet=job.requirements.get('pallet'), yaw=heading)
                    approach, task_onward = empty, carrying
                else:
                    approach = self.dispatch_distance(station, stops[0])
            except ValueError:
                rejected['unreachable'] += 1
                continue
            escape_robot = robot if self.charger_profiles or modeled else None
            escape_key = (job.goals[-1], robot.model, empty_energy) if escape_robot else (job.goals[-1],)
            if escape_key not in escapes:
                escapes[escape_key] = self.charger_escape(job.goals[-1], robot=escape_robot, now=now)
            escape_distance, reserve_floor = escapes[escape_key]
            if not math.isfinite(escape_distance):
                rejected['unreachable'] += 1
                continue
            projected_soc = robot.soc - used_soc
            onward_energy = loaded_energy if job.kind == 'transport' else empty_energy
            required_soc = reserve_floor + empty_energy * (approach + escape_distance) + onward_energy * task_onward
            if projected_soc < max(self.low_soc, required_soc):
                rejected['energy'] += 1
                continue
            if name in owners:
                rejected['slot_full'] += 1
                continue
            duration = task_onward / loaded_speed + handling if job.kind == 'transport' else task_onward / empty_speed
            estimate = remaining_time + approach / empty_speed + duration
            candidates.append({'cost': min(estimate, 1e9), 'robot': name})
        return sorted(candidates, key=lambda bid: (bid['cost'], bid['robot'])), rejected

    def release_next(self, job, reason):
        if job.next_robot:
            self.emit('next_vehicle_released', task_id=job.id, robot=job.next_robot, reason=reason)
            job.next_robot, job.next_assigned_at = None, ''
            job.admission = {'state': 'waiting', 'reason': reason}

    def occupied_edges(self):
        if not self.reserved_cells:
            return set()
        return {edge for edge, cells in self.graph.edge_cells.items()
                if not cells.isdisjoint(self.reserved_cells)}

    def bids(self, job, now, *, occupied_edges=None, feedback_unavailable=(), charging_candidates=None,
             unbound=False):
        self.refresh_policy(now)
        result = []
        job.exclusions={}
        if occupied_edges is None:
            occupied_edges = self.occupied_edges()
        shared_escape = (0., self.policy['reserve_soc']) if job.kind == 'charge' else (
            None if self.charger_profiles else (self.charger_distance(job.goals[-1]), self.policy['reserve_soc']))
        charging, charge_reservations = set(), {}
        model_escape = {}
        for queued in self.jobs.values():
            if queued.kind == 'charge' and queued.state in ('QUEUED', 'PAUSED'):
                charging.add(queued.requested_robot)
                if queued.goals:
                    charge_reservations.setdefault(queued.goals[0], queued.id)
        bound = job.next_robot and job.admission.get('mode') != 'batch' and not unbound
        candidates = [(job.next_robot, self.robots[job.next_robot])] if bound else self.robots.items()
        for name, r in candidates:
            reasons=[]
            if r.dispatch_state != 'enabled':reasons.append('车辆未参与调度')
            if job.kind != 'charge' and name in charging:reasons.append('已有充电任务')
            if r.blocked or name in self.unavailable:reasons.append('车辆隔离')
            if name in feedback_unavailable:reasons.append('车辆反馈不可用，保留占用')
            if not self.charger_movement_ready(name, now):reasons.append('充电位尚未提供有效驶离反馈')
            if r.job:reasons.append('正在执行其他任务')
            if now-r.seen>self.freshness:reasons.append('有效遥测或定位过期')
            if r.soc is None:reasons.append('缺少电量')
            if r.station is None:reasons.append('未确认站点')
            if job.requested_robot not in (None,name):reasons.append('不符合指定车辆')
            if not self.vehicle_fits(job, r):reasons.append('车辆型号或额定载荷不满足任务约束')
            if job.transfer_from == name:reasons.append('故障转单需选择另一台车')
            if not self.can_book_workstations(job,name):reasons.append('装卸工位已预约或尚未清空')
            if reasons:
                job.exclusions[name]='；'.join(reasons)
                continue
            stops = self.remaining_stops(job) if job.goals else ()
            goal = stops[0] if stops else self.available_charger(name, nearest_only=job.charge_mode == 'nearest', now=now)
            if goal is None:
                job.exclusions[name] = '暂无空闲且可达的充电位，等待释放'
                continue
            try:
                modeled = forklift_footprint(r.model)
                heading = self.route_headings.get(name, self.graph.stations.get(r.station, {}).get('dir'))
                vehicle_route = None
                if job.kind == 'charge':
                    if not self.charger_compatible(goal, r) or not self.charger_ready(goal, now):
                        job.exclusions[name] = '充电位不匹配、不可用或缺少新鲜就绪反馈'
                        continue
                    empty_distance = self.charge_path(r.station, goal, robot=r, start_yaw=heading)[0]
                    loaded_distance = 0.
                    if not self.charger_reachable(goal, r, empty_distance):
                        job.exclusions[name] = '到桩电量低于安全余量'
                        continue
                elif modeled:
                    empty_distance, loaded_distance, vehicle_route = self.forklift_trip(
                        r.station, stops, r, job.requirements.get('pallet'), heading, transport=job.kind == 'transport')
                else:
                    empty_distance, loaded_distance = self.dispatch_trip(r.station, stops,
                                                                          transport=job.kind == 'transport')
                if shared_escape is None:
                    escape_distance, reserve_floor = self.charger_escape(job.goals[-1], robot=r, now=now)
                elif modeled and job.kind != 'charge':
                    if modeled not in model_escape:
                        model_escape[modeled] = self.charger_escape(job.goals[-1], robot=r, now=now)
                    escape_distance, reserve_floor = model_escape[modeled]
                else:
                    escape_distance, reserve_floor = shared_escape
                distance = empty_distance+loaded_distance
                empty_speed, loaded_speed, empty_energy, loaded_energy, handling = self.vehicle_costs(r)
                consumption = (empty_distance + escape_distance) * empty_energy + loaded_distance * loaded_energy
                reserve = reserve_floor + consumption
                endpoint=job.goals[-1] if job.goals else goal
                if self.reserve_destination(job, endpoint):
                    booking = self.workstations.get(endpoint)
                    if booking and (booking['robot'] != name or booking['phase'] != 'departing'):
                        job.exclusions[name] = '目标站点已有装卸工位预约'
                        continue
                    if charge_reservations.get(endpoint, job.id) != job.id:
                        job.exclusions[name]='目标充电位已有排队充电任务'
                        continue
                    owner = self.destinations.get(endpoint) or self.chargers.get(endpoint)
                    if owner is not None and owner != name:
                        job.exclusions[name]='目标站点已有预约'
                        continue
                    if self.other_vehicle_at(endpoint, name):
                        job.exclusions[name]='目标站点仍被其他车辆占用'
                        continue
                if job.kind != 'charge' and r.soc < max(self.low_soc, reserve):
                    if not math.isfinite(escape_distance):
                        job.exclusions[name] = '任务结束站点到充电位无可行路线'
                        continue
                    job.exclusions[name] = '电量不足以完成任务并保留到充电点的余量'
                    if charging_candidates is not None and self.low_soc <= r.soc < reserve < self.release_soc:
                        charging_candidates.append(name)
                    continue
                congestion, wait = 0, 0.
                if occupied_edges or self.edge_wait_s:
                    if vehicle_route is not None:
                        route = vehicle_route
                    else:
                        route, _ = self.graph.bid_route(r.station, goal, self.dispatch_closed_edges)
                        for start, end in zip(stops, stops[1:]):
                            continuation, _ = self.graph.bid_route(start, end, self.dispatch_closed_edges)
                            route += continuation[1:]
                    for edge in zip(route, route[1:]):
                        occupied = edge in occupied_edges
                        congestion += occupied
                        hold = self.edge_wait_s.get(edge, self.policy['occupied_wait_s'] if occupied else 0.)
                        wait = max(wait, hold)
                predicted_soc = r.soc - consumption
                parts = components(self.policy,empty_distance,loaded_distance,wait,predicted_soc,job.kind=='transport')
                travel = empty_distance / empty_speed + loaded_distance / loaded_speed
                if job.kind == 'transport':
                    travel += handling
                parts['travel'] = travel
                if self.policy['mode']=='distance':parts['travel']=distance/self.policy['empty_speed_mps']
                weights=self.policy_state['weights']
                score=sum(weights[k]*v for k,v in parts.items())
                deadline = job.requirements.get('deadline_s')
                late = max(0., now - job.created + travel + wait - deadline) if deadline is not None else 0.
                score += late
                result.append(dict(robot=name,goal=goal,distance_m=distance,soc=r.soc,congestion=congestion,cost=score,
                                   components_s=parts,weights=dict(weights),expected_wait_s=wait,
                                   deadline_penalty_s=late,
                                   estimated_trip_s=travel + wait, charger_reserve_soc=reserve_floor,
                                   charger_escape_m=escape_distance,predicted_soc_at_charger=predicted_soc))
            except ValueError as error:
                job.exclusions[name]='无有效路线：'+str(error)
                continue
        return sorted(result, key=lambda b: (b['cost'], b['robot']))

    def record_candidates(self, job, chosen=None):
        if self.diagnostic_bids is None:
            return
        job.bids = job.bids[:self.diagnostic_bids]
        if chosen and chosen not in job.bids:
            job.bids[-1:] = [chosen]
        job.exclusions = dict(list(job.exclusions.items())[:self.diagnostic_bids])

    def downstream_critical_vehicles(self, queue, now, tier, occupied_edges, feedback_unavailable):
        critical = set()
        for job in queue:
            if self.scheduling_priority(job, now)[0] != tier:
                break
            bound = job.next_robot and job.admission.get('mode') != 'batch'
            if not (job.requested_robot or bound or job.requirements.keys() & {'models', 'payload_kg'}):
                continue
            bids = self.bids(job, now, occupied_edges=occupied_edges, feedback_unavailable=feedback_unavailable)
            if len(bids) == 1:
                critical.add(bids[0]['robot'])
        return critical

    def command(self, j):
        self.serial += 1
        j.execution_id = f'{j.id}:{self.serial}'
        j.state = 'EXECUTING'
        j.started_at = j.started_at or utc_now()
        goal = self.execution_goal(j)
        self.emit('leg_sent', task_id=j.id, robot=j.robot,
                  execution_id=j.execution_id, goal=goal)
        traffic_priority = -200 if j.kind == 'return' else j.priority
        return dict(robot=j.robot, goal=goal, task_id=j.execution_id, priority=traffic_priority)

    @staticmethod
    def execution_goal(job):
        if job.handoff.get('phase') == 'to_bay':
            return job.handoff['bay']
        if job.handoff.get('phase') == 'clearing':
            return job.handoff['clearance']
        return Fleet.remaining_stops(job)[0]

    def begin_loaded_handoff(self, job, bay, clearance):
        for queued in self.jobs.values():
            if queued.next_robot == job.robot:
                self.release_next(queued, '原车进入载货交接')
        job.handoff = dict(bay=bay, clearance=clearance, phase='to_bay',
                           original_source=job.goals[0], original_robot=job.robot)
        self.workstations[bay] = dict(job=job.id, robot=job.robot, phase='handoff')
        self.destinations[clearance] = job.robot
        self.emit('loaded_handoff_started', task_id=job.id, robot=job.robot, bay=bay, clearance=clearance)
        return self.command(job)

    def finish_handoff_clearance(self, job):
        robot, bay = job.robot, job.handoff['bay']
        self.release_job(job)
        self.robots[robot].blocked = True
        self.destinations.pop(job.handoff['clearance'], None)
        self.workstations.pop(bay)
        job.handoff['phase'] = 'cleared'
        job.goals[0], job.index = bay, 0
        self.transfer_pre_pickup(job)
        job.reason = '接驳点已卸货，原车已退出并隔离，等待另一台车取货'
        self.emit('loaded_handoff_cleared', task_id=job.id, robot=robot, bay=bay)

    def tick(self, now, *, supplied=None, eligible=None, feedback_unavailable=()):
        self.refresh_policy(now)
        commands = []
        self.charge_waiting = {}
        if self.workload_charging and self.predictive_charging and not self.dispatch_paused:
            self.reconsider_queued_charges(now, feedback_unavailable)
        if self.charge_homes and any(job.kind in ('transport', 'move', 'standby') and job.state == 'QUEUED'
                                     for job in self.jobs.values()):
            for job in self.jobs.values():
                if job.charge_trigger == 'idle_topup' and job.state == 'QUEUED':
                    self.cancel(job.id, reason='business order arrived before idle top-up started')
        for name, r in self.robots.items():
            if name in feedback_unavailable:
                continue
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
                    if not j.charge_target_signalled:
                        j.charge_target_signalled = True
                        self.emit('charge_target_reached', task_id=j.id, robot=name, station=j.goals[0],
                                  execution_id=j.execution_id)
                    if self.charging_release_confirmed(j, now):
                        self.finish(j)
                if j.state == 'HANDLING' and self.feedback_handling and not j.action_sent:
                    j.action_sent = True
                    commands.append(dict(robot=name, action='pickup' if j.index == 0 else 'dropoff',
                                         goal=self.execution_goal(j), cargo_id=j.id, task_id=j.execution_id))
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
        self.schedule_low_charge(now, feedback_unavailable)
        if self.dispatch_paused:
            return commands
        reservations = {}
        for queued in self.jobs.values():
            if queued.state != 'QUEUED' or not queued.next_robot:
                continue
            name = queued.next_robot
            robot = self.robots[name]
            if (name in feedback_unavailable or name in self.unavailable or robot.blocked
                    or robot.dispatch_state != 'enabled' or robot.soc is None
                    or not self.vehicle_fits(queued, robot)
                    or now - robot.seen > self.freshness or (not robot.job and robot.soc < self.low_soc)):
                self.release_next(queued, '车辆状态或电量发生变化')
            else:
                reservations[name] = queued
        queue = sorted((j for j in self.jobs.values() if j.state == 'QUEUED' and
                        (eligible is None or j.kind == 'charge' or j.id in eligible) and
                        (supplied is None or j.kind != 'transport' or j.id in supplied)),
                       key=lambda j: (self.scheduling_priority(j,now)[0], j.created, j.id))
        occupied_edges = self.occupied_edges()
        predictive = []
        cursor=0
        while cursor<len(queue):
            decision_started=time.perf_counter()
            group=[];tier=self.scheduling_priority(queue[cursor],now)[0]
            while cursor<len(queue) and self.scheduling_priority(queue[cursor],now)[0]==tier and len(group)<32:
                j=queue[cursor]
                cursor+=1
                j.bids=self.bids(j, now, occupied_edges=occupied_edges, feedback_unavailable=feedback_unavailable)
                overdue = j.requirements.get('deadline_s', self.policy['normal_wait_s'])
                if (j.next_robot and j.admission.get('mode') != 'batch' and not j.bids
                        and (not self.robots[j.next_robot].job or now - j.created >= overdue)):
                    alternatives = self.bids(j, now, occupied_edges=occupied_edges,
                                             feedback_unavailable=feedback_unavailable, unbound=True)
                    if alternatives:
                        reservations.pop(j.next_robot, None)
                        self.release_next(j, '预分配车辆本轮不满足约束，已有其他可用车辆')
                        j.bids = alternatives
                group.append(j)
            candidates = []
            critical = self.downstream_critical_vehicles(queue[cursor:cursor+32], now, tier,
                                                       occupied_edges, feedback_unavailable)
            for j in group:
                if not j.bids:
                    continue
                goal = j.goals[-1] if j.goals else j.bids[0]['goal']
                resources = [goal] if self.reserve_destination(j, goal) else []
                if j.kind == 'transport' and self.feedback_handling:
                    resources.extend(j.goals[j.index:])
                bids = j.bids
                if j.next_robot and j.admission.get('mode') == 'batch':
                    bids = [{**bid, 'cost': max(0., bid['cost'] - .001)}
                            if bid['robot'] == j.next_robot else bid for bid in bids]
                if critical and any(bid['robot'] not in critical for bid in bids):
                    penalty = bids[-1]['cost'] + 1.
                    bids = [{**bid, 'cost': min(1e9, bid['cost'] + penalty)}
                            if bid['robot'] in critical else bid for bid in bids]
                candidates.append(dict(id=j.id, bids=bids, resources=tuple(dict.fromkeys(resources))))
            selected, optimal = match_job_resources(candidates)
            compute_ms=(time.perf_counter()-decision_started)*1000
            if selected:self.emit('assignment_planned',allocation=selected,total_cost=sum(next(b['cost'] for b in j.bids if b['robot']==selected[j.id]) for j in group if j.id in selected),window=len(group),rule='maximize_count_then_FIFO_then_cost',decision_compute_ms=compute_ms, optimal=optimal)
            for j in group:
                if j.id not in selected:
                    continue
                if not self.can_book_workstations(j,selected[j.id]):
                    j.reason = '装卸工位已有本轮预约，等待释放'
                    continue
                j.reason=''
                j.robot = selected[j.id]
                if j.next_robot and j.robot != j.next_robot:
                    reservations.pop(j.next_robot, None)
                    self.release_next(j, '执行前按当前车况和工位复核，重新选车')
                reserved = reservations.pop(j.robot, None)
                if reserved and reserved is not j:
                    self.release_next(reserved, '车辆已分配给优先执行的任务')
                j.next_robot = None
                j.admission = {'state': 'assigned'}
                chosen=next(b for b in j.bids if b['robot']==j.robot)
                if not j.goals:
                    j.goals = [chosen['goal']]
                j.allocation=dict(solver=SOLVER,status='OPTIMAL_WINDOW' if optimal else 'FEASIBLE_WINDOW',window_size=len(group),
                                  policy_revision=self.policy_revision,mode=self.policy['mode'],
                                  priority_reason=self.scheduling_priority(j,now)[1],
                                  policy_reasons=list(self.policy_state['reasons']),chosen=dict(chosen),
                                  decision_compute_ms=compute_ms,
                                  scope='当前优先级窗口，先最大化分配数量，再按排队顺序选择任务，最后最小化总预测代价')
                self.record_candidates(j, chosen)
                j.assigned_at = utc_now()
                j.first_allocation_at = j.first_allocation_at or j.assigned_at
                j.origin_station = self.robots[j.robot].station
                self.robots[j.robot].job = j.id
                self.book_workstations(j)
                if self.reserve_destination(j, j.goals[-1]):self.destinations[j.goals[-1]]=j.robot
                if j.kind == 'charge':
                    self.chargers[j.goals[0]] = j.robot
                self.emit('assigned', task_id=j.id, robot=j.robot, bids=j.bids,
                          assignment_latency_s=now-j.created,queue_wait_s=now-j.created,decision_compute_ms=compute_ms,assignment_mode='same_priority_batch',chosen_cost=next(b['cost'] for b in j.bids if b['robot']==j.robot))
                commands.append(self.command(j))
            for j in group:
                if j.id not in selected:
                    candidates_for_charge = []
                    j.bids=self.bids(j, now, occupied_edges=occupied_edges,
                                     feedback_unavailable=feedback_unavailable,
                                     charging_candidates=candidates_for_charge)
                    if j.bids:
                        j.reason = '本轮可用车辆或目标资源已分配，等待下一轮'
                    elif j.kind == 'charge':
                        j.reason = j.exclusions.get(j.requested_robot, '等待车辆和桩位就绪')
                        self.charge_waiting[j.requested_robot] = j.reason
                    else:
                        j.reason = '暂无符合条件的车辆；查看各车未参与原因'
                        predictive.extend((j.id, name) for name in candidates_for_charge)
                    self.record_candidates(j)
        for task_id, name in predictive if self.predictive_charging else ():
            if self.robots[name].job:
                continue
            station = self.available_charger(name, now=now)
            if station:
                job = self.queue_autocharge(name, station, now)
                self.emit('predictive_charge_queued', task_id=task_id, robot=name, charge_id=job.id)
                break
        self.schedule_idle_topup(now, feedback_unavailable)
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
            goal = self.execution_goal(j)
            if event.get('loaded') is not expected or event.get('station') != goal or event.get('cargo_id') != j.id:
                self.fail(j, 'handling feedback mismatch'); return
            j.loaded = expected
            if j.handoff.get('phase') == 'to_bay':
                j.handoff['phase'] = 'clearing'
                j.state = 'NEXT_LEG'
                self.emit('loaded_handoff_unloaded', task_id=j.id, robot=name, bay=goal)
                return
            booking = self.workstations.get(goal)
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
            if event.get('station') != self.execution_goal(j):
                self.fail(j, 'arrival station mismatch')
                return
            self.robots[name].station = event['station']
            if j.handoff.get('phase') == 'clearing':
                self.finish_handoff_clearance(j)
                return
            via = j.requirements.get('via', ())
            if (j.handoff.get('phase') != 'to_bay' and j.via_index < len(via)
                    and event['station'] == via[j.via_index]):
                j.via_index += 1
                j.state = 'NEXT_LEG'
                self.emit('waypoint_reached', task_id=j.id, robot=name, station=event['station'])
                return
            if j.kind == 'charge':
                j.state = 'CHARGING'
                self.emit('charging_wait', task_id=j.id, robot=name)
            elif j.kind == 'transport':
                handoff = j.handoff.get('phase') == 'to_bay'
                if not handoff and not self.can_book_workstations(j,name):
                    self.fail(j,'arrival workstation ownership mismatch')
                    return
                if not handoff:
                    self.book_workstations(j)
                if self.feedback_handling and not handoff:
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
        if j.state == 'CHARGING' and not self.charging_release_confirmed(j, now):
            raise ValueError('充电位尚未确认本车可安全驶离，请先停止充电并核对解锁反馈')
        j.cancel_reason=reason
        if j.state in ('QUEUED', 'PAUSED'):
            self.release_next(j, '取消任务')
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
            if self.charger_profile(j.goals[0]).feedback_required:
                self.finished_at[j.robot] = j.id
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

    def charge_path(self, start, goal, *, robot=None, start_yaw=None):
        shape = forklift_footprint(robot.model) if robot is not None else None
        path, distance = self.graph.vehicle_bid_route(
            start, goal, shape, self.charge_closed_edges, start_yaw=start_yaw,
            no_stop_stations=self.route_no_stop_stations)
        edges = list(zip(path, path[1:]))
        wait = max((self.edge_wait_s.get(edge, 0.) for edge in edges), default=0.)
        return distance, wait

    def configure_charger_profiles(self, profiles):
        if not isinstance(profiles, dict):
            raise ValueError('充电桩配置必须按站点提供')
        parsed = {}
        for station, profile in profiles.items():
            if station not in self.graph.stations or not station.startswith('CP_'):
                raise ValueError(f'未知充电位 {station}')
            parsed[station] = ChargerProfile.parse(profile)
        changed = {bay for bay in self.charger_profiles.keys() | parsed.keys()
                   if self.charger_profiles.get(bay) != parsed.get(bay)}
        parked = {station for station, profile in self.charger_profiles.items() if profile.feedback_required
                  and any(robot.station == station for robot in self.robots.values())}
        if changed.intersection(self.chargers.keys() | parked):
            raise ValueError('充电桩仍有执行预约，请待车辆安全驶离后再更新配置')
        self.charger_profiles = parsed
        self.charger_observations = {bay: observation for bay, observation in self.charger_observations.items()
                                     if bay not in changed}

    def configure_workload_charging(self, configuration):
        self.workload_charging = (None if configuration is None else WorkloadChargingPolicy.parse(
            configuration, self.graph.stations, len(self.robots)))

    def observe_charger(self, station, observation):
        if not isinstance(observation, ChargerObservation) or not self.charger_profile(station).feedback_required:
            raise ValueError('该站点没有已配置的充电反馈接口')
        previous = self.charger_observations.get(station)
        if previous is not None and observation.received_at <= previous.received_at:
            return False
        if observation.robot is not None:
            robot = self.robots.get(observation.robot)
            job = self.jobs.get(robot.job) if robot else None
            reserved = (job and job.kind == 'charge' and job.goals == [station]
                        and job.execution_id == observation.execution_id
                        and self.chargers.get(station) == observation.robot
                        and (observation.state != 'released' or job.state == 'CHARGING'))
            completed = self.jobs.get(self.finished_at.get(observation.robot))
            after_charge = (observation.state == 'released' and robot and robot.station == station
                            and completed and completed.kind == 'charge' and completed.goals == [station]
                            and completed.execution_id == observation.execution_id)
            if not reserved and not after_charge:
                return False
        self.charger_observations[station] = observation
        return True

    def charger_profile(self, station):
        return self.charger_profiles.get(station, UNMONITORED_CHARGER)

    def charger_observation(self, station, now):
        report = self.charger_observations.get(station)
        if report is None or now is None or not 0. <= now - report.received_at <= self.charger_profile(station).freshness_s:
            return None
        return report

    def charger_compatible(self, station, robot):
        models = self.charger_profile(station).models
        return not models or robot.model in models

    def charger_ready(self, station, now):
        if not self.charger_profile(station).feedback_required:
            return True
        report = self.charger_observation(station, now)
        return report is not None and report.state == 'ready'

    def charger_reachable(self, station, robot, distance):
        # A vehicle already at the bay does not need traction energy to dock.
        return not distance or robot.soc - self.vehicle_costs(robot)[2] * distance >= self.charger_profile(station).min_arrival_soc

    def charging_release_confirmed(self, job, now):
        station = job.goals[0]
        if not self.charger_profile(station).feedback_required:
            return True
        report = self.charger_observation(station, now)
        return (report is not None and report.state == 'released'
                and (report.robot, report.execution_id) == (job.robot, job.execution_id))

    def charger_movement_ready(self, name, now):
        station = self.robots[name].station
        if not self.charger_profile(station).feedback_required:
            return True
        completed = self.jobs.get(self.finished_at.get(name))
        if completed and completed.kind == 'charge' and completed.goals == [station]:
            return self.charging_release_confirmed(completed, now)
        return self.charger_ready(station, now)

    def charger_rate(self, station):
        configured = self.charger_profile(station).charge_rate
        return configured if configured is not None else self.charger_rates.get(station, .005)

    def charge_options(self, name, *, nearest_only=False, forecast=None, now=None):
        robot = self.robots[name]
        if robot.soc is None or robot.station is None:
            return []
        forecast = forecast or {}
        reserved = set(self.chargers) | set(self.destinations)
        reserved.update(j.goals[0] for j in self.jobs.values()
                        if j.kind == 'charge' and j.goals and j.state in ('QUEUED', 'PAUSED'))
        candidates = []
        for station in self.graph.stations:
            release = forecast.get(station)
            if station.startswith('CP_') and self.charger_compatible(station, robot) and (release is not None
                    or (station not in reserved and self.charger_ready(station, now) and not self.other_vehicle_at(station, name))):
                try:
                    distance, wait = self.charge_path(robot.station, station, robot=robot,
                                                      start_yaw=self.route_headings.get(name))
                    arrival_soc = robot.soc - self.vehicle_costs(robot)[2] * distance
                    if not self.charger_reachable(station, robot, distance):
                        continue
                    if nearest_only or not self.predictive_charging:
                        candidates.append((distance, station))
                        continue
                    travel = distance / self.vehicle_costs(robot)[0]
                    rate = self.charger_rate(station)
                    if not math.isfinite(rate) or rate <= 0:
                        continue
                    charging = max(0., self.release_soc - arrival_soc) / rate
                    candidates.append((travel + wait + charging + (release or 0.), station))
                except ValueError:
                    continue
        return sorted(candidates)

    def available_charger(self, name, *, nearest_only=False, now=None):
        candidates = self.charge_options(name, nearest_only=nearest_only, now=now)
        return candidates[0][1] if candidates else None

    def queue_autocharge(self, name, station, now):
        self.serial += 1
        job = self.submit(dict(id=f'autocharge-{name}-{self.serial}', type='charge',
                               robot=name, goal=station, priority=100), now)
        job.charge_trigger = 'automatic'
        return job

    def charged_clearance_goal(self, name, bay):
        prefix = f'PP_EXIT_{bay[3:]}_'
        home = self.charge_homes.get(name)
        stops = [station for station, _ in self.graph.adj.get(bay, ()) if station.startswith(prefix)]
        booked = set(self.destinations)
        booked.update(job.goals[0] for job in self.jobs.values()
                      if job.kind == 'return' and job.state == 'QUEUED' and job.requested_robot != name)
        choices = []
        for station in [*stops, home]:
            if not station or station == bay or station in booked or self.other_vehicle_at(station, name):
                continue
            if station in stops and not self.charger_parking_has_exit(name, bay, station):
                continue
            try:
                choices.append((self.charge_path(bay, station, robot=self.robots[name])[0], station))
            except ValueError:
                continue
        return min(choices)[1] if choices else None

    def charger_parking_has_exit(self, name, bay, station):
        shape = forklift_footprint(self.robots[name].model)
        if shape is None:
            return True
        approaches = {neighbor for neighbor, _ in (*self.graph.incoming(bay), *self.graph.adj[bay])
                      if not neighbor.startswith(('CP_', 'PP_', 'PARK_'))}
        closed = self.charge_closed_edges | {(origin, bay) for origin, _ in self.graph.incoming(bay)}
        for endpoint in sorted(approaches):
            try:
                self.graph.vehicle_bid_route(station, endpoint, shape, closed,
                                             start_yaw=self.graph.stations[station].get('dir'),
                                             no_stop_stations=self.route_no_stop_stations)
                return True
            except ValueError:
                continue
        return False

    def forecast_charger_release(self, now, feedback_unavailable):
        estimates = {}
        for name, robot in self.robots.items():
            if (robot.blocked or name in feedback_unavailable or now - robot.seen > self.freshness
                    or robot.station is None or robot.soc is None):
                continue
            speed = self.vehicle_costs(robot)[0]
            job = self.jobs.get(robot.job)
            last = self.jobs.get(self.finished_at.get(name))
            if job and job.kind == 'charge' and job.state in ('EXECUTING', 'CHARGING'):
                bay = job.goals[0]
                report = self.charger_observation(bay, now)
                if self.charger_profile(bay).feedback_required and (report is None
                        or (report.state, report.robot, report.execution_id) != ('charging', name, job.execution_id)):
                    continue
                rate = self.charger_rate(bay)
                if not math.isfinite(rate) or rate <= 0:
                    continue
                try:
                    travel, wait = (0., 0.) if job.state == 'CHARGING' else self.charge_path(
                        robot.station, bay, robot=robot, start_yaw=self.route_headings.get(name))
                    arrival_soc = max(0., robot.soc - self.vehicle_costs(robot)[2] * travel)
                    home = self.charged_clearance_goal(name, bay)
                    if home is None and forklift_footprint(robot.model):
                        continue
                    distance, exit_wait = self.charge_path(bay, home, robot=robot) if home and bay != home else (0., 0.)
                    clearance = distance / speed + exit_wait
                except ValueError:
                    continue
                estimates[bay] = max(1., travel / speed + wait + max(0., self.release_soc - arrival_soc) / rate + clearance)
            elif last and last.kind == 'charge' and robot.station == last.goals[0]:
                home = self.execution_goal(job) if job and job.state == 'EXECUTING' else self.charged_clearance_goal(name, robot.station)
                if (self.charging_release_confirmed(last, now)
                        and home and home != robot.station and not self.other_vehicle_at(home, name)):
                    try:
                        distance, wait = self.charge_path(robot.station, home, robot=robot,
                                                          start_yaw=self.route_headings.get(name))
                        estimates[robot.station] = distance / speed + wait
                    except ValueError:
                        continue
        return estimates

    def low_charge_candidates(self, now, feedback_unavailable):
        queued = {job.requested_robot for job in self.jobs.values()
                  if job.kind == 'charge' and job.state in ('QUEUED', 'PAUSED')}
        return [name for name, robot in self.robots.items()
                if (robot.dispatch_state == 'enabled' and not robot.job and not robot.blocked
                    and name not in self.unavailable and name not in feedback_unavailable and name not in queued
                    and robot.station is not None and robot.soc is not None and robot.soc < self.low_soc
                    and 0 <= now - robot.seen <= self.freshness)]

    def schedule_low_charge(self, now, feedback_unavailable):
        low = self.low_charge_candidates(now, feedback_unavailable)
        self.charge_wait_started = {name: self.charge_wait_started.get(name, now) for name in low}
        self.charge_forecasts = self.forecast_charger_release(now, feedback_unavailable) if low else {}
        if self.dispatch_paused:
            return
        if not self.predictive_charging:
            for name in low:
                station = self.available_charger(name, now=now)
                if station:
                    self.queue_autocharge(name, station, now)
                else:
                    self.charge_waiting[name] = '低电等待：暂无空闲且可达的充电位'
            return
        options_by_vehicle = {name: self.charge_options(name, now=now) for name in low}
        free_bays = {station for options in options_by_vehicle.values() for _, station in options}
        low.sort(key=lambda name: (
            self.robots[name].soc >= .10, self.charge_wait_started[name],
            options_by_vehicle[name][0][0] if len(free_bays) == 1 and options_by_vehicle[name] else 0., name,
        ))
        if self.workload_charging:
            self.schedule_fleet_low_charge(low, options_by_vehicle, free_bays, now)
            return
        if self.schedule_charge_horizon(low, options_by_vehicle, free_bays, now):
            return
        for start in range(0, len(low), 32):
            candidates = []
            for name in low[start:start+32]:
                options = self.charge_options(name, now=now) if start else options_by_vehicle[name]
                if not options:
                    self.charge_waiting[name] = '低电等待：暂无空闲且可达的充电位'
                    continue
                if (self.robots[name].soc >= .10 and now - self.charge_wait_started[name] < 60
                        and self.charge_forecasts):
                    predicted = self.charge_options(name, forecast=self.charge_forecasts, now=now)
                    if predicted and predicted[0][0] + 1 < options[0][0]:
                        self.charge_waiting[name] = '低电等待：预计更快的充电位正在充电'
                        continue
                candidates.append({'id': name, 'bids': [{'robot': station, 'cost': cost}
                                                       for cost, station in options]})
            selected = match_jobs(candidates)
            for candidate in candidates:
                name = candidate['id']
                if name in selected:
                    self.queue_autocharge(name, selected[name], now)
                else:
                    self.charge_waiting[name] = '低电等待：充电位已优先分配给队列中的其他车辆'

    def schedule_fleet_low_charge(self, low, free_options, free_bays, now):
        immediate = {}
        if free_bays:
            forecast = self.charge_forecasts
            ready = {**{bay: max(delay, 1e-9) for bay, delay in forecast.items()}, **dict.fromkeys(free_bays, 0.)}
            service = {}
            critical = {name for name in low if (self.robots[name].soc < .10
                        or now - self.charge_wait_started[name] >= self.workload_charging.max_wait_ticks)}
            for name in low:
                options = self.charge_options(name, forecast=forecast, now=now) if forecast else free_options[name]
                estimates = {}
                for cost, bay in options:
                    if bay not in ready:
                        continue
                    home = self.charged_clearance_goal(name, bay)
                    clearance = (self.charge_path(bay, home, robot=self.robots[name])[0] / self.vehicle_costs(self.robots[name])[0]
                                 if home else 120.)
                    estimates[bay] = max(0., cost - forecast.get(bay, 0.)), clearance
                service[name] = estimates
            ordered = sorted(low, key=lambda name: (name not in critical, self.robots[name].soc >= .10,
                                                    self.charge_wait_started[name], len(service[name]), name))
            immediate = plan_fleet_charge_queue(ordered, service, ready, prioritize_now=critical)
        for name in low:
            bay = immediate.get(name)
            if bay in {option for _, option in free_options[name]}:
                self.queue_autocharge(name, bay, now)
            elif free_options[name]:
                self.charge_waiting[name] = '低电等待：按全车队充电队列预计完成时间等待'
            else:
                self.charge_waiting[name] = '低电等待：暂无空闲且可达的充电位'

    def schedule_charge_horizon(self, low, free_options, free_bays, now):
        ready = {**self.charge_forecasts, **dict.fromkeys(free_bays, 0.)}
        if not self.charge_homes or not 2 <= len(low) <= 6 or not free_bays or len(ready) > 8:
            return False
        service = {}
        speed = self.policy['empty_speed_mps']
        for name in low:
            service[name] = {}
            for cost, bay in self.charge_options(name, forecast=self.charge_forecasts, now=now):
                home = self.charged_clearance_goal(name, bay)
                clearance = self.charge_path(bay, home, robot=self.robots[name])[0] / speed if home else 120.
                service[name][bay] = (max(0., cost - ready[bay]), clearance)
        eligible = [name for name in low if service[name]]
        if len(eligible) < 2:
            return False
        urgency = {name: len(low) + 1 if self.robots[name].soc < .10
                   else int(now - self.charge_wait_started[name] >= 60) for name in eligible}
        first_slots = plan_charge_queue(eligible, service, ready, urgency)
        for name in low:
            bay = first_slots.get(name)
            if bay is not None and any(option == bay for _, option in free_options[name]):
                self.queue_autocharge(name, bay, now)
            else:
                self.charge_waiting[name] = ('低电等待：按充电队列预计完成时间等待'
                                             if name in eligible else '低电等待：暂无空闲且可达的充电位')
        return True

    def schedule_idle_topup(self, now, feedback_unavailable):
        if self.workload_charging:
            self.schedule_workload_topups(now, feedback_unavailable)
            return
        if (not self.charge_homes or not self.predictive_charging or self.charge_waiting
                or (self.last_idle_topup is not None and now - self.last_idle_topup < 20)):
            return
        if any((job.kind == 'charge' and job.state not in ('DONE', 'FAILED', 'CANCELLED'))
               or (job.kind != 'return' and job.state == 'QUEUED') for job in self.jobs.values()):
            return
        idle = [(robot.soc, name) for name, robot in self.robots.items()
                if (robot.dispatch_state == 'enabled' and not robot.job and not robot.blocked
                    and name not in self.unavailable and name not in feedback_unavailable
                    and robot.soc is not None and now - robot.seen <= self.freshness)]
        if len(idle) <= max(2, math.ceil(len(self.robots) * .20)):
            return
        for soc, name in sorted(idle):
            if not self.low_soc <= soc < self.policy['target_soc']:
                continue
            station = self.available_charger(name, now=now)
            if station:
                job = self.queue_autocharge(name, station, now)
                job.charge_trigger = 'idle_topup'
                self.last_idle_topup = now
                self.emit('idle_topup_queued', robot=name, charge_id=job.id)
                return

    def workload_charge_demand(self, now):
        policy = self.workload_charging
        demand = {}
        candidates = [job for job in self.jobs.values() if (job.kind in ('move', 'standby', 'transport')
                      and job.goals and job.state == 'QUEUED')]
        for job in sorted(candidates, key=lambda job: (self.scheduling_priority(job, now)[0], job.created, job.id)):
            area = policy.group(job.goals[0])
            demand.setdefault(area, []).append(job)
            robot = self.robots.get(job.requested_robot)
            if robot and robot.station is not None and policy.group(robot.station) != area:
                demand.setdefault(policy.group(robot.station), []).append(job)
        return demand

    def forecast_workload_soc(self, name, local_jobs, now):
        robot = self.robots[name]
        _, _, empty_consumption, loaded_consumption, _ = self.vehicle_costs(robot)
        projected = []
        # The first few compatible jobs in priority order estimate near-term
        # energy exposure. Charger health and exact task eligibility are still
        # checked again by normal dispatch, including the escape reserve.
        for job in local_jobs:
            if (now - job.created > self.workload_charging.forecast_ticks
                    or job.requested_robot not in (None, name) or job.next_robot not in (None, name)
                    or not self.vehicle_fits(job, robot)):
                continue
            pickup = job.goals[:1] if job.kind == 'transport' else ()
            stops = (*pickup, *job.requirements.get('via', ()), job.goals[-1])
            try:
                empty, loaded = self.dispatch_trip(robot.station, stops, transport=job.kind == 'transport',
                                                   robot=robot, pallet=job.requirements.get('pallet'),
                                                   yaw=self.route_headings.get(name))
                escape, floor = self.charger_escape(stops[-1], robot=robot, now=now)
            except ValueError:
                continue
            if math.isfinite(escape):
                projected.append(empty * empty_consumption + loaded * loaded_consumption
                                 + escape * empty_consumption + max(0., floor - self.low_soc))
                if len(projected) == 4:
                    break
        policy = self.workload_charging
        if not projected:
            return None
        # Cap forecast top-ups to one additional margin above opportunistic
        # charging to avoid chasing a single distant or unusually heavy job.
        margin = min(max(policy.topup_margin_soc, max(projected)), 2 * policy.topup_margin_soc)
        return min(self.release_soc, self.low_soc + margin)

    def workload_charge_spares(self, now, feedback_unavailable):
        active_charges = [job for job in self.jobs.values() if job.kind == 'charge'
                          and job.state not in ('DONE', 'FAILED', 'CANCELLED')]
        bookings = {job.next_robot for job in self.jobs.values() if job.state == 'QUEUED'}
        charging = {job.requested_robot for job in active_charges}
        ready = {name for name, robot in self.robots.items()
                 if (robot.dispatch_state == 'enabled' and not robot.job and not robot.blocked
                     and name not in self.unavailable and name not in feedback_unavailable
                     and name not in bookings and name not in charging and robot.soc is not None
                     and robot.soc >= self.low_soc and robot.station is not None
                     and 0 <= now - robot.seen <= self.freshness and self.charger_movement_ready(name, now))}
        return ready, active_charges

    def workload_reserve_ok(self, name, ready, local_jobs, now):
        policy = self.workload_charging
        robot = self.robots[name]
        group = policy.group(robot.station)
        neighbours = {other for other in ready if (other != name
                      and policy.group(self.robots[other].station) == group)}
        substitutes = [other for other in neighbours if self.robots[other].model == robot.model]
        if len(substitutes) < policy.protected_ready:
            return False
        for job in local_jobs:
            if job.state != 'QUEUED' or self.scheduling_priority(job, now)[0] > 2:
                continue
            if job.requested_robot == name:
                return False
            if (job.requested_robot is None and self.vehicle_fits(job, robot)
                    and sum(self.vehicle_fits(job, self.robots[other]) for other in neighbours) <= policy.protected_ready):
                return False
        return True

    def low_charge_needs_bay(self, bay, low):
        for name in low:
            robot = self.robots[name]
            if not self.charger_compatible(bay, robot) or self.other_vehicle_at(bay, name):
                continue
            try:
                distance, _ = self.charge_path(robot.station, bay, robot=robot,
                                               start_yaw=self.route_headings.get(name))
            except ValueError:
                continue
            if self.charger_reachable(bay, robot, distance):
                return True
        return False

    def reconsider_queued_charges(self, now, feedback_unavailable):
        queued = [job for job in self.jobs.values() if (job.kind == 'charge' and job.state == 'QUEUED'
                  and job.charge_trigger in ('workload_topup', 'automatic') and job.goals)]
        if not queued:
            return
        has_discretionary = any(job.charge_trigger == 'workload_topup' for job in queued)
        ready, demand, low = set(), {}, ()
        if has_discretionary:
            ready, _ = self.workload_charge_spares(now, feedback_unavailable)
            demand = self.workload_charge_demand(now)
            low = self.low_charge_candidates(now, feedback_unavailable)
        for job in queued:
            name, bay = job.requested_robot, job.goals[0]
            robot = self.robots[name]
            if robot.station is None or robot.soc is None or name in feedback_unavailable:
                continue
            try:
                distance, _ = self.charge_path(robot.station, bay, robot=robot,
                                               start_yaw=self.route_headings.get(name))
                usable = (self.charger_ready(bay, now) and self.charger_compatible(bay, robot)
                          and self.charger_reachable(bay, robot, distance) and not self.other_vehicle_at(bay, name))
            except ValueError:
                usable = False
            if not usable:
                self.cancel(job.id, reason='charging berth unavailable before route activation')
            elif job.charge_trigger == 'workload_topup' and robot.soc < self.low_soc:
                job.charge_trigger = 'automatic'
            elif job.charge_trigger == 'workload_topup':
                jobs = demand.get(self.workload_charging.group(robot.station), ())
                target = self.forecast_workload_soc(name, jobs, now)
                if self.low_charge_needs_bay(bay, low):
                    self.cancel(job.id, reason='prioritize a reachable low battery before route activation')
                elif target is None or robot.soc >= target:
                    self.cancel(job.id, reason='predicted local work no longer justifies an early top-up')
                elif not self.workload_reserve_ok(name, ready, jobs, now):
                    self.cancel(job.id, reason='retain eligible workload capacity before route activation')
            if has_discretionary and job.state == 'CANCELLED':
                ready, _ = self.workload_charge_spares(now, feedback_unavailable)

    def schedule_workload_topups(self, now, feedback_unavailable):
        if not self.predictive_charging or self.charge_waiting:
            return
        policy = self.workload_charging
        ready, active = self.workload_charge_spares(now, feedback_unavailable)
        slots = policy.max_parallel_topups - sum(job.charge_trigger == 'workload_topup' for job in active)
        if slots <= 0:
            return
        demand = self.workload_charge_demand(now)
        ceiling = min(self.release_soc, self.low_soc + 2 * policy.topup_margin_soc)
        for name in sorted(ready, key=lambda name: (self.robots[name].soc, name)):
            if not slots:
                break
            robot = self.robots[name]
            if not self.low_soc <= robot.soc < ceiling:
                continue
            local_jobs = demand.get(policy.group(robot.station), ())
            target = self.forecast_workload_soc(name, local_jobs, now)
            if target is None or robot.soc >= target:
                continue
            if not self.workload_reserve_ok(name, ready, local_jobs, now):
                continue
            station = self.available_charger(name, now=now)
            if station is None:
                continue
            job = self.queue_autocharge(name, station, now)
            job.charge_trigger = 'workload_topup'
            ready.remove(name)
            slots -= 1
            self.emit('workload_topup_queued', robot=name, charge_id=job.id,
                      area=policy.group(robot.station), remaining_ready=len(ready))

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
        elif op == 'set_vehicle_profile':
            name = request['robot']
            robot = self.robots[name]
            model = request.get('model', robot.model)
            payload = request.get('payload_kg', robot.payload_kg)
            performance = validate_vehicle_performance(request.get('performance', robot.performance))
            if robot.job or (model is not None and (not isinstance(model, str) or not model.strip() or len(model) > 64)):
                raise ValueError('只能为无执行任务的车辆修改为有效车型')
            if payload is not None and (type(payload) not in (int, float) or not 0 < payload <= 1000000):
                raise ValueError('额定载荷必须是有效的正数')
            robot.model, robot.payload_kg, robot.performance = model, payload, performance
            for job in self.jobs.values():
                if job.next_robot == name and not self.vehicle_fits(job, robot):
                    self.release_next(job, '车辆能力参数变化')
            self.emit('vehicle_profile_updated', robot=name, model=model, payload_kg=payload, performance=performance)
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
            values = {'requirements': j.requirements, **values}
            _, kind, goals, priority, robot, transfer, fingerprint, requirements = self.validate_submission(values)
            current = [j.kind, j.goals, j.priority]
            desired = [kind, goals, priority]
            if request.get('expected') != current and desired != current:
                raise ValueError('任务已被修改，请刷新后重新编辑')
            if requirements != j.requirements and request.get('expected_requirements') != j.requirements:
                raise ValueError('任务约束已变化，请重新读取后再编辑')
            self.release_next(j, '任务参数已修改')
            j.kind, j.goals, j.priority = kind, goals, priority
            j.requested_robot, j.allow_transfer, j.request_fingerprint = robot, transfer, fingerprint
            j.requirements = requirements
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
                if j.state not in ('QUEUED', 'PAUSED') or not valid_business_priority(request.get('priority')):
                    raise ValueError('priority update requires queued/paused job and -100/0/100')
                j.priority = request['priority']
            elif op == 'pause':
                if j.state=='EXECUTING':
                    j.state='PAUSING'
                    j.control_seq+=1
                    return dict(robot=j.robot,pause=True,task_id=j.execution_id,control_seq=j.control_seq)
                if j.state != 'QUEUED':
                    raise ValueError('pause is supported at the queued boundary only')
                self.release_next(j, '任务已暂停')
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
            j.via_index = 0
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

    def return_plan(self,homes, *, charging_only=False):
        plans=[]
        for name,completed in self.finished_at.items():
            if name not in homes:
                continue
            r=self.robots[name];old=self.jobs[completed];home=homes[name]
            identity=f'park-{name}-{completed}'
            if r.dispatch_state != 'enabled' or r.job or r.blocked or old.kind in ('return','standby') or identity in self.jobs:continue
            if charging_only:
                if old.kind != 'charge' or r.station != old.goals[0]:
                    continue
                home = self.charged_clearance_goal(name, r.station)
                if home is None:
                    continue
            elif r.station == home:
                continue
            # A robot with a separate parking bay must vacate shared chargers.
            # Preserve the existing four-car charge-in-home behaviour.
            if old.kind=='charge' and not charging_only and not home.startswith('PP_'):continue
            plans.append(dict(id=identity,type='return',robot=name,goal=home))
        return plans

    def queue_returns(self,plans,now):
        for req in plans:
            for old in list(self.jobs.values()):
                if old.kind=='return' and old.id.startswith('park-') and old.requested_robot==req['robot'] and old.id!=req['id'] and old.state=='QUEUED':
                    self.cancel(old.id,reason='superseded by newer parking intent')
            self.submit(req,now).priority=-20

    def snapshot(self, *, for_storage=False):
        # The journal encodes state synchronously under the scheduler's lock.
        # Its encoder only reads these records, so it needs no recursive copy.
        record = vars if for_storage else asdict
        return dict(jobs={k: record(v) for k, v in self.jobs.items()},
                    robots={k: record(v) for k, v in self.robots.items()}, chargers=self.chargers.copy(), destinations=self.destinations.copy(), charge_waiting=self.charge_waiting.copy(), dispatch_paused=self.dispatch_paused, weights=self.weights.copy(),
                    workstations={name:booking.copy() for name,booking in self.workstations.items()},
                    charge_forecasts=self.charge_forecasts.copy(), charge_wait_started=self.charge_wait_started.copy(),
                    charger_profiles={bay: asdict(profile) for bay, profile in self.charger_profiles.items()},
                    charger_observations={bay: asdict(report) for bay, report in self.charger_observations.items()},
                    workload_charging=asdict(self.workload_charging) if self.workload_charging else None,
                    last_idle_topup=self.last_idle_topup,
                    charger_occupancy={name:bays.copy() for name,bays in self.charger_occupancy.items()},
                    scheduling=dict(config=self.policy,revision=self.policy_revision,**self.policy_state,solver=SOLVER))
