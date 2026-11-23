"""Exercise the same JSON endpoints called by the map editor and task page."""
import json
import math
from pathlib import Path
import tempfile
import threading
import unittest
from urllib.error import HTTPError
from urllib.request import Request, urlopen

from app import ConsoleServer, Handler
from common.dispatch import Dispatch
from sim.lightweight import LightweightFleet


class LightweightConsoleTest(unittest.TestCase):
    def setUp(self):
        directory = tempfile.TemporaryDirectory()
        self.addCleanup(directory.cleanup)
        server = ConsoleServer(('127.0.0.1', 0), Handler)
        self.addCleanup(server.server_close)
        self.server = server
        server.mode = 'sim'
        server.dispatch = Dispatch(Path(directory.name) / 'maps.sqlite3', None, local_executor=False)
        self.addCleanup(server.dispatch.db.close)
        server.fleet = LightweightFleet(server.dispatch, Path(directory.name), background=False)
        self.addCleanup(server.fleet.close)
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        self.addCleanup(thread.join)
        self.addCleanup(server.shutdown)

    def call(self, path, body=None):
        req = Request(f'http://127.0.0.1:{self.server.server_port}{path}',
                      data=None if body is None else json.dumps(body).encode(),
                      headers={'Content-Type': 'application/json'})
        try:
            with urlopen(req, timeout=10) as reply:
                return reply.status, json.load(reply)
        except HTTPError as reply:
            with reply:
                return reply.code, json.load(reply)

    def candidate(self):
        old = self.server.fleet.map_id
        path = f'/api/maps/{old}/edit'
        status, edit = self.call(path)
        self.assertEqual(status, 200)
        self.assertTrue(edit['can_use'])
        data = edit['map']
        data['header']['mapName'] += '-edited'
        edge = ('LM_DOCK_24', 'LM_23_13')
        old_graph = self.server.fleet.execution.graph
        self.assertIn(edge, list(zip((nodes := old_graph.route('CP_24', 'LM_23_13')), nodes[1:])))
        data['advancedCurveList'] = [curve for curve in data['advancedCurveList']
                                     if (curve['startPos']['instanceName'], curve['endPos']['instanceName']) != edge]
        return path, data, edge

    def submit(self, id, goal='LM_23_13', *, priority=0):
        _, state = self.call('/api/fleet/state')
        return self.call('/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'],
            'request': {'id': id, 'type': 'move', 'goal': goal, 'priority': priority},
        })

    def fleet_request(self, request):
        _, state = self.call('/api/fleet/state')
        return self.call('/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'], 'request': request,
        })

    def test_rolling_batch_returns_durable_bookings_without_moving(self):
        self.assertEqual(self.fleet_request({'operation': 'set_rolling_admission', 'enabled': True})[0], 200)
        status, receipt = self.fleet_request({'operation': 'submit_batch', 'tasks': [
            {'id': 'queued-06', 'type': 'standby', 'goal': 'LM_DOCK_06'},
            {'id': 'queued-12', 'type': 'standby', 'goal': 'LM_DOCK_12'},
        ]})
        self.assertEqual(status, 200, receipt)
        self.assertEqual(set(receipt['assignments']), {'queued-06', 'queued-12'})
        self.assertEqual(len({assignment['robot'] for assignment in receipt['assignments'].values()}), 2)
        service = self.server.fleet.execution.service
        _, durable = service.journal.load()
        for key, allocation in receipt['assignments'].items():
            self.assertTrue(allocation['pending_execution'])
            self.assertEqual(allocation['robot'], durable['fleet']['jobs'][key]['next_robot'])
            self.assertGreaterEqual(allocation['submission_to_assignment_ms'], 0)
        self.assertFalse(service.journal.commands())

    def test_task_constraints_use_vehicle_profile_and_loaded_waypoint(self):
        self.assertEqual(self.fleet_request({'operation': 'set_vehicle_profile', 'robot': 'SIM-004',
                                             'model': 'fork-test', 'payload_kg': 1200})[0], 200)
        task = {'id': 'qualified', 'type': 'transport', 'pickup': 'AP_PICK_01', 'dropoff': 'AP_SHIP_01',
                'requirements': {'models': ['fork-test'], 'payload_kg': 950,
                                 'via': ['LM_23_13'], 'deadline_s': 120}}
        status, receipt = self.fleet_request(task)
        self.assertEqual(status, 200, receipt)
        self.assertEqual(receipt['assignments']['qualified']['robot'], 'SIM-004')
        task = {**task, 'id': 'overweight', 'requirements': {'payload_kg': 1400}}
        status, receipt = self.fleet_request(task)
        self.assertEqual(status, 200)
        self.assertEqual(receipt['admission']['overweight']['reasons'], {'incompatible': 4})
        fleet = self.server.fleet
        for _ in range(60):
            fleet.step()
            if fleet.execution.fleet.jobs['qualified'].state == 'DONE':
                break
        events = [event['event'] for event in fleet.execution.fleet.events if event.get('task_id') == 'qualified']
        self.assertEqual(fleet.execution.fleet.jobs['qualified'].state, 'DONE')
        self.assertLess(events.index('pickup_confirmed'), events.index('waypoint_reached'))
        self.assertLess(events.index('waypoint_reached'), events.index('dropoff_confirmed'))
        self.assertEqual(fleet.execution.fleet.jobs['overweight'].state, 'QUEUED')

    def test_vehicle_profile_changes_granted_segment_duration_and_energy(self):
        status, result = self.fleet_request({'operation': 'set_vehicle_profile', 'robot': 'SIM-004',
            'model': 'slow', 'performance': {'empty_speed_mps': .30, 'empty_soc_per_m': .0003}})
        self.assertEqual(status, 200, result)
        status, result = self.fleet_request({'id': 'slow-operation', 'type': 'move', 'goal': 'LM_23_13',
                                             'requirements': {'models': ['slow']}})
        self.assertEqual(status, 200, result)
        fleet = self.server.fleet
        fleet.step()
        engine = fleet.execution
        segment = engine.active['SIM-004']
        self.assertEqual(segment.end_tick - segment.start_tick, math.ceil(segment.length / 6))
        starting_soc = engine.soc['SIM-004']
        for _ in range(segment.end_tick - segment.start_tick):
            fleet.step()
        self.assertEqual(engine.fleet.jobs['slow-operation'].state, 'DONE')
        self.assertAlmostEqual(engine.soc['SIM-004'], starting_soc - segment.length * .0003)

    def test_delayed_lost_and_duplicate_feedback_keep_exactly_one_cargo_completion(self):
        for kind in ('arrived', 'handling_done'):
            self.assertEqual(self.fleet_request({'operation': 'set_feedback_profile', 'event': kind,
                'profile': {'delay_ticks': 1, 'retry_ticks': 2, 'duplicate_delay_ticks': 8}})[0], 200)
        self.assertEqual(self.fleet_request({'id': 'delayed-cargo', 'type': 'transport',
            'pickup': 'AP_PICK_01', 'dropoff': 'AP_SHIP_01'})[0], 200)
        fleet = self.server.fleet
        saw_unconfirmed_unload = False
        for _ in range(65):
            fleet.step()
            engine = fleet.execution
            job = engine.fleet.jobs['delayed-cargo']
            if engine.cargo.get(job.id, {}).get('location') == 'AP_SHIP_01' and job.state != 'DONE':
                saw_unconfirmed_unload = True
                self.assertEqual(engine.fleet.workstations['AP_SHIP_01']['job'], job.id)
            if job.state == 'DONE' and not engine.feedback_queue:
                break
        self.assertTrue(saw_unconfirmed_unload)
        self.assertEqual(job.state, 'DONE')
        events = [event['event'] for event in engine.fleet.events if event.get('task_id') == job.id]
        self.assertEqual(events.count('pickup_confirmed'), 1)
        self.assertEqual(events.count('dropoff_confirmed'), 1)
        self.assertEqual(events.count('completed'), 1)
        self.assertGreaterEqual(engine.stats['feedback_retries'], 4)
        self.assertGreaterEqual(engine.stats['duplicate_feedback_delivered'], 4)

    def test_batch_dispatches_cas_priority_levels_in_order(self):
        _, state = self.call('/api/fleet/state')
        tasks = [dict(id=label, type='move', goal=goal, priority=value)
                 for label, goal, value in [('low', 'LM_DOCK_06', -100),
                                             ('medium', 'LM_DOCK_12', 0),
                                             ('high', 'LM_23_13', 100)]]
        status, result = self.call('/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'],
            'request': {'operation': 'submit_batch', 'tasks': tasks},
        })
        self.assertEqual(status, 200, result)
        self.server.fleet.step()
        _, state = self.call('/api/fleet/state')
        assigned = [event['task_id'] for event in state['events'] if event['event'] == 'assigned']
        self.assertEqual(assigned, ['high', 'medium', 'low'])

    def test_active_route_stops_and_retains_claim_when_blocked(self):
        self.assertEqual(self.submit('blocked-route', 'LM_63_49')[0], 200)
        fleet = self.server.fleet
        fleet.step()
        engine = fleet.execution
        robot, segment = next(iter(engine.active.items()))
        initial_pose = engine.poses()[robot]
        fleet.step()
        pose = engine.poses()[robot]
        self.assertNotEqual(pose, initial_pose)
        blocked_edge = tuple(segment.nodes[-2:])
        footprint = segment.cells
        engine.closed_edges.update({blocked_edge, tuple(reversed(segment.nodes[:2]))})
        for _ in range(5):
            fleet.step()
            self.assertEqual(engine.poses()[robot], pose)
            self.assertEqual(engine.active[robot].cells, footprint)
            self.assertEqual(engine.fleet.jobs['blocked-route'].state, 'EXECUTING')
        self.assertTrue(self.call('/api/fleet/state')[1]['state']['traffic']['active'][robot]['protective_stop'])
        engine.closed_edges.clear()
        for _ in range(10):
            fleet.step()
        self.assertEqual(engine.fleet.jobs['blocked-route'].state, 'DONE')
        self.assertNotIn(robot, engine.active)

    def test_inflight_retreat_then_detour_around_permanent_closure(self):
        self.assertEqual(self.submit('permanent', 'LM_63_49')[0], 200)
        fleet = self.server.fleet
        fleet.step()
        engine = fleet.execution
        robot, segment = next(iter(engine.active.items()))
        fleet.step()
        self.assertNotEqual(engine.poses()[robot][:2], engine.xy(segment.nodes[0]))
        closed = tuple(segment.nodes[-2:])
        engine.closed_edges.add(closed)
        for _ in range(35):
            fleet.step()
        job = engine.fleet.jobs['permanent']
        self.assertEqual(job.state, 'DONE')
        self.assertEqual(engine.stats['safe_retreats'], 1)
        self.assertEqual(engine.overlap_cells, 0)
        self.assertIn(closed, engine.closed_edges)
        route = engine.last_routes[job.execution_id][-1]
        self.assertNotIn(closed, list(zip(route, route[1:])))

    def test_blocked_segment_replans_while_still_at_confirmed_origin(self):
        self.assertEqual(self.submit('reroute')[0], 200)
        fleet = self.server.fleet
        fleet.step()
        engine = fleet.execution
        robot, segment = next(iter(engine.active.items()))
        closed = tuple(segment.nodes[-2:])
        engine.closed_edges.add(closed)
        for _ in range(10):
            fleet.step()
        job = engine.fleet.jobs['reroute']
        self.assertEqual(job.state, 'DONE')
        old, rerouted = engine.last_routes[job.execution_id]
        self.assertNotIn(closed, list(zip(rerouted, rerouted[1:])))
        self.assertNotEqual(old, rerouted)
        self.assertEqual(engine.overlap_cells, 0)

    def test_missing_feedback_only_holds_affected_route(self):
        self.assertEqual(self.submit('affected', 'LM_63_49')[0], 200)
        fleet = self.server.fleet
        fleet.step()
        fleet.step()
        engine = fleet.execution
        name, segment = next(iter(engine.active.items()))
        pose = engine.poses()[name]
        engine.feedback_unavailable.add(name)
        self.assertEqual(self.submit('unaffected', 'LM_DOCK_06')[0], 200)
        for _ in range(10):
            fleet.step()
        self.assertEqual(engine.poses()[name], pose)
        self.assertEqual(engine.active[name].cells, segment.cells)
        self.assertEqual(engine.fleet.jobs['affected'].state, 'EXECUTING')
        self.assertEqual(engine.fleet.jobs['unaffected'].state, 'DONE')
        self.assertEqual(engine.overlap_cells, 0)
        self.assertEqual(self.call('/api/fleet/state')[1]['state']['traffic']['feedback_unavailable'], [name])
        self.assertFalse(engine.restore_feedback(name, pose, stopped=False))
        self.assertFalse(engine.restore_feedback(name, (pose[0] + 1, *pose[1:]), stopped=True))
        self.assertTrue(engine.restore_feedback(name, pose, stopped=True))
        for _ in range(12):
            fleet.step()
        self.assertEqual(engine.fleet.jobs['affected'].state, 'DONE')

    def test_energy_forecast_charges_before_accepting_long_route(self):
        fleet = self.server.fleet
        engine = fleet.execution
        name = 'SIM-001'
        engine.feedback_unavailable.update(set(engine.positions) - {name})
        engine.soc[name] = .30
        engine.fleet.policy['energy_per_m'] = .003
        self.assertEqual(self.submit('long-move', 'LM_63_49')[0], 200)
        fleet.step()
        self.assertEqual(engine.fleet.jobs['long-move'].state, 'QUEUED')
        charge, = [job for job in engine.fleet.jobs.values() if job.kind == 'charge']
        self.assertEqual(charge.requested_robot, name)
        for _ in range(30):
            fleet.step()
        self.assertEqual(charge.state, 'DONE')
        self.assertEqual(engine.fleet.jobs['long-move'].state, 'DONE')
        self.assertEqual(engine.overlap_cells, 0)

    def test_batch_pressure_gate_preserves_urgent_and_aged_tasks(self):
        fleet = self.server.fleet
        engine = fleet.execution
        tasks = [('first-a', 0), ('first-b', 0), ('later-high', 100), ('later-low', -100)]
        for name, priority in tasks:
            self.assertEqual(self.submit(name, priority=priority)[0], 200)
        engine.dispatch_batches = [{'first-a', 'first-b'}, {'later-high', 'later-low'}]
        self.assertEqual(engine.held_jobs(), {'later-low'})
        fleet.step()
        _, state = self.call('/api/fleet/state')
        assigned = [event['task_id'] for event in state['events'] if event['event'] == 'assigned']
        self.assertEqual(assigned[0], 'later-high')
        self.assertNotIn('later-low', assigned)
        engine.tick = int(engine.fleet.policy['normal_wait_s']) + 1
        self.assertNotIn('later-low', engine.held_jobs())

    def test_forecast_demand_diverts_an_unblocked_route(self):
        self.assertEqual(self.submit('forecast-route')[0], 200)
        fleet = self.server.fleet
        engine = fleet.execution
        congested = ('LM_DOCK_24', 'LM_23_13')
        # Inject three same-direction queue observations on an open shortcut.
        engine.waiting.update({name: {'blockers': [], 'edge': congested}
                               for name in ('SIM-001', 'SIM-002', 'SIM-003')})
        for _ in range(10):
            fleet.step()
        job = engine.fleet.jobs['forecast-route']
        self.assertEqual(job.state, 'DONE')
        route, = engine.last_routes[job.execution_id]
        self.assertEqual(route, ['CP_24', 'LM_DOCK_24', 'LM_24_13', 'LM_23_13'])
        self.assertFalse(engine.closed_edges)

    def test_confirmed_pre_pickup_abort_transfers_task_from_original_vehicle(self):
        _, state = self.call('/api/fleet/state')
        status, result = self.call('/api/fleet/commands', {
            'session': state['session'], 'connection': state['connection'],
            'request': {'id': 'transfer', 'type': 'transport',
                        'pickup': 'AP_PICK_01', 'dropoff': 'AP_SHIP_01'},
        })
        self.assertEqual(status, 200, result)
        fleet = self.server.fleet
        fleet.step()
        engine = fleet.execution
        job = engine.fleet.jobs['transfer']
        original_robot, original_execution = job.robot, job.execution_id
        self.assertFalse(engine.confirm_pre_pickup_abort(original_robot, stopped=False))
        self.assertTrue(engine.confirm_pre_pickup_abort(original_robot, stopped=True))
        self.assertEqual(job.state, 'QUEUED')
        self.assertEqual(engine.cargo['transfer']['location'], 'AP_PICK_01')
        for _ in range(45):
            fleet.step()
        self.assertEqual(job.state, 'DONE')
        self.assertNotEqual(job.robot, original_robot)
        self.assertNotEqual(job.execution_id, original_execution)
        self.assertEqual(engine.cargo['transfer']['location'], 'AP_SHIP_01')

    def test_clean_restart_keeps_loaded_route_and_command(self):
        directory = tempfile.TemporaryDirectory()
        self.addCleanup(directory.cleanup)
        path = Path(directory.name) / 'resume.sqlite3'
        storage = self.server.dispatch
        original = self.server.fleet
        fleet = LightweightFleet(storage, path.parent, background=False, resume_db=path)
        self.server.fleet = fleet
        try:
            _, state = self.call('/api/fleet/state')
            status, receipt = self.call('/api/fleet/commands', {
                'session': state['session'], 'connection': state['connection'],
                'request': {'id': 'resume-load', 'type': 'transport',
                            'pickup': 'AP_PICK_01', 'dropoff': 'AP_SHIP_01'},
            })
            self.assertEqual(status, 200, receipt)
            for _ in range(30):
                fleet.step()
                job = fleet.execution.fleet.jobs['resume-load']
                if job.loaded and job.robot in fleet.execution.active:
                    break
            self.assertTrue(job.loaded)
            robot = job.robot
            command = fleet.execution.pending[robot].copy()
            pose = fleet.execution.poses()[robot]
            cells = fleet.execution.active[robot].cells
            fleet.close()
            self.server.fleet = original
            restored = LightweightFleet(storage, path.parent, background=False, resume_db=path)
            self.addCleanup(restored.close)
            self.server.fleet = restored
            self.assertNotEqual(self.call('/api/fleet/state')[1]['session'], state['session'])
            self.assertEqual(restored.execution.poses()[robot], pose)
            self.assertEqual(restored.execution.active[robot].cells, cells)
            self.assertEqual(restored.execution.pending[robot], command)
            self.assertEqual(restored.execution.cargo['resume-load']['location'], robot)
            for _ in range(35):
                restored.step()
            self.assertEqual(restored.execution.fleet.jobs['resume-load'].state, 'DONE')
            self.assertEqual(restored.execution.cargo['resume-load']['location'], 'AP_SHIP_01')
            self.assertEqual(restored.execution.overlap_cells, 0)
        finally:
            if self.server.fleet is fleet:
                fleet.close()
            self.server.fleet = original

    def test_restart_after_complete_step_restores_without_shutdown(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'interrupt.sqlite3'
            storage = self.server.dispatch
            fleet = LightweightFleet(storage, path.parent, background=False, resume_db=path)
            try:
                execution = fleet.execution
                execution.service.request(dict(id='interrupted', type='move', goal='LM_63_49'), execution.tick)
                fleet.step()
                fleet.step()
                self.assertTrue(execution.active)
                pose = execution.poses()
            finally:
                fleet.execution.service.close()
            restored = LightweightFleet(storage, path.parent, background=False, resume_db=path)
            try:
                self.assertEqual(restored.execution.poses(), pose)
                for _ in range(20):
                    restored.step()
                self.assertEqual(restored.execution.fleet.jobs['interrupted'].state, 'DONE')
            finally:
                restored.close()

    def test_unclean_restart_requires_reconciliation(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'dirty.sqlite3'
            storage = self.server.dispatch
            fleet = LightweightFleet(storage, path.parent, background=False, resume_db=path)
            fleet.step()
            # Mimic a committed task admission after the last complete execution snapshot.
            fleet.execution.service.request(
                dict(id='after-checkpoint', type='move', goal='LM_23_13'), fleet.execution.tick)
            fleet.execution.service.close()
            with self.assertRaisesRegex(ValueError, '没有最新一致检查点'):
                LightweightFleet(storage, path.parent, background=False, resume_db=path)

    def test_busy_vehicle_next_task_is_persisted_before_execution(self):
        fleet = self.server.fleet
        engine = fleet.execution
        name = 'SIM-004'
        engine.feedback_unavailable.update(set(engine.positions) - {name})
        status, receipt = self.submit('running-first', 'LM_63_49')
        self.assertEqual(status, 200, receipt)
        fleet.step()
        current = engine.pending[name]['task_id']
        status, receipt = self.submit('next-task', 'LM_23_13')
        self.assertEqual(status, 200, receipt)
        allocation = receipt['assignments']['next-task']
        self.assertEqual(allocation['robot'], name)
        self.assertTrue(allocation['pending_execution'])
        self.assertGreaterEqual(allocation['submission_to_assignment_ms'], 0)
        self.assertEqual(engine.pending[name]['task_id'], current)
        _, saved = engine.service.journal.load()
        self.assertEqual(saved['fleet']['jobs']['next-task']['next_robot'], name)
        for _ in range(40):
            fleet.step()
        self.assertEqual(engine.fleet.jobs['next-task'].state, 'DONE')
        self.assertEqual(engine.fleet.jobs['next-task'].robot, name)

    def test_loaded_handoff_waits_for_clearance_and_reassigns(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            storage = Dispatch(root / 'maps.sqlite3', None, local_executor=False)
            try:
                fleet = LightweightFleet(storage, root, size=10, background=False)
                try:
                    self.exercise_loaded_handoff(fleet)
                finally:
                    fleet.close()
            finally:
                storage.db.close()

    def exercise_loaded_handoff(self, fleet):
        engine = fleet.execution
        request = dict(id='loaded-handoff', type='transport', pickup='HOME_1', dropoff='DROP_1')
        envelope = {'session': fleet.session, 'connection': fleet.connection_id}
        self.assertEqual(fleet.command({**envelope, 'request': request})[0], 200)
        job = engine.fleet.jobs[request['id']]
        for _ in range(10):
            fleet.step()
            if job.loaded:
                engine.closed_edges.add(('J_1', 'DROP_1'))
            if job.loaded and engine.pending.get(job.robot):
                break
        self.assertTrue(job.loaded)
        old, previous = job.robot, job.execution_id
        operation = {**envelope, 'request': dict(operation='handoff_loaded', id=job.id,
                                                  bay='HP_SWAP', clearance='PP_ISOLATE')}
        engine.feedback_unavailable.add(old)
        self.assertEqual(fleet.command(operation)[0], 409)
        self.assertEqual(job.execution_id, previous)
        self.assertEqual(engine.cargo[job.id]['location'], old)
        engine.feedback_unavailable.remove(old)
        engine.closed_edges.remove(('J_1', 'DROP_1'))
        status, result = fleet.command(operation)
        self.assertEqual(status, 200, result)
        engine.closed_edges.add(('HP_SWAP', 'PP_ISOLATE'))
        for _ in range(18):
            fleet.step()
        self.assertEqual(engine.positions[old], 'HP_SWAP')
        self.assertEqual(engine.cargo[job.id]['location'], 'HP_SWAP')
        self.assertEqual(job.robot, old)
        self.assertEqual(job.handoff['phase'], 'clearing')
        self.assertIn('HP_SWAP', engine.fleet.workstations)
        engine.closed_edges.remove(('HP_SWAP', 'PP_ISOLATE'))
        for _ in range(40):
            fleet.step()
            if job.state == 'DONE':
                break
        self.assertEqual(job.state, 'DONE')
        self.assertNotEqual(job.robot, old)
        self.assertTrue(engine.fleet.robots[old].blocked)
        self.assertEqual(engine.positions[old], 'PP_ISOLATE')
        self.assertEqual(engine.cargo[job.id], {'location': 'DROP_1', 'origin': 'HP_SWAP'})
        self.assertEqual(engine.overlap_cells, 0)

    def test_apply_and_run_modified_route_from_editor(self):
        path, data, removed = self.candidate()
        prior_cargo = {'location': 'AP_SHIP_01', 'origin': 'AP_PICK_01', 'pallet': '1000x1200'}
        self.server.fleet.execution.cargo['delivered-before-edit'] = prior_cargo
        status, result = self.call(path, {'map': data, 'use': True})
        self.assertEqual(status, 200, result)
        loaded = result['id']
        self.assertEqual(result['map_id'], loaded)
        self.assertEqual(self.call('/api/fleet/state')[1]['map_id'], loaded)
        self.assertEqual(self.call('/api/fleet/map')[1]['map_id'], loaded)
        self.assertEqual(self.server.dispatch.state()['map_id'], loaded)
        self.assertEqual(self.server.fleet.execution.cargo['delivered-before-edit'], prior_cargo)
        self.assertEqual(self.submit('new-route')[0], 200)
        for _ in range(10):
            self.server.fleet.step()
        engine = self.server.fleet.execution
        job = engine.fleet.jobs['new-route']
        self.assertEqual(job.state, 'DONE')
        route, = engine.last_routes[job.execution_id]
        self.assertEqual(route, ['CP_24', 'LM_DOCK_24', 'LM_24_13', 'LM_23_13'])
        self.assertNotIn(removed, list(zip(route, route[1:])))
        with tempfile.TemporaryDirectory() as new_session:
            reopened = LightweightFleet(self.server.dispatch, Path(new_session), background=False)
            try:
                self.assertEqual(reopened.map_id, loaded)
                self.assertNotIn(removed, reopened.execution.graph.edges)
            finally:
                reopened.close()

    def test_running_segment_blocks_map_switch(self):
        path, data, _ = self.candidate()
        old = self.server.fleet.map_id
        self.assertEqual(self.submit('running')[0], 200)
        self.server.fleet.step()
        self.assertTrue(self.server.fleet.execution.active)
        status, result = self.call(path, {'map': data, 'use': True})
        self.assertEqual(status, 409, result)
        self.assertEqual(self.server.fleet.map_id, old)

    def test_map_apply_checks_forklift_clearance_before_switching(self):
        path, data, _ = self.candidate()
        old = self.server.fleet.map_id
        status, _ = self.fleet_request({'operation': 'set_vehicle_profile', 'robot': 'SIM-004',
                                       'model': 'SFL-CDD20-Y'})
        self.assertEqual(status, 200)
        for curve in data['advancedCurveList']:
            if curve['startPos']['instanceName'] == 'CP_24':
                curve['clearance_width_m'] = .70
        status, result = self.call(path, {'map': data, 'use': True})
        self.assertEqual(status, 409, result)
        self.assertIn('符合叉车外廓及转向要求的出口', result['error'])
        self.assertEqual(self.server.fleet.map_id, old)

    def test_occupied_station_must_stay_in_place(self):
        path, data, _ = self.candidate()
        station = next(p for p in data['advancedPointList'] if p['instanceName'] == 'CP_06')
        station['pos']['x'] += .1
        status, result = self.call(path, {'map': data, 'use': True})
        self.assertEqual(status, 409, result)
        self.assertIn('CP_06', result['error'])
        self.assertNotEqual(self.server.fleet.map_id, result['id'])
