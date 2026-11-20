import ast,json,math,shlex,tempfile,unittest
from pathlib import Path,PurePosixPath
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.localization_health import covariance_quality,finite_pose

ROOT=Path(__file__).parents[1]

class OperationalHardening(unittest.TestCase):
    def setUp(self):
        self.graph=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
        self.f=Fleet(self.graph,['agv01','agv02'],feedback_handling=True)
        self.f.update('agv01','AP_PICK_01',.8,10);self.f.update('agv02','AP_PICK_02',.8,10)
    def running(self):
        j=self.f.submit(dict(id='j',type='transport',pickup='AP_PICK_01',dropoff='AP_PICK_03',robot='agv01'),10)
        self.f.tick(10);return j
    def test_stale_next_leg_cannot_emit_new_motion_then_cancel(self):
        j=self.running();j.index=1;j.loaded=True;j.state='NEXT_LEG'
        self.assertEqual(self.f.tick(20),[]);self.assertEqual(j.state,'FAILED');self.assertTrue(j.loaded);self.assertTrue(self.f.robots['agv01'].blocked)
    def test_stale_handling_sends_cancel_not_pickup(self):
        j=self.running();j.state='HANDLING';j.action_sent=False
        commands=self.f.tick(20)
        self.assertEqual(len(commands),1);self.assertEqual(commands[0]['action'],'cancel');self.assertTrue(commands[0]['cancel'])
    def test_stale_paused_motion_retains_ownership_until_cancel_ack(self):
        j=self.running();j.state='PAUSED_ACTIVE';execution=j.execution_id
        commands=self.f.tick(20);self.assertEqual(j.state,'CANCELING');self.assertTrue(commands[0]['cancel'])
        self.assertEqual(self.f.robots['agv01'].job,'j')
        self.f.on_route(dict(robot='agv01',task_id=execution,event='cancelled',reason='generic cancel'),20)
        self.assertIn('telemetry',j.reason);self.assertTrue(self.f.robots['agv01'].blocked)
    def test_charging_bay_is_not_a_handling_station(self):
        with self.assertRaisesRegex(ValueError,'charging bays'):
            self.f.submit(dict(id='bad',type='transport',pickup='AP_PICK_01',dropoff='CP_12'),10)
        self.assertNotIn('bad',self.f.jobs)
    def test_same_empty_charger_destination_is_reserved_before_motion(self):
        for i in range(2):self.f.submit(dict(id=str(i),type='standby',goal='CP_24'),10)
        commands=self.f.tick(10);self.assertEqual(len(commands),1)
        self.assertEqual(self.f.jobs['1'].state,'QUEUED');self.assertIn('预约',' '.join(self.f.jobs['1'].exclusions.values()))
    def test_failed_charger_approach_keeps_resource_booking(self):
        j=self.f.submit(dict(id='a',type='move',goal='CP_24',robot='agv01'),10);self.f.tick(10);self.f.fail(j,'drive failed')
        self.f.submit(dict(id='b',type='move',goal='CP_24',robot='agv02'),10)
        self.assertEqual(self.f.tick(10),[]);self.assertEqual(self.f.destinations['CP_24'],'agv01')
    def test_endpoint_booking_is_durable_and_does_not_authorize_charging(self):
        self.f.submit(dict(id='a',type='move',goal='CP_24',robot='agv01'),10);self.f.tick(10)
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'state';s=DurableDispatch(self.f,p,'warehouse');s.close()
            restored=Fleet(self.graph,['agv01','agv02'],feedback_handling=True);s=DurableDispatch(restored,p,'warehouse')
            self.assertEqual(restored.destinations['CP_24'],'agv01');self.assertEqual(restored.chargers,{})
            s.close()
    def test_queue_explains_unavailable_vehicles(self):
        self.f.low_soc=0 # Isolate bid energy reserve from automatic-charge creation.
        self.f.robots['agv01'].blocked=True;self.f.robots['agv02'].soc=.01
        j=self.f.submit(dict(id='q',type='move',goal='AP_PICK_03'),10);self.f.tick(10)
        self.assertEqual(j.state,'QUEUED');self.assertIn('隔离',j.exclusions['agv01']);self.assertIn('电量',j.exclusions['agv02']);json.dumps(self.f.snapshot())
    def test_invalid_xy_covariance_and_transform_are_rejected(self):
        cov=[0.]*36;cov[0]=cov[7]=.01;cov[1]=cov[6]=1
        self.assertFalse(covariance_quality(cov)['ok'])
        self.assertFalse(finite_pose((float('nan'),0,0),(0,0,0,1)))
        self.assertFalse(finite_pose((0,0,0),(0,0,0,0)))
        self.assertTrue(finite_pose((1,2,0),(0,0,math.sin(.5),math.cos(.5))))
    def finished_business(self):
        j=self.f.submit(dict(id='delivery',type='move',goal='AP_PICK_01',robot='agv01'),10)
        self.f.tick(10);self.f.finish(j);return j
    def test_automatic_return_is_durable_and_not_duplicated_after_restart(self):
        self.finished_business();homes=dict(agv01='CP_06',agv02='CP_12')
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'state';s=DurableDispatch(self.f,p,'warehouse');s.queue_returns(homes,10);s.queue_returns(homes,10)
            self.assertEqual(len([j for j in self.f.jobs.values() if j.kind=='return']),1);s.close()
            f=Fleet(self.graph,['agv01','agv02'],feedback_handling=True);s=DurableDispatch(f,p,'warehouse')
            self.assertIn('park-agv01-delivery',f.jobs);s.queue_returns(homes,11)
            self.assertEqual(len([j for j in f.jobs.values() if j.kind=='return']),1);s.close()
    def test_return_storage_failure_rolls_back_new_queue_item(self):
        from warehouse_sim.durable_dispatch import DurabilityError
        self.finished_business()
        with tempfile.TemporaryDirectory() as d:
            s=DurableDispatch(self.f,Path(d)/'db','warehouse')
            def fail(*a,**kw):raise OSError('disk unavailable')
            s.journal.commit=fail
            with self.assertRaises(DurabilityError):s.queue_returns(dict(agv01='CP_06',agv02='CP_12'),10)
            self.assertNotIn('park-agv01-delivery',self.f.jobs);self.assertTrue(s.failed);s.close()
    def test_stop_ownership_excludes_other_workspaces_and_gz_tools(self):
        tree=ast.parse((ROOT/'tools/stop_warehouse.py').read_text(encoding='utf-8'))
        fn=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='owned_command')
        ns=dict(Path=PurePosixPath,shlex=shlex);exec(compile(ast.Module(body=[fn],type_ignores=[]),'owned_stop','exec'),ns)
        own=ns['owned_command'];root=PurePosixPath('/home/cylin/warehouse')
        self.assertTrue(own('/usr/bin/python3 /home/cylin/warehouse/install/warehouse_sim/lib/warehouse_sim/fleet_scheduler',root))
        self.assertFalse(own('/usr/bin/python3 /home/cylin/warehouse_backup/install/warehouse_sim/lib/warehouse_sim/fleet_scheduler',root))
        self.assertFalse(own('gz topic -l',root));self.assertTrue(own('/opt/ros/kilted/bin/ros2 launch warehouse_sim fleet_demo.launch.py',root))
