"""Lightweight simulator behind the existing simulation console API."""
from collections import Counter
import json
from pathlib import Path
import sys
import threading
import time
import uuid

WORKSPACE = Path(__file__).resolve().parents[2]
ROS_SOURCE = WORKSPACE / 'warehouse_dispatch_ws_20261104/src/warehouse_sim'
sys.path.insert(0, str(ROS_SOURCE))
sys.path.insert(0, str(WORKSPACE))

from warehouse_sim.cycle_recovery import PARKING_RADIUS
from warehouse_sim.durable_dispatch import DurabilityError, DurableDispatch
from warehouse_sim.fleet_core import Fleet, Job, Robot
from warehouse_sim.layout import HEIGHT, WIDTH, obstacle_rectangles
from warehouse_sim.lightweight_execution import LightweightExecution
from warehouse_sim.route_graph import RouteGraph, occupied_cells
from warehouse_sim.shared_warehouse import ScenarioConditions, shared_warehouse
from warehouse_sim.cross_warehouse import cross_warehouse, prepare_forklifts
from warehouse_sim.traffic_policy import TrafficStops
from warehouse_sim.web_requests import validate_request

from sim.fleet import OPERATIONS

TERMINAL = frozenset({'DONE', 'FAILED', 'CANCELLED'})
SOURCE = 'LIVE_LIGHTWEIGHT_SIMULATION'


class CheckpointDispatch(DurableDispatch):
    """Resume only the authoritative in-process simulator at a complete boundary."""

    restored_runtime = None

    def restore(self, saved, now):
        checkpoint = saved.get('traffic', {}).get('clean_sim_checkpoint')
        if not checkpoint or checkpoint.get('revision') != self.revision:
            raise ValueError('仿真上次未完成正常停止且没有最新一致检查点；保留日志，请使用独立运行库')
        super().restore(saved, now)
        runtime = checkpoint['execution']
        state = saved['fleet']
        self.fleet.jobs = {key: Job(**value) for key, value in state['jobs'].items()}
        self.fleet.robots = {key: Robot(**value) for key, value in state['robots'].items()}
        self.fleet.charge_wait_started = state.get('charge_wait_started', {})
        self.fleet.last_idle_topup = state.get('last_idle_topup')
        self.fleet.policy_updated_at = -1e30
        self.fleet.dispatch_paused = state['dispatch_paused']
        self.fleet.events = [json.loads(row[0]) for row in self.journal.db.execute('SELECT body FROM audit ORDER BY seq')]
        self.event_cursor = len(self.fleet.events)
        self.fleet.emit('sim_checkpoint_restored', tick=runtime['tick'])
        self.restored_runtime = checkpoint
        self.traffic.pop('clean_sim_checkpoint')
        self.fenced = False


class LightweightFleet:
    lightweight = True
    address = None

    def __init__(self, storage, session_dir, size=None, *, background=True, resume_db=None, benchmark_seed=None):
        self.lock = threading.RLock()
        self.storage = storage
        self.connection_id = uuid.uuid4().hex
        self.session = uuid.uuid4().hex
        self.stop = threading.Event()
        self.thread = None
        self.failure = None
        self.size = size
        self.resume_db = resume_db
        self.benchmark_seed = benchmark_seed
        self.batches = None
        self.configured_stops = None
        self.conditions = None
        if benchmark_seed is not None:
            if size != 100:
                raise ValueError('跨区叉车联测仅使用百台规模')
            base, positions, self.configured_stops, self.batches = cross_warehouse(benchmark_seed)
        elif size:
            base, positions, self.configured_stops, self.batches = shared_warehouse(size)
        else:
            path = ROS_SOURCE / 'maps/warehouse.smap'
            base = json.loads(path.read_text(encoding='utf-8-sig'))
            positions = {f'SIM-{index+1:03d}': f'CP_{6*(index+1):02d}' for index in range(4)}
        self.initial_positions = positions
        self.base_header = base['header']
        self.base_background = base.get('normalPosList')
        self.bounds = tuple(max(p['pos'][axis] for p in base['advancedPointList']) + 8 for axis in ('x', 'y'))
        scenario = (f'forklift-cross-100-{benchmark_seed}' if benchmark_seed is not None
                    else f'shared-{size}' if size else 'warehouse_v2')
        with storage.db:
            state = storage.state()
            if state.get('lightweight_scenario', scenario) != scenario:
                raise ValueError('数据库属于另一轻量场景，请使用独立数据库')
            state['lightweight_scenario'] = scenario
            storage.store_state(state)
        state = storage.state()
        self.map_id = state['map_id']
        if self.map_id is None:
            self.map_id = storage.add_map(base)['id']
        else:
            root = storage.map(self.map_id, raw=True)
            self.validate_frame(root)
        graph, stops = self.prepare(storage.map(self.map_id, raw=True))
        self.validate_spawn(graph)
        service_type = CheckpointDispatch if resume_db is not None else DurableDispatch
        try:
            service = service_type(Fleet(graph, positions, feedback_handling=True, diagnostic_bids=8),
                                   resume_db or session_dir / (self.session + '.sqlite3'),
                                   self.version(self.map_id), threaded=True)
        except DurabilityError as error:
            raise ValueError(str(error)) from error
        try:
            self.execution = LightweightExecution(service, positions, stops)
            if size and benchmark_seed is None:
                self.conditions = ScenarioConditions(self.execution)
            checkpoint = getattr(service, 'restored_runtime', None)
            if checkpoint:
                self.execution.restore_checkpoint(checkpoint['execution'])
                if self.conditions:
                    self.conditions.bay_open_at = checkpoint['bay_open_at']
            else:
                if benchmark_seed is not None:
                    prepare_forklifts(self.execution)
                for robot, station in self.execution.positions.items():
                    service.fleet.update(robot, station, self.execution.soc[robot], self.execution.tick)
        except Exception:
            service.close()
            raise
        if background:
            self.thread = threading.Thread(target=self.run, name='lightweight-simulation', daemon=True)
            self.thread.start()

    @staticmethod
    def version(map_id):
        return f'map-{map_id}'

    def prepare(self, document):
        if self.size:
            width, height = self.bounds
            graph = RouteGraph(document=document, clearance=lambda x, y: 0 <= x <= width and 0 <= y <= height)
            stops = self.configured_stops
            if stops.yield_bays - set(graph.stations):
                raise ValueError('新版缺少联测场景的避让站点')
        else:
            graph = RouteGraph(document=document)
            stops = TrafficStops.load(graph.stations)
        if not graph.edges:
            raise ValueError('运行路网须包含有效的有向曲线路径')
        if document.get('advancedLineList'):
            raise ValueError('当前运行路网要求路径使用 SMAP 曲线格式')
        return graph, stops

    def validate_spawn(self, graph):
        cells = set()
        for station in self.initial_positions.values():
            if not graph.adj.get(station):
                raise ValueError(f'新版缺少启动站点 {station} 或该站点没有出口')
            point = graph.stations[station]['pos']
            footprint = occupied_cells([(point['x'], point['y'])], radius=PARKING_RADIUS)
            if not cells.isdisjoint(footprint):
                raise ValueError(f'启动站点 {station} 的车辆占位重叠')
            cells.update(footprint)

    def validate_frame(self, document):
        for field in ('mapType', 'resolution', 'minPos', 'maxPos'):
            if document['header'].get(field) != self.base_header.get(field):
                raise ValueError('请在同一坐标系编辑当前仿真地图')
        if document.get('normalPosList') != self.base_background:
            raise ValueError('当前换图支持同一仿真场景内修改路网')

    def configuration(self):
        return {'url': '', 'connection': self.connection_id, 'source': SOURCE}

    def config(self):
        return self.configuration()

    def configure(self, url):
        raise ValueError('当前运行内置轻量仿真，连接 Gazebo 请使用独立的仿真启动方式')

    def run(self):
        while not self.stop.wait(.25):
            try:
                self.step()
            except Exception as error:
                with self.lock:
                    self.failure = str(error)
                return

    def step(self):
        with self.lock:
            self.execution.step()
            if self.conditions:
                self.conditions.step(self.execution)
            if self.resume_db is not None:
                self.save_checkpoint()

    def save_checkpoint(self):
        engine = self.execution
        engine.service.traffic['clean_sim_checkpoint'] = {
            'revision': engine.service.revision + 1,
            'execution': engine.checkpoint(),
            'bay_open_at': self.conditions.bay_open_at if self.conditions else None,
        }
        engine.service.checkpoint()

    def close(self):
        self.stop.set()
        if self.thread:
            self.thread.join()
        with self.lock:
            engine = self.execution
            try:
                if self.resume_db is not None and not (self.failure or engine.service.failed):
                    self.save_checkpoint()
            finally:
                engine.service.close()

    def check_idle(self):
        engine = self.execution
        if self.failure or engine.service.failed:
            raise ValueError('仿真执行端故障，请先核对状态')
        if (engine.active or engine.pending or engine.recovery or engine.feedback_unavailable or engine.feedback_queue
                or any(job.state not in TERMINAL for job in engine.fleet.jobs.values())
                or any(robot.job or robot.blocked for robot in engine.fleet.robots.values())):
            raise ValueError('请先结束运行、排队和充电任务，确认车辆停稳后再应用')

    def apply_map(self, map_id):
        with self.lock, self.storage.lock:
            self.check_idle()
            if map_id == self.map_id:
                return {'map_id': map_id}
            document = self.storage.map(map_id, raw=True)
            self.validate_frame(document)
            graph, stops = self.prepare(document)
            old = self.execution
            charger_stations = [station for station in graph.stations if station.startswith('CP_')]
            for robot, station in old.positions.items():
                if station not in graph.stations:
                    raise ValueError(f'新版缺少车辆当前站点 {station}')
                if graph.stations[station]['pos'] != old.graph.stations[station]['pos']:
                    raise ValueError(f'车辆占用站点 {station} 的坐标已改变')
                if not graph.adj[station]:
                    raise ValueError(f'车辆占用站点 {station} 在新版中没有出口')
                shape, heading = old.shape_for(robot), old.yaw_at(robot, station)
                if shape and not any(self.can_reach(graph, station, neighbor, shape, heading, stops.no_stop_stations)
                                     for neighbor, _ in graph.adj[station]):
                    raise ValueError(f'新版无法从 {station} 为 {robot} 提供符合叉车外廓及转向要求的出口')
                if not any(old.fleet.charger_compatible(bay, old.fleet.robots[robot])
                           and self.can_reach(graph, station, bay, shape, heading, stops.no_stop_stations)
                           for bay in charger_stations):
                    raise ValueError(f'车辆 {robot} 从 {station} 无法到达新版的兼容充电位')
            if old.closed_edges - graph.edges.keys():
                raise ValueError('新版缺少联测场景所用的封闭路段')
            if any(set(zone['stations']) - graph.stations.keys() for zone in old.traffic_zones.values()):
                raise ValueError('新版缺少已配置的限流区域站点')
            if old.fleet.charger_profiles.keys() - graph.stations.keys():
                raise ValueError('新版缺少已配置的充电桩')
            charge_policy = old.fleet.workload_charging
            if charge_policy and charge_policy.station_groups.keys() - graph.stations.keys():
                raise ValueError('新版缺少已配置的补能区域站点')
            self.validate_spawn(graph)
            incoming = {end for _, end in graph.edges}
            service_points = {name for name in graph.stations if name.startswith(('AP_', 'HP_'))}
            for station in (service_points | set(stops.yield_bays)):
                if station not in incoming or not graph.adj[station]:
                    raise ValueError(f'作业或避让站点 {station} 必须有入口和出口')
            for station in old.fleet.workstations:
                if (graph.stations.get(station, {}).get('pos') != old.graph.stations[station]['pos']
                        or not graph.adj[station]):
                    raise ValueError(f'新版与仍有预约的工位 {station} 不兼容')
            for record in old.cargo.values():
                station = record['location']
                if (station in old.graph.stations and
                        graph.stations.get(station, {}).get('pos') != old.graph.stations[station]['pos']):
                    raise ValueError(f'不能修改已有货物占用的站点 {station}')
            candidate = LightweightExecution(old.service, old.positions, stops, graph=graph)
            candidate.soc.update(old.soc)
            candidate.homes = dict(old.homes)
            candidate.tick = old.tick
            candidate.headings = {name: pose[2] for name, pose in old.poses().items() if old.shape_for(name)}
            candidate.cargo = {key: dict(record) for key, record in old.cargo.items()}
            candidate.closed_edges.update(old.closed_edges)
            candidate.traffic_zones = dict(old.traffic_zones)
            candidate.rolling_admission = old.rolling_admission
            candidate.modeled_tick_seconds = old.modeled_tick_seconds
            candidate.feedback_profile = dict(old.feedback_profile)
            candidate.charge_gain_per_tick = {name: gain for name, gain in old.charge_gain_per_tick.items()
                                              if name in graph.stations}
            previous_map = old.service.map_name
            old.service.map_name = self.version(map_id)
            try:
                old.service.checkpoint()
                with self.storage.db:
                    state = self.storage.state()
                    state.update(map_id=map_id, preview_map_id=map_id)
                    self.storage.store_state(state)
            except Exception:
                old.service.map_name = previous_map
                try:
                    old.service.checkpoint()
                except Exception:
                    self.failure = '地图回退未确认'
                raise
            # A single executor lock covers admissions, both map pointers and traffic.
            old.fleet.graph = graph
            old.fleet.reserved_cells = frozenset()
            self.execution = candidate
            self.map_id = map_id
            self.session = uuid.uuid4().hex
            old.fleet.emit('map_applied', map_id=map_id)
            return {'map_id': map_id, 'map_name': document['header']['mapName']}

    @staticmethod
    def can_reach(graph, start, goal, shape=None, heading=None, no_stop_stations=frozenset()):
        try:
            graph.vehicle_bid_route(start, goal, shape, (), start_yaw=heading, no_stop_stations=no_stop_stations)
            return True
        except ValueError:
            return False

    def map(self):
        with self.lock:
            graph = self.execution.graph
            width = max(p['pos']['x'] for p in graph.stations.values()) + 8 if self.size else WIDTH
            height = max(p['pos']['y'] for p in graph.stations.values()) + 8 if self.size else HEIGHT
            return {'width': width, 'height': height, 'stations': graph.stations,
                    'paths': [dict(start=a, end=b, points=graph.path_points([a, b])) for a, b in graph.edges],
                    'obstacles': [] if self.size else obstacle_rectangles(),
                    'connection': self.connection_id, 'session': self.session, 'map_id': self.map_id}

    def snapshot(self):
        with self.lock, self.storage.lock:
            engine = self.execution
            state = engine.fleet.snapshot()
            state.update(telemetry={name: {'pose': pose, 'soc': engine.soc[name]}
                                    for name, pose in engine.poses().items()},
                         traffic={'active': {name: {'nodes': segment.nodes, 'protective_stop': segment.stopped_tick is not None,
                                                    'grant_id': segment.grant_id, 'grant_sequence': segment.grant_sequence}
                                                         for name, segment in engine.active.items()},
                                  'waiting': dict(engine.waiting),
                                  'feedback_unavailable': sorted(engine.feedback_unavailable),
                                  'feedback_pending': len(engine.feedback_queue),
                                  'stop_confirmation_pending': sorted(engine.stop_requests),
                                  'zones': {name: {'capacity': capacity, 'users': sorted(users)}
                                            for name, (_, _, users, capacity) in engine.zone_usage().items()},
                                  'deadlock_recovery': list(engine.recent_cycles),
                                  'overlap_cells': engine.overlap_cells},
                         durability={'adapters_ready': not self.failure, 'fenced': bool(self.failure),
                                     'storage_fault': engine.service.failed},
                         execution_adapter={'session': self.session, 'map_name': self.version(self.map_id),
                                            'vehicle_epoch': engine.vehicle_epoch, 'profile': 'simulation'})
            return {**self.configuration(), 'session': self.session, 'map_id': self.map_id,
                    'map_name': self.storage.map(self.map_id)['name'],
                    'state': state, 'source': SOURCE, 'connected': True, 'fresh': not self.failure,
                    'can_command': not self.failure and not engine.service.failed, 'error': self.failure,
                    'handoff_sites': {
                        'bays': sorted(name for name in engine.graph.stations if name.startswith('HP_')),
                        'parking': sorted(name for name in engine.graph.stations if name.startswith('PP_')),
                    },
                    'events': list(engine.fleet.events[-250:]),
                    'simulation': {'scenario_vehicles': self.size, 'tick': engine.tick, 'states': dict(Counter(j.state for j in engine.fleet.jobs.values())),
                                   'traffic': dict(engine.stats)}}

    def command(self, body, *, received_ns=None):
        received_ns = time.perf_counter_ns() if received_ns is None else received_ns
        with self.lock:
            engine = self.execution
            if self.failure or engine.service.failed:
                return 503, {'error': '仿真执行端故障'}
            if body.get('session') != self.session or body.get('connection') != self.connection_id:
                return 409, {'error': '仿真会话或地图已变化，请刷新后提交'}
            payload = body.get('request')
            if not isinstance(payload, dict) or len(json.dumps(payload, ensure_ascii=False).encode()) > 262144:
                return 400, {'error': '请求体须为 256 KiB 以内的 JSON 对象'}
            operation = payload.get('operation')
            simulation_operations = ('set_vehicle_profile', 'set_traffic_zone', 'set_feedback_profile',
                                     'set_rolling_admission')
            if operation is not None and operation not in (*OPERATIONS, 'handoff_loaded', *simulation_operations):
                return 400, {'error': '仿真指令不受支持'}
            try:
                if operation in simulation_operations:
                    engine.configure(payload)
                    if self.resume_db is not None:
                        self.save_checkpoint()
                    return 200, {'event': 'request_accepted', 'task_ids': [], 'assignments': {}}
                if operation == 'handoff_loaded':
                    identity, bay, clearance = (payload.get(key) for key in ('id', 'bay', 'clearance'))
                    if (not isinstance(identity, str) or identity not in engine.fleet.jobs
                            or any(not isinstance(station, str) or station not in engine.graph.stations
                                   for station in (bay, clearance))):
                        raise ValueError('请输入当前会话任务编号、交接点及隔离停车位')
                    engine.request_loaded_handoff(identity, bay, clearance)
                    return 200, {'event': 'request_accepted', 'task_ids': [identity], 'assignments': {}}
                request = validate_request(payload, engine.graph.stations)
                if operation in ('pause', 'resume', 'cancel'):
                    job = engine.fleet.jobs.get(request.get('id'))
                    if job and job.robot and job.state not in {'CHARGING', *TERMINAL}:
                        raise ValueError('轻量仿真中请等待该任务到站完成后再操作')
                if operation == 'recover_execution':
                    raise ValueError('请在原仿真会话查看故障记录')
                tasks = request.get('tasks', [request] if operation is None else [])
                validated = [request['task']] if operation == 'update' else tasks
                for task in validated:
                    goals = [task[key] for key in ('pickup', 'dropoff', 'goal') if key in task]
                    requirements = task.get('requirements', {})
                    if isinstance(requirements, dict) and isinstance(requirements.get('via'), list):
                        goals.extend(station for station in requirements['via'] if isinstance(station, str))
                    if any(goal.startswith('HP_') for goal in goals):
                        raise ValueError('HP_ 站点仅供受控载货交接使用')
                    engine.stops.validate_destinations(goals)
                engine.service.traffic = {'active': list(engine.active),
                                          'waiting': list(engine.waiting)}
                new_ids = {task['id'] for task in tasks} - engine.fleet.jobs.keys()
                engine.fleet.set_dispatch_closures(engine.closed_edges)
                engine.service.request(request, engine.tick, preassign=operation is None,
                                       preassign_batch=engine.rolling_admission,
                                       feedback_unavailable=engine.feedback_unavailable)
                committed_ns = time.perf_counter_ns()
                assignments = {}
                admission = {}
                for task in tasks if operation is None or engine.rolling_admission else ():
                    job = engine.fleet.jobs[task['id']]
                    admission[job.id] = job.admission
                    vehicle = job.robot or job.next_robot
                    if vehicle:
                        assignments[job.id] = {'robot': vehicle, 'pending_execution': job.next_robot is not None}
                        if job.id in new_ids:
                            assignments[job.id]['submission_to_assignment_ms'] = (committed_ns - received_ns) / 1e6
                if self.size and not engine.rolling_admission and operation == 'submit_batch' and new_ids:
                    if engine.dispatch_batches:
                        for id in new_ids:
                            engine.fleet.jobs[id].reason = '等待前批释放通行容量'
                    engine.dispatch_batches.append(new_ids)
                engine.fleet.emit('request_accepted', request_id=request['request_id'],
                                  task_id=request.get('id'))
                return 200, {'event': 'request_accepted', 'request_id': request['request_id'],
                             'task_ids': [task['id'] for task in tasks], 'assignments': assignments,
                             'admission': admission}
            except (ValueError, KeyError, TypeError) as error:
                return 409, {'error': str(error)}
