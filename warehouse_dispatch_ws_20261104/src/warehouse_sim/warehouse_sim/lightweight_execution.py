"""Deterministic station-to-station execution for the lightweight simulator."""
from collections import Counter, defaultdict
from dataclasses import dataclass
from functools import lru_cache
import math
import time
import uuid

from warehouse_sim.cycle_recovery import CycleMove, CycleVehicle, PARKING_RADIUS, plan_cycle
from warehouse_sim.route_graph import FORKLIFT_MODEL, RouteError, forklift_footprint, occupied_cells
from warehouse_sim.admission_policy import next_window, parking_for_idle_workstations
from warehouse_sim.traffic_policy import next_segment, traffic_order, wait_cycles
from warehouse_sim.vehicle_contract import (
    AuthorizedMotion, ExecutionRef, HandlingCommand, SegmentArrival, StopRequest, VehicleFeedback, VehicleIdentity,
    VehicleTelemetry,
)


@dataclass
class Segment:
    nodes: tuple
    cells: frozenset
    points: list
    length: float
    start_tick: int
    end_tick: int
    yielding: bool
    stopped_tick: int | None = None
    backing_from: int | None = None
    grant_id: str | None = None
    grant_sequence: int | None = None
    blocked_edges: frozenset | None = None
    drive_reverse: bool = False


class LightweightExecution:
    """Own physical occupancy and apply the shared graph and traffic policies."""

    def __init__(self, service, positions, stops, *, graph=None):
        self.service = service
        self.fleet = service.fleet
        self.graph = graph if graph is not None else self.fleet.graph
        self.stops = stops
        self.positions = dict(positions)
        self.homes = dict(positions)
        self.soc = dict.fromkeys(positions, .94)
        self.charge_gain_per_tick = {}
        self.modeled_tick_seconds = None
        self.pending_handling = {}
        self.tick = 0
        self.pending = {}
        self.active = {}
        self.waiting = {}
        self.closed_edges = set()
        self.feedback_unavailable = set()
        self.feedback_profile = {}
        self.feedback_queue = []
        self.vehicle_epoch = uuid.uuid4().hex
        self.stop_requests = {}
        self.motion_sequences = Counter()
        self.traffic_zones = {}
        self.cargo = {}
        self.headings = {}
        self.pickup_guards = {}
        self.recovery_plans = {}
        self.recovery_attempts = {}
        self.stats = Counter()
        self.wait_ticks = Counter()
        self.last_routes = {}
        self.wait_since = {}
        self.dispatch_batches = []
        self.rolling_admission = False
        self.recent_cycles = []
        self.overlap_cells = 0
        self.refresh_geometry()

    @property
    def recovery(self):
        return any(self.recovery_plans.values())

    @property
    def recovery_members(self):
        return {robot for group in self.recovery_plans for robot in group}

    def recovery_group(self, robot):
        return next((group for group in self.recovery_plans if robot in group), None)

    def checkpoint(self):
        return {
            'tick': self.tick, 'positions': self.positions, 'soc': self.soc,
            'charge_gain_per_tick': self.charge_gain_per_tick,
            'modeled_tick_seconds': self.modeled_tick_seconds,
            'pending_handling': self.pending_handling,
            'pending': self.pending, 'waiting': self.waiting, 'wait_since': self.wait_since,
            'closed_edges': sorted(self.closed_edges), 'cargo': self.cargo,
            'headings': self.headings, 'pickup_guards': self.pickup_guards,
            'feedback_unavailable': sorted(self.feedback_unavailable),
            'feedback_profile': self.feedback_profile, 'feedback_queue': self.feedback_queue,
            'vehicle_epoch': self.vehicle_epoch,
            'stop_requests': {robot: request_id for robot, (request_id, _) in self.stop_requests.items()},
            'motion_sequences': dict(self.motion_sequences),
            'traffic_zones': self.traffic_zones,
            'recovery_plans': [(group, [(move.robot, move.nodes, move.cargo, sorted(move.cells) if move.cells else None)
                                        for move in moves])
                               for group, moves in self.recovery_plans.items()],
            'stats': dict(self.stats),
            'wait_ticks': dict(self.wait_ticks), 'last_routes': self.last_routes,
            'dispatch_batches': [sorted(batch) for batch in self.dispatch_batches],
            'rolling_admission': self.rolling_admission,
            'recent_cycles': self.recent_cycles,
            'active': {robot: {
                'nodes': segment.nodes, 'start_tick': segment.start_tick, 'end_tick': segment.end_tick,
                'yielding': segment.yielding, 'stopped_tick': segment.stopped_tick,
                'backing_from': segment.backing_from,
                'grant_id': segment.grant_id, 'grant_sequence': segment.grant_sequence,
            } for robot, segment in self.active.items()},
        }

    def restore_checkpoint(self, saved):
        if set(saved['positions']) != self.positions.keys() or set(saved['soc']) != self.positions.keys():
            raise ValueError('仿真检查点车队名单不一致')
        self.positions = saved['positions']
        self.soc = saved['soc']
        self.charge_gain_per_tick = saved.get('charge_gain_per_tick', {})
        self.modeled_tick_seconds = saved.get('modeled_tick_seconds')
        self.pending_handling = saved.get('pending_handling', {})
        self.tick = saved['tick']
        self.pending, self.waiting = saved['pending'], saved['waiting']
        self.wait_since, self.cargo = saved['wait_since'], saved['cargo']
        self.headings = saved.get('headings', {})
        self.pickup_guards = saved.get('pickup_guards', {})
        self.closed_edges = set(map(tuple, saved['closed_edges']))
        self.feedback_unavailable = set(saved['feedback_unavailable'])
        self.feedback_profile = saved.get('feedback_profile', {})
        self.feedback_queue = saved.get('feedback_queue', [])
        if 'vehicle_epoch' in saved:
            epoch = saved['vehicle_epoch']
            for name in self.positions:
                VehicleIdentity(name, self.service.map_name, epoch)
            self.vehicle_epoch = epoch
        else:
            # Old local checkpoints never accepted vehicle messages from outside.
            for record in self.feedback_queue:
                record['event'].update(map_name=self.service.map_name, vehicle_epoch=self.vehicle_epoch)
        self.stop_requests = {robot: (request_id, None) for robot, request_id in saved.get('stop_requests', {}).items()}
        self.motion_sequences = Counter(saved.get('motion_sequences', {}))
        self.traffic_zones = saved.get('traffic_zones', {})
        plans = saved.get('recovery_plans')
        if plans is None:
            plans = [(saved['recovery_members'], saved['recovery'])] if saved.get('recovery') else []
        self.recovery_plans = {tuple(group): [CycleMove(name, tuple(nodes), cargo,
                                                       frozenset(map(tuple, cells[0])) if cells and cells[0] else None)
                                             for name, nodes, cargo, *cells in moves]
                               for group, moves in plans}
        if (len(self.recovery_plans) != len(plans)
                or len(self.recovery_members) != sum(map(len, self.recovery_plans))
                or any(not group or not moves or set(group) - self.positions.keys()
                       or any(move.robot not in group or move.robot not in self.pending or len(move.nodes) < 2
                              for move in moves)
                       for group, moves in self.recovery_plans.items())):
            raise ValueError('仿真检查点中的死锁恢复组不一致')
        self.stats = Counter(saved['stats'])
        self.wait_ticks = Counter(saved['wait_ticks'])
        self.last_routes = saved['last_routes']
        self.dispatch_batches = [set(batch) for batch in saved['dispatch_batches']]
        self.rolling_admission = saved.get('rolling_admission', False)
        self.recent_cycles = saved['recent_cycles']
        for robot, command in self.pending.items():
            job = self.fleet.jobs.get(self.fleet.robots[robot].job)
            if not job or command['task_id'] != job.execution_id:
                raise ValueError('仿真检查点命令与任务记录不一致')
        for robot, record in saved['active'].items():
            nodes = tuple(record['nodes'])
            if robot not in self.pending or nodes[0] != self.positions[robot]:
                raise ValueError('仿真检查点路线与车辆占位不一致')
            if record['yielding']:
                plan = self.recovery_plans.get(self.recovery_group(robot))
                if not plan or (plan[0].robot, plan[0].nodes) != (robot, nodes):
                    raise ValueError('仿真检查点中的避让授权不一致')
            points, cells, length, blocked = self.robot_segment(robot, nodes)
            self.active[robot] = Segment(nodes, cells, points, length, record['start_tick'],
                                         record['end_tick'], record['yielding'], record['stopped_tick'],
                                         record.get('backing_from'), record.get('grant_id'),
                                         record.get('grant_sequence'), blocked,
                                         bool(self.shape_for(robot) and nodes[:2] in self.graph.reverse_edges))
        if any(robot not in self.active or self.active[robot].stopped_tick is None
               for robot in self.stop_requests):
            raise ValueError('仿真检查点停车回执与授权路段不一致')
        self.claims()

    def xy(self, station):
        pos = self.graph.stations[station]['pos']
        return pos['x'], pos['y']

    def refresh_geometry(self):
        self._parked_geometry.cache_clear()
        self.parked = {n: frozenset(occupied_cells([self.xy(n)], radius=PARKING_RADIUS))
                       for n in self.graph.stations}
        self.edge_index = defaultdict(set)
        for edge, cells in self.graph.edge_cells.items():
            for cell in cells:
                self.edge_index[cell].add(edge)
        self.station_blocks = {n: self.blocked_by(cells) for n, cells in self.parked.items()}
        self.forklift_indexed = False
        self.forklift_station_blocks = {}
        self.segment_footprint.cache_clear()
        cells = set()
        for robot, station in self.positions.items():
            footprint = self.parked_for(robot, station)
            if cells.intersection(footprint):
                raise ValueError('起始车辆占位重叠')
            cells.update(footprint)

    def prepare_forklift_geometry(self):
        if not self.forklift_indexed and any(forklift_footprint(vehicle.model)
                                             for vehicle in self.fleet.robots.values()):
            shape = forklift_footprint(FORKLIFT_MODEL, loaded=True)
            for edge in self.graph.edges:
                for cell in self.graph.vehicle_edge_cells(edge, shape):
                    self.edge_index[cell].add(edge)
            self.forklift_indexed = True
            self.station_blocks = {n: self.blocked_by(cells) for n, cells in self.parked.items()}
            self.forklift_station_blocks.clear()
            self.segment_footprint.cache_clear()
            for segment in self.active.values():
                segment.blocked_edges = self.blocked_by(segment.cells)

    def shape_for(self, robot, *, force_loaded=False, job=None):
        vehicle = self.fleet.robots[robot]
        empty = forklift_footprint(vehicle.model)
        if not empty:
            return None
        job = job or self.fleet.jobs.get(vehicle.job)
        cargo = self.cargo.get(job.id, {}) if job else {}
        if not job and vehicle.blocked:
            cargo = next((record for record in self.cargo.values() if record['location'] == robot), {})
        if force_loaded or (job and job.loaded) or cargo.get('location') == robot:
            pallet = cargo.get('pallet') or (job.requirements.get('pallet') if job else None)
            return forklift_footprint(vehicle.model, loaded=True, pallet=pallet)
        return empty

    def yaw_at(self, robot, station):
        return self.headings.get(robot, self.graph.stations[station].get('dir'))

    @lru_cache(maxsize=4096)
    def _parked_geometry(self, station, shape, yaw):
        x, y = self.xy(station)
        if yaw is not None:
            return frozenset(occupied_cells([(x, y, yaw)], footprint=shape))
        radius = math.hypot(shape.rear_m, shape.half_width_m) + shape.clearance_m + .65
        return frozenset(occupied_cells([(x, y)], radius=radius))

    def parked_for(self, robot, station):
        shape = self.shape_for(robot)
        if shape is None:
            return self.parked[station]
        physical = self._parked_geometry(station, shape, self.yaw_at(robot, station))
        guard = self.pickup_guards.get(robot)
        job = self.fleet.jobs.get(self.fleet.robots[robot].job)
        if guard and job and guard == job.id and job.index == 0 and station == job.goals[0]:
            physical |= self._parked_geometry(station, self.shape_for(robot, force_loaded=True),
                                               self.yaw_at(robot, station))
        return physical

    def geometry_options(self, robot, goal):
        start = self.positions[robot]
        return self.geometry_options_at(robot, start, goal, self.yaw_at(robot, start))

    def geometry_options_at(self, robot, start, goal, yaw):
        shape = self.shape_for(robot)
        if shape is None:
            return {}
        end_yaw = self.graph.stations[goal].get('dir')
        blocked, turns = self.graph.footprint_restrictions(shape)
        blocked |= self.graph.restricted_heading_edges(start, shape, yaw, outgoing=True)
        blocked |= self.graph.restricted_heading_edges(goal, shape, end_yaw, outgoing=False)
        no_stop_turns = self.graph.no_stop_reverse_turns(self.stops.no_stop_stations)
        return {'geometry_edges': blocked, 'forbidden_turns': turns | no_stop_turns,
                'split_reverse': True, 'no_stop_stations': self.stops.no_stop_stations}

    def pickup_shape(self, robot, goal):
        job = self.fleet.jobs.get(self.fleet.robots[robot].job)
        if job and job.kind == 'transport' and job.index == 0 and goal == job.goals[0]:
            return self.shape_for(robot, force_loaded=True)
        return None

    def robot_segment(self, robot, nodes):
        shape = self.shape_for(robot)
        if shape is None:
            return self.segment_footprint(nodes)
        return self.segment_footprint(nodes, shape, self.pickup_shape(robot, nodes[-1]), self.yaw_at(robot, nodes[0]))

    def recovery_trajectory(self, robot, nodes, yaw):
        shape = self.shape_for(robot)
        pickup = self.pickup_shape(robot, nodes[-1])
        points, cells, _, _ = self.segment_footprint(nodes, shape, pickup, yaw)
        arrival_yaw = points[-1][2]
        arrival = self._parked_geometry(nodes[-1], shape, arrival_yaw)
        if pickup:
            arrival |= self._parked_geometry(nodes[-1], pickup, arrival_yaw)
        return cells, arrival, arrival_yaw

    def blocked_by(self, cells):
        blocked = set()
        for cell in cells:
            blocked.update(self.edge_index.get(cell, ()))
        return blocked

    @lru_cache(maxsize=1024)
    def segment_footprint(self, nodes, shape=None, pickup=None, start_yaw=None):
        if shape is None:
            points = self.graph.path_points(nodes)
            cells = self.parked[nodes[0]] | self.parked[nodes[-1]] | occupied_cells(points)
        else:
            end_yaw = self.graph.stations[nodes[-1]].get('dir')
            points, cells = self.graph.vehicle_path(nodes, shape, start_yaw=start_yaw, end_yaw=end_yaw)
            cells.update(self._parked_geometry(nodes[0], shape, start_yaw))
            cells.update(self._parked_geometry(nodes[-1], shape, points[-1][2]))
            if pickup is not None:
                cells.update(self._parked_geometry(nodes[-1], pickup, points[-1][2]))
            cells = frozenset(cells)
        length = sum(self.graph.edges[a, b][1] for a, b in zip(nodes, nodes[1:]))
        return points, cells, length, frozenset(self.blocked_by(cells))

    def segment_blocks(self, segment):
        return segment.blocked_edges if segment.blocked_edges is not None else self.blocked_by(segment.cells)

    def parking_blocks(self, robot, station, cells=None):
        if self.shape_for(robot) is None:
            return self.station_blocks[station]
        cells = self.parked_for(robot, station) if cells is None else cells
        if cells not in self.forklift_station_blocks:
            self.forklift_station_blocks[cells] = self.blocked_by(cells)
        return self.forklift_station_blocks[cells]

    def resources(self, robot, exclude=()):
        self.prepare_forklift_geometry()
        nodes, cells, blocked = set(), set(), set(self.closed_edges)
        excluded = set(exclude) | {robot}
        for peer, station in self.positions.items():
            if peer in excluded:
                continue
            active = self.active.get(peer)
            if active:
                nodes.update(active.nodes)
                cells.update(active.cells)
                blocked.update(self.segment_blocks(active))
            else:
                nodes.add(station)
                footprint = self.parked_for(peer, station)
                cells.update(footprint)
                blocked.update(self.parking_blocks(peer, station, footprint))
        return nodes, cells, blocked

    def wait(self, robot, nominal, *, reason='resource_conflict', extra_blockers=()):
        route_edges = list(zip(nominal, nominal[1:]))
        edges = set(route_edges)
        congested = set()
        blocked_nodes = set(nominal[1:])
        blockers = set(extra_blockers)
        for peer, station in self.positions.items():
            if peer == robot:
                continue
            segment = self.active.get(peer)
            if segment:
                blocked = self.segment_blocks(segment)
                obstructed = edges.intersection(blocked)
                conflict = blocked_nodes.intersection(segment.nodes) or obstructed
            else:
                obstructed = edges.intersection(self.parking_blocks(peer, station))
                conflict = station in blocked_nodes or obstructed
            if conflict:
                blockers.add(peer)
                congested.update(obstructed)
        blockers = sorted(blockers)
        if any(peer in self.active for peer in blockers):
            self.stats['wait_for_active'] += 1
        if robot not in self.wait_since:
            self.fleet.emit('traffic_wait', robot=robot, task_id=self.pending[robot]['task_id'],
                            reason=reason, blockers=blockers)
            self.wait_since[robot] = self.tick
        bottleneck = next((edge for edge in route_edges if edge in congested), None)
        self.waiting[robot] = {'reason': reason, 'blockers': blockers, 'edge': bottleneck}
        self.wait_ticks[robot] += 1

    def acknowledge(self, command, event, **fields):
        reply = VehicleFeedback(ExecutionRef.from_dispatch(command, self.vehicle_epoch), event, **fields)
        if not reply.matches(command, self.vehicle_epoch):
            raise ValueError('仿真回执与授权指令不一致')
        return reply.to_event()

    def stop_request(self, robot):
        request_id, sent_ns = self.stop_requests[robot]
        ref = ExecutionRef.from_dispatch(self.pending[robot], self.vehicle_epoch)
        return StopRequest(ref, request_id, self.active[robot].grant_id), sent_ns

    def confirm_stop(self, sample, request_id):
        robot = sample.vehicle.robot
        request, sent_ns = self.stop_request(robot)
        if not request.confirms(request_id, sample):
            return False
        elapsed_ms = (time.perf_counter_ns() - sent_ns) / 1e6 if sent_ns is not None else None
        self.stop_requests.pop(robot)
        self.stats['stop_confirmations'] += 1
        if elapsed_ms is not None:
            self.stats['max_simulated_stop_confirmation_ms'] = max(
                elapsed_ms, self.stats['max_simulated_stop_confirmation_ms'])
            if robot not in self.feedback_unavailable:
                self.stats['max_local_simulated_stop_confirmation_ms'] = max(
                    elapsed_ms, self.stats['max_local_simulated_stop_confirmation_ms'])
        self.fleet.emit('sim_stop_confirmed', robot=robot, command_id=request.ref.command_id,
                        stop_request_id=request_id, elapsed_ms=elapsed_ms,
                        proof_source='reconciled_feedback' if robot in self.feedback_unavailable else 'local_simulation')
        return True

    def stationary_sample(self, robot, pose):
        identity = VehicleIdentity(robot, self.service.map_name, self.vehicle_epoch)
        command = self.pending.get(robot, {})
        segment = self.active.get(robot)
        cargo = next((cargo_id for cargo_id, record in self.cargo.items() if record['location'] == robot), None)
        return VehicleTelemetry(identity, self.tick, tuple(pose), self.soc[robot], True, True, True,
                                cargo_id=cargo, active_command_id=command.get('command_id'),
                                active_grant_id=segment.grant_id if segment else None)

    def motion_grant(self, robot, points, length, *, reversing=False):
        job = self.fleet.jobs[self.fleet.robots[robot].job]
        empty_speed, loaded_speed, *_ = self.fleet.vehicle_costs(self.fleet.robots[robot])
        speed = loaded_speed if job.loaded else empty_speed
        if reversing or job.handoff.get('phase') in ('to_bay', 'clearing'):
            speed *= .5
        sequence = self.motion_sequences[robot] + 1
        grant = AuthorizedMotion(ExecutionRef.from_dispatch(self.pending[robot], self.vehicle_epoch),
                                 uuid.uuid4().hex, sequence, tuple(points),
                                 1. + length / speed, speed, drive_reverse=reversing)
        self.motion_sequences[robot] = sequence
        return grant

    def sample_index(self, segment, tick):
        observed = tick if segment.stopped_tick is None else segment.stopped_tick
        fraction = (observed - segment.start_tick) / (segment.end_tick - segment.start_tick)
        fraction = min(1., max(0., fraction))
        if segment.backing_from is not None:
            return math.ceil((1 - fraction) * segment.backing_from)
        return int(fraction * (len(segment.points) - 1))

    def retreat_prefix_clear(self, segment, sample):
        offset = 0
        for edge in zip(segment.nodes, segment.nodes[1:]):
            if offset >= sample:
                break
            reverse = edge[::-1]
            if edge in self.closed_edges or reverse in self.closed_edges or reverse not in self.graph.edges:
                return False
            forwards = self.graph.path_points(edge)
            backwards = self.graph.path_points(reverse)
            # Reversing in place on the same centerline preserves the held sweep.
            if len(forwards) != len(backwards) or any(
                    math.dist(a[:2], b[:2]) > .02 for a, b in zip(forwards, reversed(backwards))):
                return False
            offset += len(forwards) - 1
        return sample > 0

    def start_retreat(self, robot, segment):
        if (segment.yielding or self.tick - segment.stopped_tick < 3
                or segment.nodes[0] in self.stops.no_stop_stations):
            return
        sample = self.sample_index(segment, self.tick)
        if not self.retreat_prefix_clear(segment, sample):
            return
        traveled = segment.length * sample / (len(segment.points) - 1)
        grant = self.motion_grant(robot, reversed(segment.points[:sample + 1]), traveled,
                                  reversing=not segment.drive_reverse)
        segment.grant_id, segment.grant_sequence = grant.grant_id, grant.grant_sequence
        segment.backing_from = sample
        duration = max(1, segment.stopped_tick - segment.start_tick)
        if self.modeled_tick_seconds is not None:
            duration = max(1, math.ceil(traveled / (grant.max_speed_mps * self.modeled_tick_seconds)))
        segment.start_tick = self.tick
        segment.end_tick = self.tick + duration
        segment.stopped_tick = None
        self.fleet.emit('traffic_retreat_started', robot=robot, task_id=self.pending[robot]['task_id'])

    def hold_blocked_segments(self):
        for robot, segment in list(self.active.items()):
            lost = robot in self.feedback_unavailable or robot in self.stop_requests
            if segment.backing_from is None:
                blocked = lost or not self.closed_edges.isdisjoint(zip(segment.nodes, segment.nodes[1:]))
            else:
                remaining = self.sample_index(segment, self.tick - 1)
                blocked = lost or (remaining > 0 and not self.retreat_prefix_clear(segment, remaining))
            if blocked and segment.stopped_tick is None:
                sent_ns = time.perf_counter_ns()
                request_id = uuid.uuid4().hex
                self.stop_requests[robot] = request_id, sent_ns
                segment.stopped_tick = self.tick - 1
                self.stats['protective_stops'] += 1
                self.fleet.emit('traffic_protective_stop', robot=robot,
                                task_id=self.pending[robot]['task_id'],
                                reason='feedback_unavailable' if lost else 'closed_edge', observed_ns=sent_ns,
                                stop_request_id=request_id)
                if not lost:
                    pose = segment.points[self.sample_index(segment, self.tick)]
                    self.confirm_stop(self.stationary_sample(robot, pose), request_id)
            if blocked and not lost and segment.backing_from is None and segment.stopped_tick > segment.start_tick:
                self.start_retreat(robot, segment)
                continue
            if (blocked and not lost and segment.backing_from is None
                    and segment.stopped_tick == segment.start_tick and not segment.yielding):
                # A vehicle still confirmed at the segment origin can relinquish
                # the route; other vehicles retain their independent claims.
                start = self.positions[robot]
                goal = self.pending[robot]['goal']
                nodes, occupied, forbidden = self.resources(robot)
                forbidden.update(self.full_zone_entries(robot, self.zone_usage()))
                protected, protected_edges = self.recovery_corridor(exclude=self.recovery_group(robot))
                occupied.update(protected)
                forbidden.update(protected_edges)
                try:
                    alternate = tuple(next_segment(self.graph, start, goal, self.stops.waiting_points,
                                                   nodes, (), forbidden, closed_edges=self.closed_edges,
                                                   **self.geometry_options(robot, goal)))
                    _, footprint, _, _ = self.robot_segment(robot, alternate)
                except RouteError:
                    continue
                if footprint.isdisjoint(occupied):
                    self.launch(robot, alternate, footprint)
                    self.stats['alternate_paths'] += 1
                    self.fleet.emit('traffic_reroute', robot=robot,
                                    task_id=self.pending[robot]['task_id'], route=list(alternate))
                continue
            if not blocked and segment.stopped_tick is not None:
                paused_ticks = self.tick - 1 - segment.stopped_tick
                segment.start_tick += paused_ticks
                segment.end_tick += paused_ticks
                segment.stopped_tick = None
                self.fleet.emit('traffic_protective_resume', robot=robot,
                                task_id=self.pending[robot]['task_id'])

    def finish_segments(self):
        feedback = []
        for robot, segment in list(self.active.items()):
            if segment.stopped_tick is not None or segment.end_tick > self.tick:
                continue
            group = self.recovery_group(robot) if segment.yielding else None
            plan = self.recovery_plans.get(group)
            if segment.yielding and (not plan or (plan[0].robot, plan[0].nodes) != (robot, segment.nodes)):
                raise ValueError('死锁恢复步骤与通行授权不一致')
            if segment.grant_id:
                endpoint = segment.points[0 if segment.backing_from is not None else -1]
                sample_at = segment.points[self.sample_index(segment, self.tick)]
                proof = self.stationary_sample(robot, sample_at)
                ref = ExecutionRef.from_dispatch(self.pending[robot], self.vehicle_epoch)
                arrival = SegmentArrival(ref, segment.grant_id, proof)
                if not arrival.confirms(ref, segment.grant_id, endpoint):
                    raise ValueError('仿真到站证明与授权段不一致')
            profile = self.fleet.robots[robot].performance
            job = self.fleet.jobs[self.fleet.robots[robot].job]
            consumption = profile.get('loaded_soc_per_m' if job.loaded else 'empty_soc_per_m', .0001)
            if segment.backing_from is not None:
                del self.active[robot]
                self.headings[robot] = segment.points[0][2]
                traveled = segment.length * segment.backing_from / (len(segment.points) - 1)
                self.soc[robot] = max(0., self.soc[robot] - traveled * consumption * 2)
                self.stats['safe_retreats'] += 1
                self.fleet.emit('traffic_retreat_confirmed', robot=robot, station=self.positions[robot])
                continue
            self.positions[robot] = segment.nodes[-1]
            self.headings[robot] = segment.points[-1][2]
            self.soc[robot] = max(0., self.soc[robot] - segment.length * consumption)
            del self.active[robot]
            command = self.pending[robot]
            if plan:
                self.stats['recovery_steps'] += 1
                plan.pop(0)
                if not plan:
                    self.fleet.emit('traffic_deadlock_resolved', robots=list(group))
                    del self.recovery_plans[group]
                    self.stats['resolved_cycles'] += 1
            if segment.nodes[-1] == command['goal']:
                feedback.append(self.acknowledge(command, 'arrived', station=command['goal']))
                del self.pending[robot]
            else:
                self.fleet.emit('segment_released', robot=robot, task_id=command['task_id'],
                                station=segment.nodes[-1])
        return feedback

    def attempt_recovery(self, zones):
        recovering = self.recovery_members
        cycles = [tuple(cycle) for cycle in wait_cycles(self.waiting) if recovering.isdisjoint(cycle)]
        self.recovery_attempts = {cycle: previous for cycle, previous in self.recovery_attempts.items()
                                  if cycle in cycles}
        cycles.sort(key=lambda cycle: (self.recovery_attempts.get(cycle, (None, None, -1))[2], cycle))
        protected, protected_edges = self.recovery_corridor()
        for cycle in cycles:
            if not all(n in self.pending and n not in self.active and n not in self.feedback_unavailable for n in cycle):
                continue
            nodes, cells, _ = self.resources(cycle[0], cycle)
            cells.update(protected)
            constraints = tuple((frozenset(stations), frozenset(entries), len(users.difference(cycle)), capacity)
                                for stations, entries, users, capacity in zones.values())

            def entry_exclusions(positions, robot):
                return {edge for stations, entries, outsiders, capacity in constraints
                        if positions[robot] not in stations
                        and outsiders + sum(station in stations for station in positions.values()) >= capacity
                        for edge in entries}

            vehicles = []
            for n in cycle:
                station = self.positions[n]
                job = self.fleet.jobs[self.fleet.robots[n].job]
                vehicles.append(CycleVehicle(n, station, self.pending[n]['goal'],
                                             job.id if job.loaded else None,
                                             self.parked_for(n, station), self.xy(station),
                                             self.yaw_at(n, station) if self.shape_for(n) else None))
            inputs = (tuple(vehicles), frozenset(self.closed_edges), frozenset(nodes), frozenset(cells),
                      protected_edges, constraints,
                      tuple(tuple(sorted(self.waiting[name]['blockers'])) for name in cycle))
            previous = self.recovery_attempts.get(cycle)
            if previous and previous[0] == inputs and self.tick < previous[1]:
                continue
            moves, status = plan_cycle(self.graph, vehicles, self.stops, nodes,
                                       (), cells, waits=self.waiting, closed_edges=self.closed_edges | protected_edges,
                                       trajectory=self.recovery_trajectory, geometry=self.geometry_options_at,
                                       blocked_by=self.blocked_by if self.forklift_indexed else None,
                                       entry_exclusions=entry_exclusions if constraints else None)
            verdict = {'robots': list(cycle), 'status': status}
            if verdict not in self.recent_cycles:
                self.fleet.emit('traffic_deadlock_planned' if moves else 'traffic_deadlock_held', **verdict)
                self.stats['cycle_' + status] += 1
                self.recent_cycles.append(verdict)
            if moves:
                self.recovery_plans[cycle] = list(moves)
                self.stats['peak_recovery_groups'] = max(self.stats['peak_recovery_groups'], len(self.recovery_plans))
                break
            retry_at = self.tick + 5 if status == 'search_limit' else math.inf
            self.recovery_attempts[cycle] = (inputs, retry_at, self.tick)
            # One search budget per traffic iteration. Other groups get the next
            # turn even when a moving outsider invalidates this group's snapshot.
            break

    def recovery_corridor(self, *, exclude=None):
        footprints = []
        for group, moves in self.recovery_plans.items():
            if group == exclude:
                continue
            for move in moves:
                if move.cells is not None:
                    footprints.append((move.cells, self.blocked_by(move.cells)))
                else:
                    _, cells, _, blocked = self.segment_footprint(move.nodes)
                    footprints.append((cells, blocked))
        return (frozenset().union(*(cells for cells, _ in footprints)),
                frozenset().union(*(blocked for _, blocked in footprints)))

    def launch(self, robot, nodes, cells, yielding=False):
        points, _, length, blocked = self.robot_segment(robot, nodes)
        reverse = bool(self.shape_for(robot) and nodes[:2] in self.graph.reverse_edges)
        grant = self.motion_grant(robot, points, length, reversing=reverse)
        job = self.fleet.jobs[self.fleet.robots[robot].job]
        if self.shape_for(robot) and job.kind == 'transport' and job.index == 0 and nodes[-1] == job.goals[0]:
            self.pickup_guards[robot] = job.id
        reference_speed = self.fleet.policy['loaded_speed_mps' if job.loaded else 'empty_speed_mps']
        tick_seconds = self.modeled_tick_seconds or 12 / reference_speed
        meters_per_tick = tick_seconds * grant.max_speed_mps
        self.active[robot] = Segment(nodes, cells, points, length, self.tick,
                                     self.tick + max(1, math.ceil(length / meters_per_tick)), yielding,
                                     grant_id=grant.grant_id, grant_sequence=grant.grant_sequence,
                                     blocked_edges=blocked, drive_reverse=reverse)
        self.last_routes.setdefault(self.pending[robot]['task_id'], []).append(list(nodes))
        self.stats['segments'] += 1
        self.waiting.pop(robot, None)
        self.wait_since.pop(robot, None)

    def claims(self):
        self.prepare_forklift_geometry()
        nodes, cells, blocks = Counter(), set(), Counter()
        for robot, station in self.positions.items():
            active = self.active.get(robot)
            footprint = active.cells if active else self.parked_for(robot, station)
            self.overlap_cells += len(cells.intersection(footprint))
            cells.update(footprint)
            nodes.update(active.nodes if active else (station,))
            blocks.update(self.segment_blocks(active) if active else self.parking_blocks(robot, station, footprint))
        if self.overlap_cells:
            raise RuntimeError('轻量仿真检测到车辆通行占位重叠')
        return nodes, cells, blocks

    def forecast_traffic(self, zones=None):
        demand = Counter(tuple(wait['edge']) for wait in self.waiting.values() if wait.get('edge'))
        delays = {edge: min(30., (count - 1) * 2.) for edge, count in demand.items() if count >= 2}
        for stations, entries, users, capacity in (zones if zones is not None else self.zone_usage()).values():
            waiting = sum(demand[edge] for edge in entries)
            free = capacity - len(users)
            if free > waiting:
                continue
            departures = [max(0, self.active[robot].end_tick - self.tick)
                          for robot in users if robot in self.active
                          and self.active[robot].nodes[-1] not in stations
                          and self.active[robot].stopped_tick is None
                          and robot not in self.feedback_unavailable]
            first_release = min(departures, default=4)
            # Entry edges share the same bottleneck. A forecast changes route cost
            # while the occupancy gate still controls the actual grants.
            zone_delay = min(30., max(2., first_release * 2.) + 2. * max(0, waiting - max(0, free)))
            for edge in entries:
                delays[edge] = max(zone_delay, delays.get(edge, 0.))
        self.fleet.edge_wait_s = delays
        speed = self.fleet.policy['empty_speed_mps']
        return {edge: seconds * speed for edge, seconds in self.fleet.edge_wait_s.items()}

    def configure(self, request):
        operation = request['operation']
        if operation == 'set_rolling_admission':
            if type(request.get('enabled')) is not bool:
                raise ValueError('滚动放行开关须为布尔值')
            self.rolling_admission = request['enabled']
        elif operation == 'set_vehicle_profile':
            self.service.request(request, self.tick)
        elif operation == 'set_traffic_zone':
            name, stations, capacity = request.get('zone'), request.get('stations'), request.get('capacity')
            if not isinstance(name, str) or not name.strip() or len(name) > 64:
                raise ValueError('请输入区域名称')
            if stations == []:
                self.traffic_zones.pop(name, None)
                return
            if (not isinstance(stations, list) or not stations or len(stations) > 200
                    or any(not isinstance(station, str) or station not in self.graph.stations for station in stations)
                    or type(capacity) is not int or not 1 <= capacity <= len(self.positions)):
                raise ValueError('限流区需要有效站点和 1 至车队规模的容量')
            self.traffic_zones[name] = {'stations': sorted(set(stations)), 'capacity': capacity}
        elif operation == 'set_feedback_profile':
            if request.get('event') not in ('arrived', 'handling_done'):
                raise ValueError('仅支持模拟到站和装卸回执')
            kind, profile = request['event'], request.get('profile')
            if profile is None:
                self.feedback_profile.pop(kind, None)
                return
            timings = {'delay_ticks': 0, 'retry_ticks': 0, 'duplicate_delay_ticks': 0}
            if (not isinstance(profile, dict) or set(profile) - timings.keys()
                    or any(type(value) is not int or not 0 <= value <= 60 for value in profile.values())):
                raise ValueError('回执延时、首次丢失后的重试间隔和重复回执延时须为 0 至 60 个节拍')
            self.feedback_profile[kind] = {**timings, **profile}

    def zone_usage(self):
        configured = {}
        for name, zone in self.traffic_zones.items():
            stations = set(zone['stations'])
            entries = {edge for edge in self.graph.edges if edge[0] not in stations and edge[1] in stations}
            users = {robot for robot, station in self.positions.items()
                     if station in stations or (robot in self.active and stations.intersection(self.active[robot].nodes))}
            configured[name] = stations, entries, users, zone['capacity']
        return configured

    @staticmethod
    def full_zone_entries(robot, zones):
        return {edge for _, entries, users, capacity in zones.values()
                if robot not in users and len(users) >= capacity for edge in entries}

    def authorize(self, *, zones=None, penalties=None):
        feedback = []
        if zones is None:
            zones = self.zone_usage()
        self.attempt_recovery(zones)
        node_usage, occupied, edge_usage = self.claims()
        if penalties is None:
            penalties = self.forecast_traffic(zones)
        corridors = {group: self.recovery_corridor(exclude=group) for group in (None, *self.recovery_plans)}
        for robot, command in sorted(self.pending.items(), key=lambda item: traffic_order(
                item[1].get('priority', 0), self.wait_since.get(item[0]), self.tick, 120)):
            if robot in self.active or robot in self.feedback_unavailable:
                continue
            group = self.recovery_group(robot)
            step = self.recovery_plans[group][0] if group else None
            if step and step.robot != robot:
                continue
            start, goal = self.positions[robot], command['goal']
            own_cells = self.parked_for(robot, start)
            own_blocks = self.parking_blocks(robot, start, own_cells)
            if start == goal:
                job = self.fleet.jobs[self.fleet.robots[robot].job]
                if self.shape_for(robot) and job.kind == 'transport' and job.index == 0 and goal == job.goals[0]:
                    loaded = own_cells | self._parked_geometry(
                        start, self.shape_for(robot, force_loaded=True), self.yaw_at(robot, start))
                    if not loaded.isdisjoint(occupied - own_cells):
                        blockers = [name for name, station in self.positions.items() if name != robot
                                    and not loaded.isdisjoint(self.active[name].cells if name in self.active
                                                              else self.parked_for(name, station))]
                        self.wait(robot, (), reason='pickup_clearance', extra_blockers=blockers)
                        continue
                    self.pickup_guards[robot] = job.id
                    occupied.update(loaded)
                    edge_usage.subtract(own_blocks)
                    edge_usage.update(self.parking_blocks(robot, start, loaded))
                feedback.append(self.acknowledge(command, 'arrived', station=goal))
                continue
            geometry = self.geometry_options(robot, goal)
            try:
                nominal = self.graph.route(start, goal, forbidden_directed_edges=geometry.get('geometry_edges', ()),
                                           forbidden_turns=geometry.get('forbidden_turns', ()))
            except RouteError:
                self.wait(robot, (), reason='forklift_geometry' if geometry else 'closed_topology')
                continue
            blocked = {edge for edge in edge_usage if edge_usage[edge] > (edge in own_blocks)}
            blocked.update(self.closed_edges)
            full_entries = self.full_zone_entries(robot, zones)
            blocked.update(full_entries)
            protected, protected_edges = corridors[group]
            guard_active = bool(protected or protected_edges)
            if guard_active:
                blocked.update(protected_edges)
            nodes = set(node_usage) - {start} if node_usage[start] == 1 else set(node_usage)
            try:
                path = (step.nodes if step else tuple(next_segment(
                    self.graph, start, goal, self.stops.waiting_points, nodes, (), blocked,
                    penalties=penalties, closed_edges=self.closed_edges, **geometry)))
                if path[0] != start or any(edge in blocked for edge in zip(path, path[1:])):
                    raise RouteError('route no longer available')
                _, cells, _, path_blocks = self.robot_segment(robot, path)
                if not cells.isdisjoint(occupied - own_cells):
                    raise RouteError('swept area is occupied')
                if guard_active and not cells.isdisjoint(protected):
                    raise RouteError('recovery corridor awaits release')
            except RouteError:
                if step:
                    del self.recovery_plans[group]
                    self.fleet.emit('traffic_deadlock_replan', robots=list(group), reason='reservation_changed')
                witness = nominal
                if not self.closed_edges.isdisjoint(zip(nominal, nominal[1:])):
                    try:
                        if geometry:
                            witness = self.graph.route(
                                start, goal, forbidden_directed_edges=self.closed_edges | geometry['geometry_edges'],
                                forbidden_turns=geometry['forbidden_turns'])
                        else:
                            witness, _ = self.graph.bid_route(start, goal, self.closed_edges)
                    except RouteError:
                        self.wait(robot, (), reason='closed_topology')
                        continue
                edges = set(zip(witness, witness[1:]))
                if full_entries.intersection(edges):
                    blockers = set()
                    for _, entries, users, capacity in zones.values():
                        if robot not in users and len(users) >= capacity and edges.intersection(entries):
                            blockers.update(users)
                    self.wait(robot, witness, reason='zone_capacity', extra_blockers=blockers)
                    self.stats['zone_capacity_waits'] += 1
                elif guard_active and protected_edges.intersection(edges):
                    self.wait(robot, witness, reason='recovery_corridor')
                    self.stats['recovery_corridor_waits'] += 1
                else:
                    self.wait(robot, witness)
                continue
            if not step and path != tuple(nominal[:len(path)]):
                self.stats['alternate_paths'] += 1
                if not self.closed_edges.isdisjoint(zip(nominal, nominal[1:])):
                    self.stats['closure_alternate_paths'] += 1
                self.fleet.emit('traffic_reroute', robot=robot, task_id=command['task_id'], route=list(path))
            self.launch(robot, path, cells, bool(step))
            for stations, _, users, _ in zones.values():
                if stations.intersection(path):
                    users.add(robot)
            occupied.difference_update(own_cells)
            occupied.update(cells)
            node_usage.subtract((start,))
            node_usage.update(path)
            edge_usage.subtract(own_blocks)
            edge_usage.update(path_blocks)
        for event in feedback:
            del self.pending[event['robot']]
            self.waiting.pop(event['robot'], None)
            self.wait_since.pop(event['robot'], None)
        return feedback

    def poses(self):
        result = {}
        for name, station in self.positions.items():
            segment = self.active.get(name)
            if segment:
                result[name] = segment.points[self.sample_index(segment, self.tick)]
            else:
                yaw = self.yaw_at(name, station) if self.shape_for(name) else None
                result[name] = (*self.xy(station), float(yaw) if yaw is not None else 0.)
        return result

    def confirm_pre_pickup_abort(self, robot, *, stopped):
        """Reconcile a confirmed navigation abort before handling began."""
        command = self.pending.get(robot)
        if not command or stopped is not True or robot in self.feedback_unavailable:
            return False
        segment = self.active.get(robot)
        if segment and (segment.start_tick != self.tick or segment.yielding):
            return False
        job = self.fleet.jobs[self.fleet.robots[robot].job]
        if job.kind != 'transport' or job.state != 'EXECUTING' or job.index != 0 or job.loaded:
            return False
        station = self.positions[robot]
        pose = self.xy(station)
        # A confirmed stopped vehicle at the pickup bay still occupies that bay.
        if math.dist(pose, self.xy(job.goals[0])) <= PARKING_RADIUS:
            return False
        loads = {record['location']: cargo for cargo, record in self.cargo.items()
                 if record['location'] in self.positions}
        actions = {'cargo': self.cargo, 'loads': loads, 'records': []}
        if not self.service.cargo_at_source(job, actions):
            return False
        self.service.route_event(self.acknowledge(command, 'failed',
                                                  reason='confirmed pre-pickup navigation abort'), self.tick)
        self.active.pop(robot, None)
        del self.pending[robot]
        self.waiting.pop(robot, None)
        self.wait_since.pop(robot, None)
        executor = {'records': [{'body': command, 'state': 'FAILED'}],
                    'active': list(self.active), 'pending': list(self.pending)}

        def transfer():
            self.service.checked_transfers(executor, actions, {robot: pose})
            return None, [], []

        self.service.apply(transfer)
        return job.state == 'QUEUED'

    def request_loaded_handoff(self, task_id, bay, clearance):
        job = self.fleet.jobs[task_id]
        robot = job.robot
        previous = self.pending.get(robot)
        segment = self.active.get(robot)
        if (job.kind != 'transport' or job.state != 'EXECUTING' or job.index != 1
                or not job.loaded or job.handoff or not previous or robot in self.feedback_unavailable
                or self.fleet.robots[robot].blocked or robot in self.recovery_members
                or (segment and (segment.start_tick != self.tick or segment.yielding))
                or self.cargo.get(job.id, {}).get('location') != robot):
            raise ValueError('需要确认原车已在站点停稳、货物仍在车上且车辆可受控低速撤离')
        if (not bay.startswith('HP_') or not clearance.startswith('PP_')
                or bay in job.goals or bay == clearance or bay in self.fleet.workstations
                or clearance in self.fleet.destinations or clearance in self.fleet.workstations
                or any(record['location'] == bay for record in self.cargo.values())):
            raise ValueError('请选择空闲的 HP_ 交接点和 PP_ 隔离停车位')
        self.stops.validate_destinations([bay, clearance, self.positions[robot]])
        _, occupied, _ = self.resources(robot)
        shape = self.shape_for(robot)
        empty = forklift_footprint(self.fleet.robots[robot].model)
        bay_cells = self._parked_geometry(bay, shape, None) if shape else self.parked[bay]
        clearance_cells = self._parked_geometry(clearance, empty, None) if empty else self.parked[clearance]
        if (not bay_cells.isdisjoint(occupied) or not clearance_cells.isdisjoint(occupied)
                or not bay_cells.isdisjoint(clearance_cells)):
            raise ValueError('交接点或隔离位未清空，或两者停车占位相交')
        start = self.positions[robot]
        for origin, goal, profile in ((start, bay, shape), (bay, clearance, empty), (bay, job.goals[-1], shape)):
            edges, turns = self.graph.footprint_restrictions(profile)
            self.graph.route(origin, goal, forbidden_directed_edges=self.closed_edges | edges, forbidden_turns=turns)
        command = self.service.redirect_loaded_handoff(job, previous, bay, clearance)
        self.active.pop(robot, None)
        self.pending[robot] = command
        self.waiting.pop(robot, None)
        self.wait_since.pop(robot, None)
        self.service.published(command)
        self.fleet.emit('sim_command_received', task_id=job.id, execution_id=command['task_id'],
                        robot=robot, observed_ns=time.perf_counter_ns())

    def handle_cargo(self, command):
        action = HandlingCommand.from_dispatch(command, self.vehicle_epoch)
        robot, goal, cargo_id = action.ref.vehicle.robot, action.station, action.cargo_id
        resource = self.cargo.get(cargo_id)
        pickup = action.kind == 'pickup'
        if (self.positions[robot] != goal or not resource
                or resource['location'] != (goal if pickup else robot)):
            return self.acknowledge(command, 'handling_failed', reason='未核对到作业位置或指定货物')
        job = self.fleet.jobs[self.fleet.robots[robot].job]
        if pickup and self.shape_for(robot):
            loaded = self._parked_geometry(goal, self.shape_for(robot, force_loaded=True), self.yaw_at(robot, goal))
            if not loaded.isdisjoint(self.resources(robot)[1]):
                return self.acknowledge(command, 'handling_failed', reason='取货后车身和托盘占位与已授权区域相交')
        resource['location'] = robot if pickup else goal
        if pickup and job.requirements.get('pallet'):
            resource['pallet'] = job.requirements['pallet']
        self.pickup_guards.pop(robot, None)
        if not pickup and job.handoff.get('phase') == 'to_bay':
            resource['origin'] = goal
        return self.acknowledge(command, 'handling_done', station=goal, loaded=pickup, cargo_id=cargo_id)

    def ready_handling_feedback(self):
        feedback = []
        for robot, record in list(self.pending_handling.items()):
            if self.tick < record['due'] or robot in self.feedback_unavailable:
                continue
            del self.pending_handling[robot]
            command = record['command']
            job = self.fleet.jobs.get(self.fleet.robots[robot].job)
            if job and job.execution_id == command['task_id'] and job.state == 'HANDLING':
                feedback.append(self.handle_cargo(command))
        return feedback

    def restore_feedback(self, robot, pose, *, stopped):
        if robot not in self.feedback_unavailable or stopped is not True:
            return False
        try:
            sample = self.stationary_sample(robot, pose)
        except (ValueError, TypeError):
            return False
        request_id = self.stop_requests.get(robot, (None, None))[0]
        return self.reconcile_vehicle(sample, request_id)

    def reconcile_vehicle(self, sample, request_id=None):
        robot = sample.vehicle.robot
        if (robot not in self.feedback_unavailable or sample.sequence != self.tick or sample.vehicle != VehicleIdentity(
                robot, self.service.map_name, self.vehicle_epoch) or not sample.localization_valid or not sample.stopped):
            return False
        pending = self.pending.get(robot, {})
        if sample.active_command_id != pending.get('command_id'):
            return False
        segment = self.active.get(robot)
        if segment and segment.stopped_tick is None:
            return False
        expected_cargo = next((cargo_id for cargo_id, record in self.cargo.items() if record['location'] == robot), None)
        if (sample.active_grant_id != (segment.grant_id if segment else None)
                or not sample.cargo_verified or sample.cargo_id != expected_cargo):
            return False
        expected = self.poses()[robot]
        pose = sample.pose
        heading_error = abs(math.remainder(pose[2] - expected[2], math.tau))
        if math.dist(pose[:2], expected[:2]) > .05 or heading_error > .1:
            return False
        if robot in self.stop_requests and not self.confirm_stop(sample, request_id):
            return False
        self.feedback_unavailable.remove(robot)
        self.fleet.emit('traffic_feedback_reconciled', robot=robot)
        return True

    def held_jobs(self):
        # Release the next admission window near the end of the preceding workload.
        terminal = {'DONE', 'FAILED', 'CANCELLED'}
        while len(self.dispatch_batches) > 1:
            outstanding = sum(self.fleet.jobs[job].state not in terminal for job in self.dispatch_batches[0])
            if outstanding > 1:
                break
            self.dispatch_batches.pop(0)
            self.fleet.emit('batch_dispatch_released', prior_outstanding=outstanding)
        # A burst-control window must not indefinitely hide urgent or aged jobs
        # from the scheduler. Work already assigned retains existing authority.
        return {task_id for batch in self.dispatch_batches[1:] for task_id in batch
                if self.fleet.scheduling_priority(self.fleet.jobs[task_id], self.tick)[0] > 2}

    def relay_feedback(self, feedback):
        ready = []
        for event in feedback:
            if not self.current_vehicle_feedback(event):
                continue
            profile = self.feedback_profile.get(event['event'])
            if not profile:
                ready.append(event)
                continue
            due = self.tick + profile['delay_ticks'] + profile['retry_ticks']
            if profile['retry_ticks']:
                self.stats['feedback_retries'] += 1
                self.fleet.emit('sim_feedback_retry_scheduled', robot=event['robot'], command_id=event['command_id'])
            self.feedback_queue.append({'due': due, 'event': event})
            if profile['duplicate_delay_ticks']:
                self.feedback_queue.append({'due': due + profile['duplicate_delay_ticks'], 'event': event,
                                            'duplicate': True})
        pending = []
        for record in self.feedback_queue:
            event = record['event']
            if not self.current_vehicle_feedback(event):
                continue
            if record['due'] > self.tick or event['robot'] in self.feedback_unavailable:
                pending.append(record)
                continue
            ready.append(event)
            if record.get('duplicate'):
                self.stats['duplicate_feedback_delivered'] += 1
        if ready:
            self.service.route_events(ready, self.tick)
        self.feedback_queue = pending

    def current_vehicle_feedback(self, event):
        if (event.get('map_name') == self.service.map_name and event.get('vehicle_epoch') == self.vehicle_epoch
                and event.get('robot') in self.positions):
            return True
        self.stats['invalid_vehicle_feedback'] += 1
        return False

    def step(self):
        self.tick += 1
        self.hold_blocked_segments()
        feedback = self.finish_segments()
        for name, station in self.positions.items():
            if name in self.feedback_unavailable:
                continue
            robot = self.fleet.robots[name]
            job = self.fleet.jobs.get(robot.job)
            if job and job.state == 'CHARGING':
                gain = self.charge_gain_per_tick.get(station, .23)
                self.soc[name] = min(.95, self.soc[name] + gain)
            self.fleet.update(name, station, self.soc[name], self.tick)
        if self.pending_handling:
            feedback.extend(self.ready_handling_feedback())
        self.relay_feedback(feedback)
        self.fleet.reserved_cells = frozenset().union(*(segment.cells for segment in self.active.values()))
        self.fleet.waiting_robots = set(self.waiting)
        self.fleet.set_dispatch_closures(self.closed_edges)
        self.fleet.route_headings = self.headings.copy()
        self.fleet.route_no_stop_stations = self.stops.no_stop_stations
        self.fleet.charge_homes = self.homes
        self.fleet.charge_closed_edges = frozenset(self.closed_edges)
        zones = self.zone_usage()
        penalties = self.forecast_traffic(zones)
        fleet_has_work = any(job.state not in ('DONE', 'FAILED', 'CANCELLED') for job in self.fleet.jobs.values())
        if fleet_has_work or min(self.soc.values()) < max(self.fleet.low_soc, self.fleet.policy['target_soc']):
            if self.rolling_admission:
                eligible = next_window(self.fleet, self.pending, self.positions, zones, self.tick)
            else:
                held = self.held_jobs()
                eligible = set(self.fleet.jobs) - held if held else None
            # Keep the last stopped pose for traffic. Untrusted pose samples
            # cannot release workstations or update charger occupation.
            positions = {name: pose for name, pose in self.poses().items()
                         if name not in self.feedback_unavailable}
            commands = self.service.tick(self.tick, positions=positions,
                                         eligible=eligible,
                                         feedback_unavailable=self.feedback_unavailable)
            if self.fleet.charge_waiting and not self.fleet.dispatch_paused:
                homes = {name: home for name, home in self.homes.items() if name not in self.feedback_unavailable}
                self.service.queue_returns(homes, self.tick, charging_only=True)
            if self.rolling_admission and not self.fleet.dispatch_paused:
                parking = parking_for_idle_workstations(self.fleet, self.positions, self.homes,
                                                         self.feedback_unavailable)
                if parking:
                    self.service.queue_returns(parking, self.tick)
        else:
            commands = ()
        feedback = []
        for command in commands:
            self.service.published(command)
            robot = command['robot']
            if command.get('action'):
                handling_seconds = self.fleet.vehicle_costs(self.fleet.robots[robot])[4]
                if self.modeled_tick_seconds is not None and handling_seconds > 0:
                    delay = math.ceil(handling_seconds / self.modeled_tick_seconds)
                    self.pending_handling[robot] = {'command': command, 'due': self.tick + delay}
                else:
                    feedback.append(self.handle_cargo(command))
            else:
                job = self.fleet.jobs[self.fleet.robots[robot].job]
                if job.kind == 'transport':
                    self.cargo.setdefault(job.id, {'location': job.goals[0], 'origin': job.goals[0]})
                self.pending[robot] = command
                self.fleet.emit('sim_command_received', task_id=job.id, execution_id=command['task_id'],
                                robot=robot, observed_ns=time.perf_counter_ns())
        feedback.extend(self.authorize(zones=zones, penalties=penalties))
        self.relay_feedback(feedback)
        moving = sum(segment.stopped_tick is None for segment in self.active.values())
        self.stats['peak_moving'] = max(self.stats['peak_moving'], moving)
        self.stats['peak_waiting'] = max(self.stats['peak_waiting'], len(self.waiting))
        self.stats['peak_charge_waiting'] = max(self.stats['peak_charge_waiting'], len(self.fleet.charge_waiting))
