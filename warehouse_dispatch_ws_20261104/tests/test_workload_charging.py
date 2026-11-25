"""Large-cohort charging decisions plus benchmark accounting boundaries."""
import json
from pathlib import Path
import tempfile
from types import SimpleNamespace
import unittest

from warehouse_sim.charge_benchmark import compare_charge_runs, configure_charge_benchmark
from warehouse_sim.charging_policy import ChargerObservation, plan_fleet_charge_queue
from warehouse_sim.cross_warehouse import cross_warehouse
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.lightweight_execution import LightweightExecution
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.traffic_policy import TrafficStops


class WorkloadChargingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        document, cls.positions, _, _ = cross_warehouse()
        cls.graph = RouteGraph(document=document, clearance=lambda x, y: x >= 0 and y >= 0)
        cls.small_graph = RouteGraph(Path(__file__).parents[1] / 'src/warehouse_sim/maps/warehouse.smap')

    def test_rolls_all_hundred_candidates_without_booking_forecast_bays(self):
        names = [f'r{i:03d}' for i in range(100)]
        rates = {name: {'ready': (14., 1.), 'soon': (2., 1.), 'busy': (6., 1.)} for name in names}
        refs = plan_fleet_charge_queue(names, rates, {'ready': 0., 'soon': 1., 'busy': 90.},
                                       prioritize_now={names[0]})
        self.assertEqual(refs, {names[0]: 'ready'})
        self.assertIn('ready', plan_fleet_charge_queue(names, rates, {'ready': 0.}).values())

    def test_hundred_vehicle_low_soc_queue_owns_only_unique_compatible_bays(self):
        fleet = Fleet(self.graph, self.positions)
        fleet.configure_workload_charging({'max_parallel_topups': 3})
        for index, (name, start) in enumerate(self.positions.items()):
            fleet.update(name, start, .08 if index < 9 else .17, 0.)
            fleet.robots[name].model = 'forklift'
        fleet.configure_charger_profiles({'CP_NORTH': {'models': ['other']},
                                          'CP_ZONE_2': {'feedback_required': True}})
        fleet.schedule_low_charge(0., ())
        assignments = {job.requested_robot: job.goals[0] for job in fleet.jobs.values()}
        self.assertGreater(len(assignments), 1)
        self.assertEqual(len(assignments), len(set(assignments.values())))
        self.assertEqual(len(fleet.charge_waiting) + len(assignments), 100)
        self.assertNotIn('CP_ZONE_2', assignments.values())
        self.assertNotIn('CP_NORTH', assignments.values())

    def test_urgent_business_protects_only_suitable_vehicle_and_revalidates_queued_charge(self):
        fleet = Fleet(self.small_graph, ['small', 'lift', 'spare', 'third'])
        for name, bat in [('small', .28), ('lift', .26), ('spare', .5), ('third', .7)]:
            fleet.update(name, 'LM_DOCK_06', bat, 1.)
            fleet.robots[name].model = 'lift' if name == 'lift' else 'small'
        fleet.configure_workload_charging({'station_groups': {'LM_DOCK_06': 'dock'}})
        fleet.configure_charger_profiles({'CP_06': {'feedback_required': True}})
        fleet.observe_charger('CP_06', ChargerObservation('ready', 1.))
        fleet.submit({'id': 'urgent', 'type': 'move', 'goal': 'LM_DOCK_06', 'priority': 100,
                      'requirements': {'models': ['lift']}}, 1.)
        fleet.submit({'id': 'local-demand', 'type': 'move', 'goal': 'LM_DOCK_06',
                      'requirements': {'models': ['small']}}, 1.)
        fleet.schedule_workload_topups(1., ())
        optional, = [job for job in fleet.jobs.values() if job.charge_trigger == 'workload_topup']
        self.assertEqual(optional.requested_robot, 'small')
        self.assertEqual(optional.goals, ['CP_06'])
        fleet.observe_charger('CP_06', ChargerObservation('unavailable', 2.))
        fleet.reconsider_queued_charges(2., ())
        self.assertEqual(optional.state, 'CANCELLED')
        self.assertEqual(fleet.chargers, {})

    def test_charge_policy_checkpoint_restored(self):
        with tempfile.TemporaryDirectory() as directory:
            database = Path(directory) / 'dispatch.sqlite3'
            before = Fleet(self.small_graph, ['r'])
            before.configure_workload_charging({'station_groups': {'LM_DOCK_06': 'dock'}, 'max_wait_ticks': 30})
            dispatch = DurableDispatch(before, database, 'warehouse')
            dispatch.close()
            after = Fleet(self.small_graph, ['r'])
            dispatch = DurableDispatch(after, database, 'warehouse')
            try:
                self.assertEqual(before.workload_charging, after.workload_charging)
            finally:
                dispatch.close()

    def test_low_soc_takes_reachable_bay_before_discretionary_departure(self):
        fleet = Fleet(self.small_graph, ['topup', 'low', 'spare'])
        for name, bat in [('topup', .28), ('low', .75), ('spare', .8)]:
            fleet.update(name, 'LM_DOCK_06', bat, 1.)
        fleet.configure_workload_charging({})
        fleet.submit({'id': 'local-demand', 'type': 'move', 'goal': 'LM_DOCK_06'}, 1.)
        fleet.schedule_workload_topups(1., ())
        optional, = [job for job in fleet.jobs.values() if job.kind == 'charge']
        self.assertEqual(optional.requested_robot, 'topup')
        fleet.update('low', 'LM_DOCK_06', .14, 2.)
        fleet.reconsider_queued_charges(2., ())
        fleet.schedule_low_charge(2., ())
        active, = [job for job in fleet.jobs.values() if job.kind == 'charge' and job.state == 'QUEUED']
        self.assertEqual(optional.state, 'CANCELLED')
        self.assertEqual(active.requested_robot, 'low')
        self.assertEqual(active.goals, optional.goals)

    def test_discretionary_charge_requires_current_compatible_demand(self):
        fleet = Fleet(self.small_graph, ['topup', 'spare'])
        for name in fleet.robots:
            fleet.update(name, 'LM_DOCK_06', .27 if name == 'topup' else .7, 1.)
        fleet.configure_workload_charging({})
        fleet.schedule_workload_topups(1., ())
        self.assertFalse(fleet.jobs)
        demand = fleet.submit({'id': 'local-demand', 'type': 'move', 'goal': 'LM_DOCK_06'}, 1.)
        fleet.schedule_workload_topups(1., ())
        optional, = [job for job in fleet.jobs.values() if job.kind == 'charge']
        demand.state = 'DONE'
        fleet.reconsider_queued_charges(2., ())
        self.assertEqual(optional.state, 'CANCELLED')

    def test_paired_accounting_uses_documented_charge_rate_and_equal_horizon(self):
        reports = []
        for optimized in (False, True):
            fleet = Fleet(self.small_graph, ['r'])
            fleet.update('r', 'LM_DOCK_06', .15, 0.)
            engine = SimpleNamespace(fleet=fleet, tick=0, soc={'r': .15}, feedback_unavailable=set())
            metrics = configure_charge_benchmark(engine, optimized=optimized, initial_soc={'r': .15},
                                                 station_groups={}, tick_seconds=20)
            self.assertAlmostEqual(engine.charge_gain_per_tick['CP_06'] * 360, .70)
            self.assertEqual(fleet.predictive_charging, optimized)
            self.assertEqual(fleet.workload_charging is not None, optimized)
            engine.tick = 1
            if optimized:
                engine.soc['r'] += .10
            metrics.observe(engine)
            reports.append(metrics.report(engine))
        baseline, optimized = reports
        self.assertEqual(baseline['by_state_modeled_vehicle_seconds']['waiting'], 20)
        self.assertEqual(compare_charge_runs(baseline, optimized)['charging_unavailability_reduction_pct'], 100.)
        with self.assertRaises(ValueError):
            compare_charge_runs(baseline, {**optimized, 'measured_ticks': 2})

    def test_released_vehicle_occupying_berth_is_available_for_business(self):
        fleet = Fleet(self.small_graph, ['r'])
        fleet.update('r', 'CP_06', .8, 0.)
        engine = SimpleNamespace(fleet=fleet, tick=0, soc={'r': .8}, feedback_unavailable=set())
        metrics = configure_charge_benchmark(engine, optimized=True, initial_soc={}, station_groups={})
        charge = fleet.queue_autocharge('r', 'CP_06', 0.)
        charge.state = 'DONE'
        fleet.finished_at['r'] = charge.id
        engine.tick = 1
        metrics.observe(engine)
        report = metrics.report(engine)
        self.assertEqual(report['post_charge_berth_ticks'], 1)
        self.assertEqual(report['total_charge_vehicle_ticks'], 0)

    def test_modeled_handling_retains_cargo_until_due_across_checkpoint(self):
        positions = {'r': 'LM_DOCK_06'}
        stops = TrafficStops.load(self.small_graph.stations)
        fleet = Fleet(self.small_graph, positions, feedback_handling=True)
        fleet.robots['r'].performance = {'handling_s': 25.}
        with tempfile.TemporaryDirectory() as directory:
            dispatch = DurableDispatch(fleet, Path(directory) / 'dispatch.sqlite3', 'warehouse')
            try:
                engine = LightweightExecution(dispatch, positions, stops)
                configure_charge_benchmark(engine, optimized=True, initial_soc={}, station_groups={})
                dispatch.request({'id': 'freight', 'type': 'transport', 'pickup': 'LM_DOCK_06',
                                  'dropoff': 'LM_DOCK_12'}, 0.)
                for _ in range(4):
                    engine.step()
                    if engine.pending_handling:
                        break
                due = engine.pending_handling['r']['due']
                self.assertEqual(due, engine.tick + 2)
                snapshot = json.loads(json.dumps(engine.checkpoint()))
                resumed = LightweightExecution(dispatch, positions, stops)
                resumed.restore_checkpoint(snapshot)
                resumed.step()
                self.assertEqual(resumed.cargo['freight']['location'], 'LM_DOCK_06')
                resumed.step()
                self.assertEqual(resumed.cargo['freight']['location'], 'r')
                self.assertTrue(fleet.jobs['freight'].loaded)
            finally:
                dispatch.close()


if __name__ == '__main__':
    unittest.main()
