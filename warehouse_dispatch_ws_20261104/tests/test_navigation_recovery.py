import unittest,math,tempfile
from pathlib import Path
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.navigation_recovery import remaining_route,restore_reservation,latest_executions
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch

class RecoveryTests(unittest.TestCase):
    def setUp(self):self.graph=RouteGraph(Path(__file__).parents[1]/'src/warehouse_sim/maps/warehouse.smap')
    def test_mid_edge_recovery_never_routes_back_to_old_pickup(self):
        nodes=self.graph.route('AP_PICK_03','AP_QC_01')
        # Use an actual point on this directed route beyond several stations.
        points=self.graph.path_points(nodes);pose=points[len(points)//2]
        remaining,suffix=remaining_route(self.graph,nodes,pose)
        self.assertEqual(remaining[-1],'AP_QC_01');self.assertNotIn('AP_PICK_03',remaining)
        self.assertEqual(suffix[0],pose);self.assertLess(len(suffix),len(points))
    def test_off_path_recovery_is_rejected(self):
        with self.assertRaises(ValueError):remaining_route(self.graph,self.graph.route('CP_06','AP_PICK_01'),(40,49,0))
    def test_cancel_before_dispatch_restores_physical_hold_without_invented_route(self):
        r=dict(body=dict(task_id='leg'),result=dict(event='cancelled',motion_started=False))
        restored=restore_reservation(self.graph,r,{})
        self.assertFalse(restored['motion_started']);self.assertEqual(restored['nodes'],[])
    def test_unknown_failed_route_is_not_assumed_empty(self):
        with self.assertRaises(ValueError):restore_reservation(self.graph,dict(body=dict(task_id='leg'),result=dict(event='failed')), {})
    def test_restart_keeps_waiting_footprint_instead_of_reclaiming_released_segment(self):
        nodes = self.graph.route('CP_06', 'LM_13_26')
        record = dict(body=dict(task_id='leg'), result=dict(event='dispatched', route=nodes))
        saved = dict(task_id='leg', nodes=['LM_13_26'], points=[[13.,26.,math.pi/2]],
                     segment_goal='LM_13_26', at_checkpoint=True)
        geometry = restore_reservation(self.graph,record,saved)
        self.assertEqual(geometry['nodes'], ['LM_13_26'])
        self.assertEqual(geometry['points'],saved['points'])
        self.assertTrue(geometry['at_checkpoint'])
    def test_refused_second_order_cannot_hide_real_execution_on_restart(self):
        actual=dict(body=dict(robot='agv01',task_id='real'),state='INTERRUPTED',result=dict(event='dispatched'))
        rejected=dict(body=dict(robot='agv01',task_id='refused'),state='FAILED',result=dict(event='rejected',motion_started=False))
        self.assertEqual(latest_executions([actual,rejected])['agv01']['body']['task_id'],'real')
    def test_loaded_recovery_keeps_owner_index_and_original_destination(self):
        f=Fleet(self.graph,['agv01'],feedback_handling=True);f.update('agv01','AP_PICK_03',.7,1)
        j=f.submit(dict(id='cargo',type='transport',pickup='AP_PICK_03',dropoff='AP_QC_01'),1);f.tick(1)
        j.index=1;j.loaded=True;old=j.execution_id;f.fail(j,'cancelled',cancelled=True)
        with tempfile.TemporaryDirectory() as d:
            s=DurableDispatch(f,Path(d)/'db','warehouse')
            _,commands=s.recover_execution('cargo');c=commands[0]
            self.assertEqual(c['recovery_from'],old);self.assertEqual(c['goal'],'AP_QC_01');self.assertEqual(c['cargo_id'],'cargo')
            self.assertTrue(j.loaded);self.assertEqual(j.robot,'agv01');self.assertEqual(j.index,1);self.assertNotEqual(j.execution_id,old)
            self.assertTrue(c['command_id']);self.assertEqual(f.robots['agv01'].job,'cargo');s.close()
    def test_generic_request_cannot_bypass_recovery_preflight(self):
        with tempfile.TemporaryDirectory() as d:
            s=DurableDispatch(Fleet(self.graph,['agv01']),Path(d)/'db','warehouse')
            with self.assertRaises(ValueError):s.request(dict(operation='recover_execution',id='x'),1)
            s.close()

    def test_shipped_ros_request_callback_runs_preflight_before_recovery(self):
        import ast,json,time
        from types import SimpleNamespace as NS
        from warehouse_sim.durable_dispatch import DurabilityError
        source=(Path(__file__).parents[1]/'src/warehouse_sim/warehouse_sim/fleet_scheduler.py').read_text(encoding='utf-8')
        cls=next(n for n in ast.parse(source).body if isinstance(n,ast.ClassDef))
        callback=next(n for n in cls.body if isinstance(n,ast.FunctionDef) and n.name=='request')
        ns=dict(json=json,time=time,DurabilityError=DurabilityError)
        exec(compile(ast.Module(body=[callback],type_ignores=[]),'actual_scheduler_callback','exec'),ns)
        calls=[]
        class Adapter:
            def recover_execution(self,id):calls.append('transaction');return None,[dict(command_id='c')]
            def request(self,*a):raise AssertionError('must not bypass checked recovery')
        n=NS(durable=Adapter(),recovery_preflight=lambda id:calls.append('preflight'),send=lambda c:calls.append('publish'),fleet=NS(emit=lambda *a,**kw:calls.append('receipt')))
        ns['request'](n,NS(data=json.dumps(dict(operation='recover_execution',id='job'))))
        self.assertEqual(calls,['preflight','transaction','publish','receipt'])
