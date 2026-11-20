import json
import sys
from pathlib import Path
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT/'src/warehouse_sim'))
from warehouse_sim.route_graph import RouteGraph, occupied_cells
from warehouse_sim.fleet_core import Fleet


class FleetTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')

    def setUp(self):
        self.f = Fleet(self.graph, ['agv01', 'agv02'])
        self.f.update('agv01', 'CP_06', .8, 0)
        self.f.update('agv02', 'CP_12', .8, 0)

    def submit(self, id='j1', **kw):
        return self.f.submit(dict(id=id, type='transport', pickup='AP_PICK_01',
                                  dropoff='AP_SHIP_01', **kw), 0)

    def arrive(self, j, now):
        self.f.on_route(dict(event='arrived', robot=j.robot,
                             station=j.goals[j.index], task_id=j.execution_id), now)

    def test_factory_graph_all_pairs(self):
        for a in self.graph.stations:
            for b in self.graph.stations:
                self.assertEqual(self.graph.route(a, b)[-1], b)

    def test_bid_excludes_low_battery(self):
        self.f.update('agv01', 'AP_PICK_01', .10, 0)
        j = self.submit()
        self.assertEqual([b['robot'] for b in self.f.bids(j, 0)], ['agv02'])

    def test_urgent_before_normal(self):
        self.f.robots['agv02'].blocked = True
        normal = self.submit('normal')
        urgent = self.submit('urgent', priority=100)
        self.f.tick(0)
        self.assertEqual(urgent.state, 'EXECUTING')
        self.assertEqual(normal.state, 'QUEUED')

    def test_transport_needs_two_arrivals_and_handling(self):
        j = self.submit()
        self.f.tick(0)
        self.arrive(j, 0)
        self.assertEqual(j.state, 'HANDLING')
        self.assertFalse(j.loaded)
        self.f.tick(2)
        self.assertTrue(j.loaded)
        self.assertEqual(j.index, 1)
        self.arrive(j, 2)
        self.f.update(j.robot, j.goals[1], .7, 3)
        self.f.tick(4)
        self.assertEqual(j.state, 'DONE')
        self.assertFalse(j.loaded)

    def test_stale_completion_cannot_complete_new_leg(self):
        j = self.submit()
        self.f.tick(0)
        old = j.execution_id
        self.arrive(j, 0)
        self.f.tick(2)
        self.f.on_route(dict(event='arrived', robot=j.robot, station=j.goals[1], task_id=old), 2)
        self.assertEqual(j.state, 'EXECUTING')

    def test_idempotency_and_conflict(self):
        self.submit()
        self.submit()
        self.assertEqual(len(self.f.jobs), 1)
        with self.assertRaises(ValueError):
            self.f.submit(dict(id='j1', type='move', goal='CP_06'), 0)

    def test_offline_robot_no_assignment(self):
        j = self.submit()
        self.assertEqual(self.f.tick(5), [])
        self.assertEqual(j.state, 'QUEUED')

    def test_stale_running_robot_cancel_keeps_ownership(self):
        j = self.submit()
        self.f.tick(0)
        cmds = self.f.tick(5)
        self.assertTrue(cmds[0]['cancel'])
        self.assertEqual(self.f.robots[j.robot].job, j.id)
        self.assertEqual(j.state, 'CANCELING')

    def test_failure_blocks_loaded_robot(self):
        j = self.submit()
        self.f.tick(0)
        self.arrive(j, 0)
        self.f.tick(2)
        self.f.on_route(dict(event='failed', robot=j.robot, task_id=j.execution_id), 3)
        self.assertTrue(j.loaded)
        self.assertTrue(self.f.robots[j.robot].blocked)
        self.assertEqual(j.state, 'FAILED')

    def test_charging_waits_for_real_soc(self):
        self.f.update('agv01', 'CP_06', .1, 0)
        self.f.tick(0)
        j = next(j for j in self.f.jobs.values() if j.kind == 'charge')
        self.arrive(j, 0)
        self.assertEqual(j.state, 'CHARGING')
        self.f.tick(1)
        self.assertEqual(j.state, 'CHARGING')
        self.f.update('agv01', 'CP_06', .81, 2)
        self.f.tick(2)
        self.assertEqual(j.state, 'DONE')

    def test_charger_booking_excludes_other_vehicle(self):
        self.f.chargers['CP_18'] = 'agv01'
        j = self.f.submit(dict(id='c', type='charge', robot='agv02', goal='CP_18'), 0)
        self.assertEqual(self.f.bids(j, 0), [])

    def test_cancel_queued_does_not_dispatch(self):
        j = self.submit()
        self.f.cancel(j.id)
        self.assertEqual(self.f.tick(0), [])
        self.assertEqual(j.state, 'CANCELLED')

    def test_failure_does_not_free_charge_booking(self):
        j = self.f.submit(dict(id='c', type='charge', robot='agv01', goal='CP_18'), 0)
        self.f.tick(0)
        self.f.on_route(dict(event='failed', robot=j.robot, task_id=j.execution_id), 1)
        self.assertIn('CP_18', self.f.chargers)

    def test_swept_cells_detect_same_corridor_conflict(self):
        forward = self.graph.path_points(self.graph.route('LM_13_26', 'LM_23_26'))
        crossing = self.graph.path_points(self.graph.route('LM_23_20', 'LM_23_26'))
        self.assertTrue(occupied_cells(forward) & occupied_cells(crossing))
        self.assertFalse(occupied_cells([(6., 5., 0.)]) & occupied_cells([(24., 5., 0.)]))


if __name__ == '__main__':
    unittest.main()
