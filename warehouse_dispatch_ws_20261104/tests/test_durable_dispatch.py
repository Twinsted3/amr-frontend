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
