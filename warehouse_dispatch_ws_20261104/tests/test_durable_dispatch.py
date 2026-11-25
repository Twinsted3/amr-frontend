import json
from pathlib import Path
import sqlite3
import subprocess
import sys
import tempfile
import time
import unittest

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src/warehouse_sim'))
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch, Journal, DurabilityError


class DurableTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):cls.graph=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.db=Path(self.tmp.name)/'state.sqlite3';self.handles=[]
    def tearDown(self):
        for h in self.handles:h.close()
        self.tmp.cleanup()
    def service(self, **kwargs):
        f=Fleet(self.graph,['agv01','agv02'],**kwargs)
        s=DurableDispatch(f,self.db,'map-v1');self.handles.append(s);return s
    def create(self,s):return s.request(dict(id='business-1',type='move',goal='AP_PICK_01'),time.monotonic())
    def ready(self,s):
        now=time.monotonic();s.fleet.update('agv01','CP_06',.8,now);s.fleet.update('agv02','CP_12',.8,now)
        return now
    def test_accepted_task_survives_restart_and_remains_idempotent(self):
        s=self.service();self.create(s);s.close();s=self.service();self.create(s)
        self.assertEqual(list(s.fleet.jobs),['business-1']);self.assertTrue(s.fenced)

    def test_batch_booking_maximizes_unique_slots_and_is_durable(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.robots['agv01'].model = 'lift'
        request = dict(operation='submit_batch', tasks=[
            dict(id='A', type='standby', goal='LM_DOCK_06'),
            dict(id='B', type='standby', goal='LM_DOCK_12', requirements={'models': ['lift']}),
            dict(id='C', type='standby', goal='LM_DOCK_18'),
        ])
        jobs, commands = service.request(request, now, preassign_batch=True)
        self.assertEqual(commands, [])
        self.assertEqual([job.next_robot for job in jobs], ['agv02', 'agv01', None])
        self.assertEqual(jobs[2].admission['reasons'], {'slot_full': 2})
        self.assertTrue(all(job.state == 'QUEUED' for job in jobs))
        first = [job.first_allocation_at for job in jobs]
        self.assertTrue(all(first[:2]))
        service.request(request, now + .25, preassign_batch=True)
        self.assertEqual([job.first_allocation_at for job in jobs], first)
        self.assertFalse(service.fleet.destinations)
        self.assertFalse(service.fleet.workstations)
        _, snapshot = service.journal.load()
        self.assertEqual([snapshot['fleet']['jobs'][job.id]['next_robot'] for job in jobs],
                         ['agv02', 'agv01', None])

    def test_mixed_retry_batch_preserves_original_bookings_on_failure(self):
        service = self.service()
        now = self.ready(service)
        original = dict(id='existing', type='standby', goal='LM_DOCK_06')
        service.request(original, now, preassign=True)
        job = service.fleet.jobs['existing']
        booking = (job.next_robot, job.first_allocation_at)
        request = dict(operation='submit_batch', tasks=[dict(original, id='new'), dict(original, goal='LM_DOCK_12')])
        with self.assertRaisesRegex(ValueError, 'reused'):
            service.request(request, now, preassign_batch=True)
        self.assertNotIn('new', service.fleet.jobs)
        self.assertEqual((job.next_robot, job.first_allocation_at), booking)
        _, snapshot = service.journal.load()
        self.assertNotIn('new', snapshot['fleet']['jobs'])

    def test_queued_edit_persists_and_rejects_stale_or_started_updates(self):
        s = self.service()
        self.create(s)
        replacement = dict(id='business-1', type='standby', goal='LM_DOCK_06', priority=100)
        update = dict(operation='update', id='business-1', task=replacement,
                      expected=['move', ['AP_PICK_01'], 0])
        s.request(update, time.monotonic())
        s.request(update, time.monotonic())
        j = s.fleet.jobs['business-1']
        self.assertEqual((j.kind, j.goals, j.priority), ('standby', ['LM_DOCK_06'], 100))
        stale = dict(update, task=dict(replacement, goal='LM_DOCK_12'))
        with self.assertRaises(ValueError):
            s.request(stale, time.monotonic())
        self.assertEqual(j.goals, ['LM_DOCK_06'])
        commands = s.tick(self.ready(s))
        self.assertTrue(commands)
        with self.assertRaises(ValueError):
            s.request(dict(update, expected=['standby', ['LM_DOCK_06'], 100]), time.monotonic())
        s.close()
        restored = self.service()
        self.assertEqual(restored.fleet.jobs['business-1'].goals, ['LM_DOCK_06'])

    def test_removing_vehicle_preserves_history_and_physical_charger_occupation(self):
        service = self.service()
        now = self.ready(service)
        self.create(service)
        service.request(dict(operation='disable_vehicle', robot='agv01'), now)
        service.traffic = {'active': {'agv01': {}}}
        with self.assertRaises(ValueError):
            service.request(dict(operation='remove_vehicle', robot='agv01'), now)
        service.traffic = {}
        service.request(dict(operation='remove_vehicle', robot='agv01'), now)
        self.assertEqual(service.fleet.robots['agv01'].station, 'CP_06')
        self.assertEqual([bid['robot'] for bid in service.fleet.bids(service.fleet.jobs['business-1'], now)], ['agv02'])
        self.assertNotEqual(service.fleet.available_charger('agv02'), 'CP_06')
        service.close()
        restored = self.service()
        self.assertEqual(restored.fleet.robots['agv01'].dispatch_state, 'removed')
        self.assertIn('business-1', restored.fleet.jobs)

    def test_manual_charge_retries_once_and_holds_the_queued_charger(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.update('agv01', 'LM_DOCK_06', .7, now)
        request = dict(operation='request_charge', id='charge-1', robot='agv01', goal='CP_06')
        service.request(request, now)
        service.request(request, now)
        job = service.fleet.jobs['charge-1']
        self.assertEqual((job.kind, job.charge_trigger, job.goals), ('charge', 'manual', ['CP_06']))
        with self.assertRaises(ValueError):
            service.request(dict(request, id='charge-2'), now)
        with self.assertRaises(ValueError):
            service.request(dict(request, goal='CP_18'), now)
        service.request(dict(operation='pause', id=job.id), now)
        other = dict(id='park-at-charge', type='standby', goal='CP_06', robot='agv02')
        service.request(other, now)
        self.assertEqual(service.fleet.bids(service.fleet.jobs[other['id']], now), [])
        service.request(dict(operation='disable_vehicle', robot='agv01'), now)
        with self.assertRaises(ValueError):
            service.request(dict(operation='remove_vehicle', robot='agv01'), now)

    def test_fixed_charge_waits_for_physical_departure(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.update('agv01', 'LM_DOCK_06', .7, now)
        service.request(dict(operation='request_charge', id='fixed', robot='agv01', goal='CP_12'), now)
        self.assertEqual(service.tick(now), [])
        job = service.fleet.jobs['fixed']
        self.assertIn('占用', job.reason)
        service.fleet.update('agv02', 'LM_DOCK_12', .7, now)
        self.assertEqual(service.tick(now, positions={'agv02': (12,7)}), [])
        self.assertEqual(service.tick(now), [])
        self.assertNotIn('CP_12', service.fleet.chargers)
        self.assertEqual(service.tick(now, positions={'agv02': (12,10)})[0]['goal'], 'CP_12')
        self.assertEqual(service.fleet.chargers['CP_12'], 'agv01')

    def test_automatic_manual_charge_waits_for_current_task_and_chooses_at_dispatch(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.update('agv01', 'CP_06', .7, now)
        service.request(dict(id='out', type='standby', goal='LM_DOCK_06', robot='agv01'), now)
        out = service.tick(now)[0]
        request = dict(operation='request_charge',id='nearest',robot='agv01')
        service.request(request, now)
        job = service.fleet.jobs['nearest']
        self.assertEqual((job.goals, job.charge_mode), ([], 'nearest'))
        self.assertEqual(service.tick(now), [])
        self.assertIn('其他任务', job.reason)
        service.route_event(dict(event='arrived',robot='agv01',station='LM_DOCK_06',task_id=out['task_id']),now)
        service.fleet.update('agv02','CP_06',.7,now)
        self.assertNotEqual(service.tick(now)[0]['goal'],'CP_06')
        self.assertTrue(job.goals[0].startswith('CP_'))
        service.request(request,now)
        self.assertEqual(list(service.fleet.jobs), ['out','nearest'])

    def test_unassigned_automatic_charge_survives_restart_when_all_bays_booked(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.update('agv01','LM_DOCK_06',.7,now)
        service.request(dict(operation='request_charge',id='nearest',robot='agv01'),now)
        service.fleet.destinations.update(dict.fromkeys(('CP_06','CP_12','CP_18','CP_24'),'agv02'))
        self.assertEqual(service.tick(now), [])
        self.assertEqual(service.fleet.jobs['nearest'].goals, [])
        self.assertIn('暂无空闲', service.fleet.jobs['nearest'].reason)
        service.close()
        restored = self.service()
        self.assertEqual(restored.fleet.jobs['nearest'].goals, [])
        self.assertEqual(restored.fleet.jobs['nearest'].charge_mode, 'nearest')

    def test_stop_charging_releases_booking_and_keeps_parked_vehicle(self):
        service = self.service()
        now = self.ready(service)
        service.fleet.update('agv01', 'CP_06', .7, now)
        service.request(dict(operation='request_charge', id='charge-stop', robot='agv01'), now)
        service.tick(now)
        job = service.fleet.jobs['charge-stop']
        service.fleet.on_route(dict(event='arrived', robot='agv01', station='CP_06', task_id=job.execution_id), now)
        self.assertEqual(job.state, 'CHARGING')
        with self.assertRaises(ValueError):
            service.request(dict(operation='cancel', id=job.id), now+10)
        self.assertEqual(service.fleet.chargers['CP_06'], 'agv01')
        service.request(dict(operation='cancel', id=job.id), now)
        self.assertEqual(service.fleet.jobs[job.id].state, 'CANCELLED')
        self.assertNotIn('CP_06', service.fleet.chargers)
        self.assertEqual(service.fleet.robots['agv01'].station, 'CP_06')
        self.assertFalse(service.fleet.robots['agv01'].blocked)
        self.assertNotEqual(service.fleet.available_charger('agv02'), 'CP_06')
    def test_publish_intent_is_committed_before_transport_call(self):
        s=self.service();self.create(s);commands=s.tick(self.ready(s))
        self.assertEqual(len(commands),1);self.assertEqual(s.journal.commands()[0]['status'],'PREPARED')
        s.published(commands[0]);self.assertEqual(s.journal.commands()[0]['status'],'PUBLISHED')
    def test_restart_does_not_replay_uncertain_motion_or_trust_old_health(self):
        s=self.service();self.create(s);s.tick(self.ready(s));s.close();s=self.service()
        self.assertEqual(s.journal.commands()[0]['status'],'UNCERTAIN')
        self.assertEqual(s.fleet.jobs['business-1'].state,'RECONCILING')
        self.assertEqual(s.tick(time.monotonic()),[])
        self.assertTrue(all(r.soc is None for r in s.fleet.robots.values()))

    def test_restart_unfences_only_while_the_unverified_region_is_contained(self):
        first = self.service(feedback_handling=True)
        now = self.ready(first)
        route = dict(map_name='map-v1', database_id='route-v1', records=[])
        actions = dict(map_name='map-v1', database_id='actions-v1', records=[], loads={})
        first.reconcile(route, actions, now)
        first.request(dict(id='isolated', type='transport', robot='agv01',
                           pickup='LM_DOCK_06', dropoff='LM_06_13'), now)
        interrupted = first.tick(now)[0]
        first.close()

        resumed = self.service(feedback_handling=True)
        now = time.monotonic()
        resumed.fleet.update('agv02', 'CP_12', .8, now)
        held = resumed.fleet.jobs['isolated']
        route['records'] = [dict(body=interrupted, state='INTERRUPTED', result={})]
        route['regional_holds'] = {'agv01': dict(confirmed=True, stations=['CP_06'], execution_id=held.execution_id)}
        route['closed_edges'] = []
        self.assertEqual(resumed.reconcile(route, actions, now), [])
        self.assertTrue(resumed.fenced)

        boundary = {edge for edge in self.graph.edges if 'CP_06' in edge}
        route['closed_edges'] = sorted(boundary)
        self.assertEqual(resumed.reconcile(route, actions, now), [])
        self.assertFalse(resumed.fenced)
        self.assertEqual(resumed.fleet.dispatch_closed_edges, boundary)
        self.assertEqual(held.state, 'RECONCILING')
        self.assertEqual(resumed.fleet.workstations['LM_DOCK_06']['job'], held.id)
        resumed.request(dict(id='outside', type='move', robot='agv02', goal='LM_DOCK_12'), now)
        unrelated = resumed.tick(now, executor=route, actions=actions)[0]
        self.assertEqual(unrelated['robot'], 'agv02')
        self.assertNotIn(interrupted, resumed.synchronize(route, actions, now))
        resumed.route_event(dict(event='arrived', robot='agv01', task_id=interrupted['task_id'],
                                 command_id=interrupted['command_id'], station='LM_DOCK_06'), now)
        self.assertEqual(held.state, 'RECONCILING')
        resumed.route_event(dict(event='arrived', robot='agv02', task_id=unrelated['task_id'],
                                 command_id=unrelated['command_id'], station='LM_DOCK_12'), now)
        self.assertEqual(resumed.fleet.jobs['outside'].state, 'DONE')

        route['closed_edges'] = []
        self.assertEqual(resumed.synchronize(route, actions, now), [])
        self.assertTrue(resumed.fenced)
        self.assertEqual(resumed.tick(now), [])
        self.assertIn('agv01', resumed.regional_holds)

        route['regional_holds'] = {}
        resumed.fleet.update('agv01', 'CP_06', .8, now)
        route['records'] = []
        self.assertEqual(resumed.reconcile(route, actions, now), [])
        self.assertTrue(resumed.fenced)
        self.assertEqual(held.state, 'RECONCILING')
        self.assertEqual(resumed.reconcile(route, actions, now), [])
        self.assertTrue(resumed.fenced)
    def test_resume_cannot_bypass_restart_fence(self):
        s=self.service();self.create(s);s.close();s=self.service()
        with self.assertRaises(ValueError):s.request(dict(operation='hold_dispatch',enabled=False),time.monotonic())
        self.assertTrue(s.fleet.dispatch_paused)
    def test_old_or_wrong_robot_ack_is_not_accepted(self):
        s=self.service();self.create(s);c=s.tick(self.ready(s))[0]
        other='agv01' if c['robot']=='agv02' else 'agv02'
        s.route_event(dict(event='queued',robot=other,task_id=c['task_id']),time.monotonic())
        s.route_event(dict(event='queued',robot=c['robot'],task_id='old'),time.monotonic())
        self.assertEqual(s.journal.commands()[0]['status'],'PREPARED')
        s.route_event(dict(event='queued',robot=c['robot'],task_id=c['task_id']),time.monotonic())
        self.assertEqual(s.journal.commands()[0]['status'],'ACKNOWLEDGED')
    def test_duplicate_writer_is_refused(self):
        s=self.service()
        with self.assertRaises(DurabilityError):Journal(self.db)
    def test_changed_map_or_policy_is_refused(self):
        s=self.service();s.close()
        with self.assertRaises(DurabilityError):DurableDispatch(Fleet(self.graph,['agv01','agv02']),self.db,'different-map')
        with self.assertRaises(DurabilityError):self.service(low_soc=.3)
    def test_cancel_paused_task_is_durable(self):
        s=self.service();self.create(s)
        s.request(dict(operation='pause',id='business-1'),time.monotonic())
        s.request(dict(operation='cancel',id='business-1'),time.monotonic())
        s.close();s=self.service();self.assertEqual(s.fleet.jobs['business-1'].state,'CANCELLED')
    def test_audit_event_not_duplicated_each_tick(self):
        s=self.service();self.create(s)
        s.tick(time.monotonic());s.tick(time.monotonic())
        rows=s.journal.db.execute('SELECT body FROM audit').fetchall()
        self.assertEqual(sum(json.loads(r[0]).get('event')=='created' for r in rows),1)
    def test_transaction_error_restores_memory_and_latches_dispatch(self):
        s=self.service();self.create(s);rev=s.revision
        original=s.journal.commit
        def broken(*args,**kwargs):raise sqlite3.OperationalError('injected disk failure')
        s.journal.commit=broken
        with self.assertRaises(DurabilityError):s.tick(self.ready(s))
        self.assertEqual(s.revision,rev);self.assertEqual(s.fleet.jobs['business-1'].state,'QUEUED')
        self.assertEqual(s.journal.commands(),[])
        with self.assertRaises(DurabilityError):s.tick(time.monotonic())
        s.journal.commit=original

    def test_failed_first_allocation_does_not_change_existing_tasks_or_journal(self):
        service = self.service()
        self.create(service)
        now = self.ready(service)
        previous_revision, previous_state = service.journal.load()
        previous_job = service.fleet.jobs['business-1']
        previous_events = list(service.fleet.events)
        def broken(*args, **kwargs):
            raise sqlite3.OperationalError('disk unavailable during admission')
        service.journal.commit = broken
        with self.assertRaises(DurabilityError):
            service.request(dict(id='new-task', type='move', goal='LM_DOCK_06'), now, preassign=True)
        self.assertNotIn('new-task', service.fleet.jobs)
        self.assertIs(service.fleet.jobs['business-1'], previous_job)
        self.assertEqual(service.fleet.events, previous_events)
        self.assertEqual(service.journal.load(), (previous_revision, previous_state))
        self.assertTrue(service.failed)
    def test_sql_transaction_rolls_back_snapshot_and_duplicate_command_together(self):
        s=self.service();self.create(s);command=s.tick(self.ready(s))[0];revision=s.revision
        with self.assertRaises(DurabilityError):
            s.journal.commit(revision, s.state(), [dict(command,goal='DIFFERENT')])
        self.assertEqual(s.journal.load()[0],revision);self.assertEqual(len(s.journal.commands()),1)
    def test_actual_process_exit_after_intent_does_not_lose_or_replay_command(self):
        code='''import sys,time,os
sys.path.insert(0,sys.argv[1])
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch
f=Fleet(RouteGraph(sys.argv[2]),['agv01','agv02']);s=DurableDispatch(f,sys.argv[3],'map-v1')
s.request(dict(id='business-1',type='move',goal='AP_PICK_01'),time.monotonic())
f.update('agv01','CP_06',.8,time.monotonic());s.tick(time.monotonic())
os._exit(17)
'''
        result=subprocess.run([sys.executable,'-c',code,str(ROOT/'src/warehouse_sim'),str(ROOT/'src/warehouse_sim/maps/warehouse.smap'),str(self.db)],capture_output=True)
        self.assertEqual(result.returncode,17,result.stderr.decode(errors='replace'))
        s=self.service();self.assertEqual(s.fleet.jobs['business-1'].state,'RECONCILING')
        self.assertEqual(len(s.journal.commands()),1);self.assertEqual(s.tick(time.monotonic()),[])


if __name__=='__main__':unittest.main()
