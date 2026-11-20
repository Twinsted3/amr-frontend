"""Exercise the shipped executor callbacks with fake action futures, without ROS."""
import ast
import json
import math
from pathlib import Path
from tempfile import TemporaryDirectory
import time
from types import SimpleNamespace as NS
import unittest

ROOT = Path(__file__).resolve().parents[1]
import sys
sys.path.insert(0, str(ROOT/'src/warehouse_sim'))
from warehouse_sim.route_graph import RouteError, RouteGraph, occupied_cells
from warehouse_sim.navigation_recovery import remaining_route
from warehouse_sim.cycle_recovery import CycleMove
from warehouse_sim.traffic_policy import STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE, TrafficStops, next_segment, wait_cycles

tree = ast.parse((ROOT/'src/warehouse_sim/warehouse_sim/route_dispatcher.py').read_text(encoding='utf8'))
definition = next(n for n in tree.body if isinstance(n, ast.ClassDef) and n.name == 'RouteDispatcher')
namespace = dict(Node=object, math=math, time=__import__('time'), json=json,
                 RouteError=RouteError, occupied_cells=occupied_cells,
                 next_segment=next_segment, wait_cycles=wait_cycles,
                 STOP_FOOTPRINT_RADIUS=STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE=STOP_TOLERANCE,
                 remaining_route=remaining_route, FollowPath=NS(Result=NS(TF_ERROR=102)),
                 GoalStatus=NS(STATUS_SUCCEEDED=4,STATUS_CANCELED=5,STATUS_ABORTED=6))
exec(compile(ast.Module(body=[definition], type_ignores=[]), 'route_dispatcher.py', 'exec'), namespace)
RouteDispatcher = namespace['RouteDispatcher']


class CallbackTests(unittest.TestCase):
    def setUp(self):
        self.node = RouteDispatcher.__new__(RouteDispatcher)
        n = self.node
        n.graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
        n.traffic_stops = TrafficStops.load(n.graph.stations)
        n.active, n.failed, n.pending = {}, {}, []
        n.positions = {'agv01': 'CP_06'}
        n.poses = {'agv01': (6., 5., math.pi/2)}
        n.task_ids = {'agv01': 'j:1'}
        n.waits, n.odom_at, n.stopped_since = {}, {}, {}
        n.store, n.segmented = None, False
        n.cycle_plan, n.deadlock_reports, n.deadlock_last_search = None, {}, {}
        self.events = []
        n.publish = lambda event, **kw: self.events.append(dict(event=event, **kw))

    def current(self):
        t = dict(goal='AP_PICK_01', goals=['AP_PICK_01'], index=0,
                 nodes=['CP_06', 'AP_PICK_01'], cells={(1, 1)})
        self.node.active['agv01'] = t
        return t

    def test_cancel_before_goal_acceptance_cancels_late_handle(self):
        self.current()
        self.node.on_task(NS(data=json.dumps(dict(robot='agv01', cancel=True, task_id='j:1'))))
        calls = []
        handle = NS(accepted=True, cancel_goal_async=lambda: calls.append('cancel'),
                    get_result_async=lambda: NS(add_done_callback=lambda cb: None))
        self.node.goal_response('agv01', NS(result=lambda: handle))
        self.assertEqual(calls, ['cancel'])

    def test_cancel_wrong_generation_cannot_cancel_current_goal(self):
        current = self.current()
        self.node.on_task(NS(data=json.dumps(dict(robot='agv01', cancel=True, task_id='old'))))
        self.assertNotIn('cancel_requested', current)
        self.assertEqual(self.events[-1]['event'], 'rejected')

    def test_cancel_pending_has_terminal_event(self):
        self.node.pending = [dict(robot='agv01', goal='AP_PICK_01')]
        self.node.on_task(NS(data=json.dumps(dict(robot='agv01', cancel=True, task_id='j:1'))))
        self.assertTrue(any(e['event'] == 'cancelled' for e in self.events))
        self.assertEqual(self.node.pending, [])
        self.assertFalse(next(e for e in self.events if e['event']=='cancelled')['motion_started'])
    def test_runtime_map_edit_holds_motion_instead_of_hot_replacing_graph(self):
        import tempfile,os
        with tempfile.TemporaryDirectory() as folder:
            p=Path(folder)/'map.smap';p.write_text('{}')
            self.node.smap_path=p;self.node.graph_mtime=p.stat().st_mtime_ns
            self.node.map_change_requires_restart=False;old=self.node.graph
            os.utime(p,ns=(p.stat().st_atime_ns,self.node.graph_mtime+1000000))
            self.assertFalse(self.node.refresh_graph());self.assertIs(self.node.graph,old)
            self.assertTrue(self.node.map_change_requires_restart)
            self.assertEqual(self.events[-1]['event'],'map_change_requires_restart')

    def test_action_success_at_wrong_pose_retains_reservation(self):
        self.current()
        response = NS(status=4, result=NS(error_code=0, error_msg=''))
        self.node.result('agv01', NS(result=lambda: response))
        self.assertIn('agv01', self.node.failed)
        self.assertEqual(self.events[-1]['event'], 'failed')

    def test_abort_preserves_cells(self):
        self.current()
        response = NS(status=6, result=NS(error_code=101, error_msg='blocked'))
        self.node.result('agv01', NS(result=lambda: response))
        self.assertEqual(self.node.failed['agv01']['cells'], {(1, 1)})

    def test_transient_tf_abort_waits_and_reuses_its_reserved_segment_once(self):
        n = self.node
        task = self.current()
        task['nodes'] = n.graph.route('CP_06','LM_DOCK_06')
        task['points'] = n.graph.path_points(task['nodes'])
        task['segment_goal'] = 'LM_DOCK_06'
        task['cells'] = occupied_cells(task['points'])
        n.poses['agv01'] = task['points'][3]
        n.action_clients = {'agv01': NS(server_is_ready=lambda: True)}
        sent = []
        n.start_action = lambda robot, points: sent.append((robot,points))
        response = NS(status=6, result=NS(error_code=102, error_msg='no transform'))
        future = NS(result=lambda: response)
        n.result('agv01',future)
        self.assertEqual(self.events[-1]['event'],'localization_wait')
        self.assertIs(n.reservations()['agv01'],task)
        n.resume_after_localization_loss('agv01',task)
        self.assertFalse(sent)
        n.odom_at['agv01'] = time.monotonic()
        n.stopped_since['agv01'] = time.monotonic()-.3
        n.resume_after_localization_loss('agv01',task)
        self.assertEqual(sent[0][1][0],n.poses['agv01'])
        self.assertTrue(occupied_cells(sent[0][1]) <= task['cells'])
        self.assertEqual(self.events[-1]['event'],'localization_resumed')
        n.result('agv01',future)
        self.assertEqual(self.events[-1]['event'],'failed')
        self.assertIs(n.failed['agv01'],task)
    def test_pause_cancel_result_holds_reservation_without_failing_mission(self):
        task=self.current();task['pause_requested']=True
        response=NS(status=5,result=NS(error_code=0,error_msg='cancelled'))
        self.node.result('agv01',NS(result=lambda:response))
        self.assertTrue(self.node.active['agv01']['paused'])
        self.assertEqual(self.node.active['agv01']['cells'],{(1,1)})
        self.assertEqual(self.events[-1]['event'],'paused')

    def test_map_mismatch_rejects_before_any_motion(self):
        self.node.smap_path = ROOT/'src/warehouse_sim/maps/warehouse.smap'
        self.node.on_task(NS(data=json.dumps(dict(robot='agv01',goal='AP_PICK_01',task_id='new',map_name='wrong'))))
        self.assertEqual(self.node.pending,[])
        self.assertEqual(self.events[-1]['event'],'rejected')
        self.assertEqual(self.events[-1]['task_id'],'new')

    def test_policy_yield_and_no_stop_are_checked_against_active_map(self):
        self.assertIn('CP_06', self.node.traffic_stops.yield_bays)
        policy = dict(waiting_points=['LM_DOCK_06'], yield_bays=['LM_DOCK_12'],
                      no_stop_stations=['AP_PICK_01'])
        with TemporaryDirectory() as folder:
            path = Path(folder)/'traffic.json'
            path.write_text(json.dumps(policy), encoding='utf8')
            self.node.traffic_stops = TrafficStops.load(self.node.graph.stations, path)
            self.assertEqual(self.node.traffic_stops.waiting_points, {'LM_DOCK_06'})
            self.assertEqual(self.node.traffic_stops.yield_bays, {'LM_DOCK_12'})
            policy['yield_bays'] = ['AP_PICK_01']
            path.write_text(json.dumps(policy), encoding='utf8')
            with self.assertRaisesRegex(ValueError, 'overlaps no_stop_stations'):
                TrafficStops.load(self.node.graph.stations, path)
        self.node.on_task(NS(data=json.dumps(dict(robot='agv01', goal='AP_PICK_01', task_id='new'))))
        self.assertEqual(self.node.pending, [])
        self.assertEqual(self.events[-1]['event'], 'rejected')
        self.assertIn('planned stop forbidden', self.events[-1]['reason'])
        with self.assertRaisesRegex(ValueError, 'reserved for traffic yielding'):
            self.node.traffic_stops.validate_destinations(['LM_DOCK_12'])

    def test_no_stop_rectangle_rejects_a_waiting_point_if_the_vehicle_would_overlap_it(self):
        with TemporaryDirectory() as folder:
            path = Path(folder)/'traffic.json'
            policy = dict(waiting_points=['LM_13_26'], yield_bays=[], no_stop_stations=[],
                          no_stop_regions=[[12,23,14,24]])
            path.write_text(json.dumps(policy), encoding='utf8')
            with self.assertRaisesRegex(ValueError, 'waiting_points overlaps'):
                TrafficStops.load(self.node.graph.stations, path)

    def test_action_rejected_is_not_arrival(self):
        self.current()
        self.node.goal_response('agv01', NS(result=lambda: NS(accepted=False)))
        self.assertEqual(self.events[-1]['event'], 'failed')

    def test_fresh_tf_can_confirm_arrival_when_amcl_message_is_old(self):
        self.current()
        self.node.pose_tracker = NS(read=lambda name: ((13.,20.,0.),.01))
        response = NS(status=4,result=NS(error_code=0,error_msg=''))
        self.node.result('agv01',NS(result=lambda:response))
        self.assertEqual(self.events[-1]['event'],'arrived')
        self.assertNotIn('agv01',self.node.failed)

    def test_missing_fresh_tf_holds_reservation_for_bounded_arrival_check(self):
        self.current()
        self.node.pose_tracker = NS(read=lambda name: None)
        response = NS(status=4,result=NS(error_code=0,error_msg=''))
        self.node.result('agv01',NS(result=lambda:response))
        self.assertIn('arrival_deadline',self.node.active['agv01'])
        self.assertEqual(self.node.active['agv01']['cells'],{(1,1)})
        self.assertEqual(self.events[-1]['event'],'arrival_check_wait')

    def test_segment_can_reach_waiting_point_before_a_blocked_suffix(self):
        n = self.node
        station = 'LM_13_26'
        whole = n.graph.route('CP_06','LM_13_32')
        blocked = {(station,'LM_13_32')}
        self.assertIn(station, whole[1:-1])
        segment = next_segment(n.graph,'CP_06','LM_13_32',{station},set(),set(),blocked)
        self.assertEqual(segment, whole[:whole.index(station)+1])

    def test_deadlock_move_holds_if_cargo_ownership_is_uncertain(self):
        n = self.node
        n.io_at = time.monotonic()
        n.io_state = dict(loads={'agv01':'cargo'},cargo={'cargo':{'location':'agv02'}},records=[])
        self.assertIsNone(n.confirmed_cycle_loads(('agv01',)))
        n.io_state['cargo']['cargo']['location'] = 'agv01'
        self.assertEqual(n.confirmed_cycle_loads(('agv01',)),{'agv01':'cargo'})
        n.io_state['records'] = [dict(state='INTERRUPTED',body=dict(robot='agv01'))]
        self.assertIsNone(n.confirmed_cycle_loads(('agv01',)))

    def test_planned_move_is_discarded_if_the_bay_is_occupied_before_authorization(self):
        n = self.node
        n.segmented = True
        n.robot_ids = ['agv01','agv02']
        n.positions['agv02'] = 'LM_DOCK_06'
        n.poses['agv02'] = (6.,10.,math.pi/2)
        n.pose_first_seen = {'agv01':time.monotonic()-3}
        n.refresh_graph = lambda: True
        n.traffic_snapshot = lambda: None
        n.resolve_cycle = lambda: None
        n.stopped = lambda _robot: True
        n.confirmed_cycle_loads = lambda _robots: {}
        n.action_clients = {'agv01':NS(server_is_ready=lambda: True)}
        n.pending = [dict(robot='agv01',goal='LM_DOCK_12',goals=['LM_DOCK_12'],index=0,priority=0)]
        move = CycleMove('agv01',('CP_06','LM_DOCK_06'),None)
        n.cycle_plan = dict(robots=('agv01','agv02'),moves=[move],moving=None,tasks={'agv01':'j:1'})
        n.process()
        self.assertFalse(n.active)
        self.assertIsNone(n.cycle_plan)
        self.assertEqual(self.events[-1]['reason'],'reservation_changed')

    def test_two_vehicles_get_permission_only_after_confirmed_segment_exit(self):
        n = self.node
        n.segmented = True
        n.traffic_stops = TrafficStops(frozenset({'LM_13_26'}),frozenset(),frozenset())
        n.robot_ids = ['agv01','agv02']
        n.positions['agv02'] = 'CP_12'
        n.poses['agv02'] = (12., 5., math.pi/2)
        n.pose_first_seen = {name: time.monotonic()-3 for name in n.robot_ids}
        n.refresh_graph = lambda: True
        stale = set()
        n.refresh_pose = lambda robot: robot not in stale
        n.pose_tracker = NS()
        n.traffic_snapshot = lambda: None
        n.resolve_cycle = lambda: None
        n.action_clients = {name: NS(server_is_ready=lambda: True) for name in n.robot_ids}
        n.start_action = lambda _robot, _points: None
        n.pending = [dict(robot=robot,goal=goal,goals=[goal],index=0,priority=priority)
                     for robot,goal,priority in [('agv01','LM_13_32',100),('agv02','AP_SHIP_01',0)]]
        leader_pose = (13.,26.,math.pi/2)
        result = NS(result=lambda: NS(status=4,result=NS(error_code=0,error_msg='')))
        n.process()
        self.assertEqual(n.active['agv01']['segment_goal'], 'LM_13_26')
        self.assertNotIn('agv02', n.active)
        # Nav2 reports success before the executor has stopped/pose evidence.
        n.result('agv01',result)
        self.assertIn('arrival_response',n.active['agv01'])
        n.poses['agv01'] = leader_pose
        n.process()
        self.assertIn('arrival_response',n.active['agv01'])
        self.assertNotIn('agv02', n.active)
        n.odom_at['agv01'] = time.monotonic()
        n.stopped_since['agv01'] = time.monotonic()-.3
        stale.add('agv01')
        n.process()
        self.assertIn('arrival_response',n.active['agv01'])
        self.assertNotIn('agv02', n.active)
        stale.clear()
        n.process()
        self.assertIn('agv02', n.active)
        self.assertEqual(n.active['agv01']['segment_goal'], 'LM_13_32')
        self.assertTrue(n.active['agv01']['cells'].isdisjoint(n.active['agv02']['cells']))
        self.assertTrue(any(e['event']=='segment_released' for e in self.events))
        self.assertFalse(any(e['event']=='arrived' for e in self.events))


if __name__ == '__main__':
    unittest.main()
