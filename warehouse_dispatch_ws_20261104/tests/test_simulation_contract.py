import json
from pathlib import Path
import sys
import tempfile
import time
import unittest

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src/warehouse_sim'))
from warehouse_sim.execution_store import ExecutionStore
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.traffic_policy import wait_cycles
from warehouse_sim.domain_owner import DomainOwner
from warehouse_sim.durable_dispatch import DurabilityError


class SimulationContract(unittest.TestCase):
    @classmethod
    def setUpClass(cls):cls.graph=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
    def setUp(self):self.tmp=tempfile.TemporaryDirectory();self.handles=[]
    def tearDown(self):
        for h in self.handles:h.close()
        self.tmp.cleanup()
    def inbox(self):
        s=ExecutionStore(Path(self.tmp.name)/'executor.db');self.handles.append(s);return s
    def service(self):
        f=Fleet(self.graph,['agv01'],feedback_handling=True)
        s=DurableDispatch(f,Path(self.tmp.name)/'dispatch.db','map');self.handles.append(s)
        f.update('agv01','CP_06',.8,time.monotonic());return s
    def adapter(self,**kw):return dict(map_name='map',database_id='same',records=[],loads={},**kw)
    def test_duplicate_inbox_has_one_side_effect_intent(self):
        s=self.inbox();c=dict(command_id='one',task_id='leg1',robot='agv01',goal='CP_06')
        self.assertTrue(s.accept(c)[1]);s.transition('one','SUCCEEDED',dict(event='arrived'))
        old,fresh=s.accept(c);self.assertFalse(fresh);self.assertEqual(old['state'],'SUCCEEDED')
        self.assertEqual(len(s.records()),1)
        with self.assertRaises(ValueError):s.accept(dict(c,goal='CP_12'))
        with self.assertRaises(ValueError):s.accept(dict(c,command_id='two'))
        self.assertEqual(s.get('one')['state'],'SUCCEEDED')
    def test_inbox_crash_retains_result_and_marks_active_uncertain(self):
        s=self.inbox();s.accept(dict(command_id='one',task_id='leg1',robot='agv01'))
        s.transition('one','ACTIVE',dict(route=['CP_06','LM_DOCK_06']));identity=s.database_id;s.close();s=self.inbox()
        self.assertEqual(s.database_id,identity);self.assertEqual(s.get('one')['state'],'INTERRUPTED')
        self.assertEqual(s.get('one')['result']['route'],['CP_06','LM_DOCK_06'])
    def test_timer_cannot_complete_feedback_handling(self):
        s=self.service();f=s.fleet;now=time.monotonic()
        f.submit(dict(id='cargo',type='transport',pickup='LM_DOCK_06',dropoff='LM_06_13'),now)
        cmd=s.tick(now)[0];s.route_event(dict(event='arrived',robot='agv01',task_id=cmd['task_id'],command_id=cmd['command_id'],station='LM_DOCK_06'),now)
        action=s.tick(now+.1)[0]
        self.assertEqual(action['action'],'pickup');self.assertFalse(f.jobs['cargo'].loaded)
        s.tick(now+100);self.assertNotEqual(f.jobs['cargo'].state,'DONE');self.assertFalse(f.jobs['cargo'].loaded)
    def test_wrong_cargo_feedback_fails_without_loaded_transfer(self):
        s=self.service();f=s.fleet;now=time.monotonic();f.submit(dict(id='cargo',type='transport',pickup='LM_DOCK_06',dropoff='LM_06_13'),now)
        c=s.tick(now)[0];s.route_event(dict(event='arrived',robot='agv01',task_id=c['task_id'],command_id=c['command_id'],station='LM_DOCK_06'),now)
        c=s.tick(now)[0];s.route_event(dict(event='handling_done',robot='agv01',task_id=c['task_id'],command_id=c['command_id'],station='LM_DOCK_06',cargo_id='OTHER',loaded=True),now)
        self.assertEqual(f.jobs['cargo'].state,'FAILED');self.assertFalse(f.jobs['cargo'].loaded)
    def test_scheduler_restart_reattaches_same_active_command(self):
        s=self.service();now=time.monotonic();a=self.adapter();s.reconcile(a,a,now)
        s.request(dict(id='job',type='move',goal='AP_PICK_01'),now);c=s.tick(now)[0];s.close();s=self.service()
        a['records']=[dict(body=c,state='ACTIVE',result={})]
        self.assertEqual(s.reconcile(a,self.adapter(),time.monotonic()),[])
        self.assertFalse(s.fenced);self.assertEqual(s.fleet.jobs['job'].state,'EXECUTING')
        self.assertEqual(len(s.journal.commands()),1)
    def test_adapter_restart_interrupt_cannot_unfence(self):
        s=self.service();now=time.monotonic();a=self.adapter();s.reconcile(a,a,now)
        s.request(dict(id='job',type='move',goal='AP_PICK_01'),now);c=s.tick(now)[0];s.close();s=self.service()
        a['records']=[dict(body=c,state='INTERRUPTED',result={})]
        s.reconcile(a,self.adapter(),time.monotonic())
        self.assertTrue(s.fenced);self.assertTrue(s.fleet.robots['agv01'].blocked)
    def test_missing_delivery_reuses_exact_committed_command(self):
        s=self.service();now=time.monotonic();a=self.adapter();s.reconcile(a,a,now)
        s.request(dict(id='job',type='move',goal='AP_PICK_01'),now);c=s.tick(now)[0];s.close();s=self.service()
        retried=s.reconcile(a,a,time.monotonic())
        self.assertEqual(retried,[c]);self.assertEqual(len(s.journal.commands()),1)
    def test_changed_executor_database_does_not_replay_motion(self):
        s=self.service();a=self.adapter();s.reconcile(a,a,time.monotonic());s.close();s=self.service()
        other=dict(a,database_id='empty-new-database')
        self.assertEqual(s.reconcile(other,a,time.monotonic()),[]);self.assertTrue(s.fenced)
    def test_wait_cycles_distinguish_active_blocker_from_circular_wait(self):
        self.assertEqual(wait_cycles({'a':{'blockers':['b']}}),[])
        self.assertEqual(wait_cycles({'a':{'blockers':['b']},'b':{'blockers':['c']},'c':{'blockers':['a']},'d':{'blockers':['a']}}),[['a','b','c']])
    def test_running_pause_requires_executor_ack_before_resume(self):
        s=self.service();now=time.monotonic();s.request(dict(id='job',type='move',goal='AP_PICK_01'),now);c=s.tick(now)[0]
        _,commands=s.request(dict(operation='pause',id='job'),now)
        self.assertTrue(commands[0]['pause']);self.assertEqual(s.fleet.jobs['job'].state,'PAUSING')
        with self.assertRaises(ValueError):s.request(dict(operation='resume',id='job'),now)
        s.route_event(dict(event='paused',robot='agv01',task_id=c['task_id'],command_id=c['command_id']),now)
        self.assertEqual(s.fleet.jobs['job'].state,'PAUSED_ACTIVE')
        _,commands=s.request(dict(operation='resume',id='job'),now)
        self.assertTrue(commands[0]['resume']);self.assertEqual(s.fleet.jobs['job'].state,'RESUMING')
    def test_lost_command_retries_same_id_and_lost_result_is_queried(self):
        s=self.service();now=time.monotonic();a=self.adapter();s.reconcile(a,a,now)
        s.request(dict(id='job',type='move',goal='AP_PICK_01'),now);c=s.tick(now)[0];s.published(c)
        self.assertEqual(s.synchronize(a,a,now),[c]);self.assertEqual(len(s.journal.commands()),1)
        a['records']=[dict(body=c,state='SUCCEEDED',result=dict(event='arrived',robot='agv01',task_id=c['task_id'],command_id=c['command_id'],station='AP_PICK_01'))]
        self.assertEqual(s.synchronize(a,self.adapter(),now),[])
        self.assertEqual(s.fleet.jobs['job'].state,'DONE')
    def test_weight_changes_are_validated_and_persisted(self):
        s=self.service();s.request(dict(operation='set_weights',weights=dict(distance=2,battery=10,congestion=3)),time.monotonic())
        with self.assertRaises(ValueError):s.request(dict(operation='set_weights',weights=dict(distance=-1,battery=0,congestion=0)),time.monotonic())
        s.close();s=self.service();self.assertEqual(s.fleet.weights,dict(distance=2,battery=10,congestion=3))
    def test_same_domain_owner_cannot_be_bypassed_using_another_state_database(self):
        role='unit-test-'+str(__import__('os').getpid())
        a=DomainOwner(role);self.handles.append(a)
        with self.assertRaises(DurabilityError):DomainOwner(role)


if __name__=='__main__':unittest.main()
