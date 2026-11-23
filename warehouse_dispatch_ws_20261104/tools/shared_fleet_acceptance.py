"""Run the shared-route acceptance against the console's real simulation API."""
import argparse
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from contextlib import contextmanager
import json
from itertools import permutations
import math
from pathlib import Path
import sys
import tempfile
import threading
import time
from urllib.request import Request, urlopen
from urllib.error import HTTPError

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT.parent / 'console'))

from app import ConsoleServer, Handler
from common.dispatch import Dispatch
from sim.lightweight import LightweightFleet
from warehouse_sim.route_graph import RouteError


@contextmanager
def console(size, directory, *, restart=False, benchmark_seed=None):
    storage = Dispatch(directory / 'maps.sqlite3', None, local_executor=False)
    server = ConsoleServer(('127.0.0.1', 0), Handler)
    server.mode = 'sim'
    server.dispatch = storage
    resume_db = directory / 'execution.sqlite3' if restart else None
    server.fleet = LightweightFleet(storage, directory / 'sessions', size, background=False, resume_db=resume_db,
                                    benchmark_seed=benchmark_seed)
    thread = threading.Thread(target=server.serve_forever, daemon=True)
    thread.start()
    try:
        yield server
    finally:
        server.shutdown()
        thread.join()
        server.server_close()
        server.fleet.close()
        storage.db.close()


def api(server, path, body=None):
    request = Request(f'http://127.0.0.1:{server.server_port}{path}',
                      data=None if body is None else json.dumps(body).encode(),
                      headers={'Content-Type': 'application/json'})
    with urlopen(request, timeout=20) as reply:
        return json.load(reply)


def peak_rss_mib():
    if sys.platform != 'win32':
        import resource
        value = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
        return value / (1024 if sys.platform != 'darwin' else 1024 ** 2)
    import ctypes
    from ctypes import wintypes

    class MemoryCounters(ctypes.Structure):
        _fields_ = [('size', wintypes.DWORD), ('faults', wintypes.DWORD)] + [
            (field, ctypes.c_size_t) for field in (
                'peak_working_set', 'working_set', 'peak_pool_paged', 'pool_paged',
                'peak_pool_nonpaged', 'pool_nonpaged', 'pagefile', 'peak_pagefile')
        ]

    counters = MemoryCounters()
    counters.size = ctypes.sizeof(counters)
    perf = ctypes.windll.psapi.GetProcessMemoryInfo
    perf.argtypes = [wintypes.HANDLE, ctypes.POINTER(MemoryCounters), wintypes.DWORD]
    ctypes.windll.kernel32.GetCurrentProcess.restype = wintypes.HANDLE
    process = ctypes.windll.kernel32.GetCurrentProcess()
    if not perf(process, ctypes.byref(counters), counters.size):
        raise ctypes.WinError()
    return counters.peak_working_set / 1024 ** 2


def exercise_single_assignment(server, size):
    """Saturate one booking per vehicle without advancing the simulation clock."""
    execution = server.fleet.execution
    for name, station in execution.positions.items():
        execution.soc[name] = .94
        execution.fleet.update(name, station, .94, execution.tick)
    state = api(server, '/api/fleet/state')
    scenario = api(server, '/api/fleet/scenario')['batches']
    tasks = [{k: v for k, v in task.items() if k != 'robot'} for batch in scenario for task in batch]

    def submit(task):
        reply = api(server, '/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'], 'request': task,
        })
        return reply.get('assignments', {}).get(task['id'])

    with ThreadPoolExecutor(max_workers=12) as pool:
        replies = list(pool.map(submit, tasks))
    assigned = {task['id']: result for task, result in zip(tasks, replies) if result}
    latency = sorted(result['submission_to_assignment_ms'] for result in assigned.values())
    _, saved = execution.service.journal.load()
    jobs = saved['fleet']['jobs']
    robots = {result['robot'] for result in assigned.values()}
    return dict(vehicles=size, submitted=len(tasks), assigned=len(assigned),
                awaiting_vehicle=len(tasks) - len(assigned),
                submission_to_assignment_ms=dict(samples=len(latency),
                    p95=latency[math.ceil(.95 * len(latency)) - 1] if latency else None,
                    max=max(latency, default=None)),
                checks=dict(one_slot_per_vehicle=len(robots) == len(assigned) == size,
                            queue_at_capacity=len(jobs) == len(tasks) == 2 * size,
                            all_assignments_committed=all(jobs[key]['next_robot'] == result['robot']
                                                          for key, result in assigned.items()),
                            no_early_motion=not execution.pending and not execution.active,
                            allocated_within_second=bool(latency) and max(latency) <= 1000))


def exercise_busy_assignment(server, size):
    app = server.fleet
    execution = app.execution
    state = api(server, '/api/fleet/state')
    first, second = api(server, '/api/fleet/scenario')['batches']
    session = {'session': state['session'], 'connection': state['connection']}
    api(server, '/api/fleet/commands', {**session, 'request': {'operation': 'submit_batch', 'tasks': first}})
    app.step()
    app.step()
    already_busy = {name for name, robot in execution.fleet.robots.items() if robot.job}
    stopper = threading.Event()

    def move_fleet():
        while not stopper.wait(.25):
            app.step()

    def submit(task):
        return api(server, '/api/fleet/commands', {**session, 'request': task})

    with ThreadPoolExecutor(max_workers=13) as pool:
        future = pool.submit(move_fleet)
        try:
            replies = list(pool.map(submit, second))
        finally:
            stopper.set()
        future.result()
    assigned = {task['id']: reply['assignments'][task['id']] for task, reply in zip(second, replies)
                if task['id'] in reply['assignments']}
    waiting = {task['id']: reply['admission'][task['id']] for task, reply in zip(second, replies)
               if task['id'] not in assigned}
    recorded = {(event['task_id'], event['robot']) for event in execution.fleet.events
                if event['event'] == 'next_vehicle_reserved'}
    latency = sorted(result['submission_to_assignment_ms'] for result in assigned.values())
    busy_bookings = sum(result['robot'] in already_busy for result in assigned.values())
    return dict(vehicles=size, initial_busy_vehicles=len(already_busy), assigned=len(assigned),
                awaiting_vehicle=len(second) - len(assigned), allocated_to_initially_busy=busy_bookings,
                awaiting_explanations=waiting,
                submission_to_assignment_ms=dict(samples=len(latency),
                    p95=latency[math.ceil(.95 * len(latency)) - 1] if latency else None,
                    max=max(latency, default=None)),
                checks=dict(busy_vehicles_can_receive_next_task=busy_bookings > 0,
                            all_bookings_recorded=all((key, reply['robot']) in recorded for key, reply in assigned.items()),
                            allocated_within_second=bool(latency) and max(latency) <= 1000))


def optimistic_charge_schedule(execution, vehicles):
    """Enumerate sequences without traffic, clearance delay or initial occupancy."""
    gains = execution.charge_gain_per_tick
    durations = {}
    for vehicle in vehicles:
        for bay, gain in gains.items():
            path = execution.graph.route(execution.positions[vehicle], bay, forbidden_directed_edges=execution.closed_edges)
            meters = sum(execution.graph.edges[edge][1] for edge in zip(path, path[1:]))
            arrival_soc = execution.soc[vehicle] - meters * .0001
            durations[vehicle, bay] = math.ceil(meters / 12) + math.ceil(
                max(0., execution.fleet.release_soc - arrival_soc) / gain)
    scores = []
    for order in permutations(vehicles):
        for split in range(len(order) + 1):
            finish = 0
            for bay, queue in zip(gains, (order[:split], order[split:])):
                elapsed = 0
                for vehicle in queue:
                    elapsed += durations[vehicle, bay]
                    finish += elapsed
            scores.append(finish)
    return min(scores)


def charge_trial(server, optimized, cohort):
    execution = server.fleet.execution
    execution.fleet.predictive_charging = optimized
    execution.charge_gain_per_tick = {'CP_SOUTH': .02, 'CP_NORTH': .23}
    model_seconds_per_tick = 12 / execution.fleet.policy['empty_speed_mps']
    execution.fleet.charger_rates = {name: gain / model_seconds_per_tick
                                     for name, gain in execution.charge_gain_per_tick.items()}
    low_vehicles = ('SIM-001', 'SIM-002', 'SIM-003', 'SIM-006')[:cohort]
    for name, soc in zip(low_vehicles, (.12, .09, .18, .17)):
        execution.soc[name] = soc
    optimistic = optimistic_charge_schedule(execution, low_vehicles)
    state = api(server, '/api/fleet/state')
    tasks = [dict(id='free-south', type='standby', goal='PARK_SOUTH'),
             dict(id='free-north', type='standby', goal='PARK_NORTH')]
    if cohort > 1:
        tasks += [dict(id=f'charge-business-{i}', type='standby', goal=f'DROP_{i}')
                  for i in range(10, 15)]
    api(server, '/api/fleet/commands', {'session': state['session'], 'connection': state['connection'],
                                       'request': {'operation': 'submit_batch', 'tasks': tasks}})
    samples = {name: {} for name in low_vehicles}
    started = execution.tick
    for _ in range(240):
        server.fleet.step()
        for job in execution.fleet.jobs.values():
            if job.kind != 'charge' or job.requested_robot not in samples:
                continue
            sample = samples[job.requested_robot]
            if job.state in ('EXECUTING', 'CHARGING', 'DONE'):
                sample.setdefault('station', job.goals[0])
                sample.setdefault('assigned', execution.tick)
            if job.state in ('CHARGING', 'DONE'):
                sample.setdefault('arrived', execution.tick)
            if job.state == 'DONE':
                sample.setdefault('finished', execution.tick)
        if all('finished' in sample for sample in samples.values()):
            break
    complete = all('finished' in sample for sample in samples.values())
    for sample in samples.values():
        if 'finished' in sample:
            sample.update(queue_ticks=sample['assigned'] - started, travel_ticks=sample['arrived'] - sample['assigned'],
                          charging_ticks=sample['finished'] - sample['arrived'])
    return dict(complete=complete, cohort=samples,
                optimistic_lower_bound_ticks=optimistic,
                unavailable_ticks=sum(sample.get('finished', execution.tick) - started for sample in samples.values()),
                business_completed=sum(execution.fleet.jobs[task['id']].state == 'DONE' for task in tasks),
                business_submitted=len(tasks),
                overlapping_occupancy=execution.overlap_cells)


def compare_charging(size, directory, cohort=1):
    trials = {}
    for key, optimized in (('baseline', False), ('predictive', True)):
        trial_dir = directory / key
        trial_dir.mkdir()
        with console(size, trial_dir) as server:
            trials[key] = charge_trial(server, optimized, cohort)
    baseline, predictive = trials['baseline'], trials['predictive']
    reduction = 100 * (1 - predictive['unavailable_ticks'] / baseline['unavailable_ticks'])
    return dict(vehicles=size, **trials, unavailable_time_reduction_percent=reduction,
                checks=dict(automatic_charge_completed=baseline['complete'] and predictive['complete'],
                            same_business_outcome=baseline['business_completed'] == predictive['business_completed']
                            == baseline['business_submitted'],
                            no_overlapping_occupancy=baseline['overlapping_occupancy'] == predictive['overlapping_occupancy'] == 0,
                            reduction_at_least_25_percent=reduction >= 25))


def inject_persistent_blockage(app):
    execution = app.execution
    for robot, segment in execution.active.items():
        if (robot in execution.feedback_unavailable or segment.yielding or segment.stopped_tick is not None
                or not any(node.startswith('DET_') for node in segment.nodes)):
            continue
        sample = execution.sample_index(segment, execution.tick)
        if not execution.retreat_prefix_clear(segment, sample):
            continue
        for edge in zip(segment.nodes, segment.nodes[1:]):
            old_closed = set(execution.closed_edges)
            execution.closed_edges.add(edge)
            if not execution.retreat_prefix_clear(segment, sample):
                execution.closed_edges = old_closed
                continue
            execution.closed_edges.difference_update(app.conditions.blocked_aisle)
            goal = execution.pending[robot]['goal']
            try:
                execution.graph.route(segment.nodes[0], goal, forbidden_directed_edges=execution.closed_edges)
            except RouteError:
                execution.closed_edges = old_closed
                continue
            job = execution.fleet.robots[robot].job
            execution.fleet.emit('simulation_persistent_blockage', robot=robot, task_id=job, edge=edge)
            return dict(robot=robot, edge=edge, task=job, tick=execution.tick)
    return None


def exercise(server, size, *, feedback_loss=False, stream=False, restart=False, handoff=False,
             persistent_blockage=False, soak_rounds=0, stress=False):
    app = server.fleet
    execution = app.execution
    app.step()
    all_chargers = {name for name in execution.graph.stations if name.startswith('CP_')}
    occupied_chargers = {station for bays in execution.fleet.charger_occupancy.values() for station in bays}
    checks = dict(all_chargers_physically_occupied=len(all_chargers) >= 2 and occupied_chargers == all_chargers,
                  full_charger_wait='SIM-001' in execution.fleet.charge_waiting,
                  no_motion_while_full='SIM-001' not in execution.active)
    batches = api(server, '/api/fleet/scenario')['batches']
    state = api(server, '/api/fleet/state')
    if stress:
        zone_start = 3 if size == 100 else 0
        operations = [
            {'operation': 'set_traffic_zone', 'zone': 'aisle-limits',
             'stations': [f'SPINE_{zone_start}', *(f'J_{i}' for i in range(zone_start*5, zone_start*5+5))],
             'capacity': 2},
            {'operation': 'set_feedback_profile', 'event': 'arrived',
             'profile': {'delay_ticks': 1, 'duplicate_delay_ticks': 5}},
            {'operation': 'set_feedback_profile', 'event': 'handling_done',
             'profile': {'retry_ticks': 2, 'duplicate_delay_ticks': 7}},
        ]
        if size == 100:
            operations.insert(1, {'operation': 'set_traffic_zone', 'zone': 'east-aisle-limits',
                                  'stations': ['SPINE_8', *(f'J_{i}' for i in range(40, 45))], 'capacity': 2})
        for operation in operations:
            api(server, '/api/fleet/commands', {
                'session': state['session'], 'connection': state['connection'], 'request': operation,
            })
    first = {task['id'] for task in batches[0]}
    second_ids = {task['id'] for task in batches[1]}
    business = first | second_ids
    extra = []
    if stream:
        # The ring's EXIT_0 also connects the ring and trunk. The continuation
        # sends standby vehicles to off-corridor parking, leaving this throat clear.
        stream_goals = [task.get('dropoff') or task['goal'] for task in batches[0]
                        if not task['id'].startswith('RING-OUT-')]
        stream_goals.extend(task['goal'] for task in batches[1] if task['id'].startswith('RING-BACK-'))
        extra = [dict(id=f'STREAM-{index:03d}', type=('move', 'standby')[index % 2],
                      goal=goal, priority=0 if index % 2 else -100)
                 for index, goal in enumerate(stream_goals)]
    later_waves = []
    for wave in range(soak_rounds):
        targets = [task['goal'] for task in batches[1]] if wave % 2 == 0 else stream_goals
        later_waves.append([dict(id=f'SOAK-{wave:02d}-{index:03d}', type=('move', 'standby')[index % 2],
                                goal=goal, priority=(-100, 0, 100)[index % 3])
                            for index, goal in enumerate(targets)])
    extra_receipts_ok = True
    next_arrival = 0
    remaining = set(business)

    sent_ns = {}

    def submit(tasks):
        sent = time.perf_counter_ns()
        for task in tasks:
            sent_ns.setdefault(task['id'], sent)
        return api(server, '/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'],
            'request': {'operation': 'submit_batch', 'tasks': tasks},
        })

    receipt = submit(batches[0])
    duplicate = submit(batches[0])
    checks['duplicate_submission'] = len(execution.fleet.jobs) == size
    checks['complete_first_receipt'] = set(receipt['task_ids']) == first == set(duplicate['task_ids'])
    second = submit(batches[1])
    starting = api(server, '/api/fleet/state')['state']['jobs']
    checks['all_business_queued_before_execution'] = (business <= starting.keys()
                                                       and all(starting[j]['state'] == 'QUEUED' for j in business))
    fault = None
    second_fault = None
    stopped_rebuild = None
    transfer = None
    obstruction = None
    used_edges_before_reopening = set()
    for _ in range(600 + 260 * soak_rounds):
        simultaneous_outages = bool(stress and second_fault and len(execution.feedback_unavailable) >= 2)
        restart_ready = not feedback_loss or simultaneous_outages or (fault and fault.get('reconciled'))
        if restart and stopped_rebuild is None and restart_ready:
            loaded = next((name for name in execution.active
                           if name not in execution.feedback_unavailable
                           and execution.fleet.jobs[execution.fleet.robots[name].job].loaded), None)
            if loaded:
                command = execution.pending[loaded]
                pose = execution.poses()[loaded]
                cells = execution.active[loaded].cells
                outages = sorted(execution.feedback_unavailable)
                buffered = list(execution.feedback_queue)
                runtime_path = app.resume_db
                app.close()
                app = LightweightFleet(server.dispatch, runtime_path.parent, size,
                                       background=False, resume_db=runtime_path)
                server.fleet = app
                execution = app.execution
                stopped_rebuild = dict(robot=loaded, tick=execution.tick, outages=outages,
                                       deferred_feedback=len(buffered),
                                       preserved=(execution.pending[loaded] == command
                                                  and execution.poses()[loaded] == pose
                                                  and execution.active[loaded].cells == cells
                                                  and sorted(execution.feedback_unavailable) == outages
                                                  and execution.feedback_queue == buffered))
                state = api(server, '/api/fleet/state')
        if feedback_loss and fault is None:
            moving = next(((robot, segment) for robot, segment in execution.active.items()
                           if not segment.yielding and segment.start_tick < execution.tick < segment.end_tick), None)
            if moving:
                robot, segment = moving
                fault = dict(robot=robot, tick=execution.tick, pose=execution.poses()[robot],
                             occupied=segment.cells, completed_before=len(business) - len(remaining),
                             held=True, injected_ns=time.perf_counter_ns())
                execution.feedback_unavailable.add(robot)
        if fault and execution.tick == fault['tick'] + 10:
            fault['reconciled'] = execution.restore_feedback(fault['robot'], fault['pose'], stopped=True)
            fault['completed_during_outage'] = len(business) - len(remaining) - fault['completed_before']
        if stress and fault and second_fault is None and fault['robot'] in execution.feedback_unavailable:
            for robot, segment in execution.active.items():
                if robot != fault['robot'] and not segment.yielding and segment.start_tick < execution.tick < segment.end_tick:
                    second_fault = dict(robot=robot, tick=execution.tick, pose=execution.poses()[robot],
                                        cells=segment.cells, held=True)
                    execution.feedback_unavailable.add(robot)
                    break
        if second_fault and execution.tick == second_fault['tick'] + 6:
            second_fault['reconciled'] = execution.restore_feedback(second_fault['robot'], second_fault['pose'], stopped=True)
        if persistent_blockage and obstruction is None:
            obstruction = inject_persistent_blockage(app)
            if obstruction:
                used_edges_before_reopening = {edge for paths in execution.last_routes.values()
                                               for path in paths for edge in zip(path, path[1:])}
        if handoff and transfer is None:
            for job in execution.fleet.jobs.values():
                if job.id not in ('OUT-000', 'OUT-001', 'OUT-002') or not job.loaded or not job.robot:
                    continue
                body = {'session': state['session'], 'connection': state['connection'],
                        'request': dict(operation='handoff_loaded', id=job.id,
                                        bay='HP_SWAP', clearance='PP_ISOLATE')}
                try:
                    api(server, '/api/fleet/commands', body)
                except HTTPError as error:
                    if error.code != 409:
                        raise
                    continue
                transfer = dict(task=job.id, original_robot=job.robot, tick=execution.tick)
                break
        app.step()
        if fault and fault['robot'] in execution.feedback_unavailable:
            robot = fault['robot']
            segment = execution.active.get(robot)
            fault['held'] &= bool(segment and segment.cells == fault['occupied']
                                  and execution.poses()[robot] == fault['pose'])
        if second_fault and second_fault['robot'] in execution.feedback_unavailable:
            segment = execution.active.get(second_fault['robot'])
            second_fault['held'] &= bool(segment and segment.cells == second_fault['cells']
                                        and execution.poses()[second_fault['robot']] == second_fault['pose'])
        jobs = execution.fleet.jobs
        remaining = {job for job in business if jobs[job].state != 'DONE'}
        if (extra and execution.tick >= next_arrival and
                any(jobs[id].assigned_at for id in second_ids)):
            chunk, extra = extra[:10], extra[10:]
            expected = {task['id'] for task in chunk}
            extra_receipts_ok &= set(submit(chunk)['task_ids']) == expected
            business.update(expected)
            remaining.update(expected)
            next_arrival = execution.tick + 8
        if not remaining and not extra:
            if not later_waves:
                break
            extra = later_waves.pop(0)
    if feedback_loss:
        checks['missing_feedback_holds_route'] = bool(fault and fault['held'])
        checks['unaffected_tasks_continue'] = bool(fault and fault.get('completed_during_outage', 0) > 0)
        checks['route_resumes_after_feedback'] = bool(fault and fault.get('reconciled') and any(
            event['event'] == 'traffic_protective_resume' and event['robot'] == fault['robot']
            for event in execution.fleet.events))
    final = api(server, '/api/fleet/state')
    jobs = final['state']['jobs']
    events = execution.fleet.events
    charge = next((j for j in execution.fleet.jobs.values() if j.kind == 'charge' and j.robot == 'SIM-001'), None)
    charged = next((i for i, e in enumerate(events)
                    if charge and e.get('task_id') == charge.id and e['event'] == 'completed'), None)
    routes = [path for paths in execution.last_routes.values() for path in paths]
    used_edges = {edge for path in routes for edge in zip(path, path[1:])}
    command_owner = {event['execution_id']: event['robot'] for event in events
                     if event['event'] == 'sim_command_received'}
    corridor_users = defaultdict(set)
    for command, paths in execution.last_routes.items():
        if command in command_owner:
            for path in paths:
                for edge in zip(path, path[1:]):
                    corridor_users[frozenset(edge)].add(command_owner[command])
    shared_corridors = sum(len(users) > 1 for users in corridor_users.values())
    business_vehicles = {event['robot'] for event in events
                         if event['event'] == 'assigned' and event['task_id'] in business}
    checks.update(
        all_business_done=all(j in jobs and jobs[j]['state'] == 'DONE' for j in business),
        complete_second_receipt=set(second['task_ids']) == second_ids,
        controlled_overlap=any(e['event'] == 'batch_dispatch_released' and e['prior_outstanding'] == 1
                               for e in events),
        all_vehicles_dispatched=len(business_vehicles) == size,
        all_online=len(final['state']['robots']) == size and all(
            r['seen'] == execution.tick for r in final['state']['robots'].values()),
        real_wait=execution.stats['peak_waiting'] > 0 and execution.stats['wait_for_active'] > 0,
        common_corridors_used_by_distinct_vehicles=shared_corridors > 0,
        closed_edge_detour=any('DET_1' in path for path in routes)
        and not (used_edges_before_reopening if obstruction else used_edges).intersection(app.conditions.blocked_aisle),
        five_way_cycle=any(len(c['robots']) == 5 and c['status'] == 'planned' for c in execution.recent_cycles),
        waits_when_no_safe_plan=execution.stats['no_safe_hold_ticks'] >= 3
        and any(len(c['robots']) == 5 and c['status'] == 'no_safe_plan'
                for c in execution.recent_cycles),
        cycle_resolved=execution.stats['resolved_cycles'] > 0,
        no_overlapping_occupancy=execution.overlap_cells == final['state']['traffic']['overlap_cells'] == 0,
        automatic_charge=bool(charge and charge.charge_trigger == 'automatic' and charge.state == 'DONE'),
        redispatched_after_charging=charged is not None and any(
            e['event'] == 'assigned' and e['robot'] == 'SIM-001' and e['task_id'] in business
            for e in events[charged + 1:]),
    )
    if restart:
        checks['loaded_restart_preserved_claim'] = bool(stopped_rebuild and stopped_rebuild['preserved'])
    if stream:
        checks['continued_arrivals_received'] = extra_receipts_ok and len(business) == (3 + soak_rounds) * size
    if handoff:
        checks['loaded_handoff_completed_by_other_vehicle'] = False
        if transfer:
            job = jobs[transfer['task']]
            transfer['replacement_robot'] = job['robot']
            checks['loaded_handoff_completed_by_other_vehicle'] = (
                job['state'] == 'DONE' and job['robot'] != transfer['original_robot']
                and execution.positions[transfer['original_robot']] == 'PP_ISOLATE'
                and execution.cargo[transfer['task']]['location'] == job['goals'][-1])
    if persistent_blockage:
        checks['persistent_blockage_retreated_and_completed'] = bool(obstruction
            and any(event['event'] == 'traffic_retreat_confirmed' and event['robot'] == obstruction['robot']
                    for event in events)
            and obstruction['edge'] in execution.closed_edges
            and jobs[obstruction['task']]['state'] == 'DONE')
    if stress:
        checks['two_feedback_outages_held_positions'] = bool(second_fault and second_fault['held']
                                                            and second_fault.get('reconciled'))
        checks['feedback_retries_and_late_duplicates'] = (execution.stats['feedback_retries'] > 0
                                                          and execution.stats['duplicate_feedback_delivered'] > 0
                                                          and sum(event['event'] == 'completed' and event['task_id'] in business
                                                                  for event in events) == len(business))
        checks['zone_admission_delayed_vehicles'] = execution.stats['zone_capacity_waits'] > 0
        if restart:
            checks['restart_during_concurrent_outages_preserved_feedback'] = (
                bool(stopped_rebuild and stopped_rebuild['preserved'] and len(stopped_rebuild['outages']) == 2
                     and stopped_rebuild['deferred_feedback'] > 0))
    received_ns = {}
    for event in events:
        if event['event'] == 'sim_command_received' and event['task_id'] in sent_ns:
            received_ns.setdefault(event['task_id'], event['observed_ns'])
    latency_ms = sorted((stop - sent_ns[task_id]) / 1e6 for task_id, stop in received_ns.items())
    assignment_wall_ms = {
        'samples': len(latency_ms),
        'p95': latency_ms[math.ceil(.95 * len(latency_ms)) - 1] if latency_ms else None,
        'max': latency_ms[-1] if latency_ms else None,
    }
    checks['command_receipts_measured'] = set(received_ns) == business
    if fault:
        notice = next((event for event in events if event['event'] == 'traffic_protective_stop'
                       and event['robot'] == fault['robot']
                       and event.get('reason') == 'feedback_unavailable'), None)
        if notice:
            fault['injection_to_simulated_hold_ms'] = (notice['observed_ns'] - fault['injected_ns']) / 1e6
        fault.pop('injected_ns')
    if fault:
        fault.pop('occupied')
    if second_fault:
        second_fault.pop('cells')
    forced_group = {f'SIM-{number:03d}' for number in range(size-4, size+1)}
    other_wait_groups = sorted({tuple(cycle['robots']) for cycle in execution.recent_cycles
                                if set(cycle['robots']) != forced_group})
    return dict(vehicles=size, soak_rounds=soak_rounds, loaded_handoff=transfer, persistent_blockage=obstruction, loaded_simulator_restart=stopped_rebuild, injected_feedback_loss=fault, second_feedback_loss=second_fault, submission_to_simulated_receipt_ms=assignment_wall_ms, initially_occupied_chargers=sorted(occupied_chargers),
                low_soc_job=charge.id if charge else None, charge_station=charge.goals[-1] if charge else None,
                charge_vehicle_business=[j for j in business & jobs.keys() if jobs[j]['robot'] == 'SIM-001'],
                business_vehicles=len(business_vehicles), checks=checks, ticks=execution.tick,
                shared_corridors=shared_corridors,
                forced_wait_group=sorted(forced_group), other_observed_wait_groups=other_wait_groups,
                most_vehicles_on_one_corridor=max(map(len, corridor_users.values()), default=0),
                states=dict(Counter(jobs[j]['state'] for j in business & jobs.keys())),
                outstanding=[dict(id=j, state=jobs[j]['state'], reason=jobs[j]['reason'], robot=jobs[j]['robot'])
                             for j in sorted(remaining & jobs.keys())[:16]],
                traffic=dict(execution.stats), max_wait_ticks=max(execution.wait_ticks.values(), default=0),
                total_wait_ticks=sum(execution.wait_ticks.values()), cycles=execution.recent_cycles,
                peak_rss_mib=round(peak_rss_mib(), 2),
                assignment_max_ms=max((e['decision_compute_ms'] for e in events
                                       if e['event'] == 'assignment_planned'), default=0.),
                stopped={name: {'at': execution.positions[name], 'goal': execution.pending[name]['goal'],
                                'blockers': {peer: execution.positions[peer] for peer in entry['blockers']}}
                         for name, entry in list(execution.waiting.items())[:16]})


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--vehicles', type=int, choices=(10, 100), default=100)
    parser.add_argument('--report', type=Path)
    parser.add_argument('--feedback-loss', action='store_true')
    parser.add_argument('--stream', action='store_true')
    parser.add_argument('--restart', action='store_true')
    parser.add_argument('--handoff', action='store_true')
    parser.add_argument('--persistent-blockage', action='store_true')
    parser.add_argument('--stress', action='store_true', help='启用限流、双车断联和回执乱序')
    parser.add_argument('--charge-cohort', type=int, choices=(1, 4), default=1)
    parser.add_argument('--soak-rounds', type=int, default=0, help='追加往返轮次，保留同一运行数据库')
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument('--single-assignment', action='store_true')
    mode.add_argument('--busy-assignment', action='store_true')
    mode.add_argument('--compare-charging', action='store_true')
    options = parser.parse_args()
    if options.soak_rounds < 0 or (options.soak_rounds and not options.stream):
        parser.error('--soak-rounds 需要 --stream 并使用非负整数')
    if options.stress and not options.feedback_loss:
        parser.error('--stress 需要 --feedback-loss')
    if options.charge_cohort > 1 and (not options.compare_charging or options.vehicles != 100):
        parser.error('--charge-cohort 4 需要 --compare-charging --vehicles 100')
    wall, cpu = time.perf_counter(), time.process_time()
    with tempfile.TemporaryDirectory() as directory:
        if options.compare_charging:
            result = compare_charging(options.vehicles, Path(directory), options.charge_cohort)
        else:
            with console(options.vehicles, Path(directory), restart=options.restart) as server:
                if options.single_assignment:
                    result = exercise_single_assignment(server, options.vehicles)
                elif options.busy_assignment:
                    result = exercise_busy_assignment(server, options.vehicles)
                else:
                    result = exercise(server, options.vehicles, feedback_loss=options.feedback_loss,
                                      stream=options.stream, restart=options.restart, handoff=options.handoff,
                                      persistent_blockage=options.persistent_blockage,
                                      soak_rounds=options.soak_rounds, stress=options.stress)
    result.update(wall_s=time.perf_counter() - wall, cpu_s=time.process_time() - cpu)
    report = json.dumps(result, ensure_ascii=False, indent=2)
    if options.report:
        options.report.write_text(report + '\n', encoding='utf-8')
    print(report)
    raise SystemExit(not all(result['checks'].values()))
