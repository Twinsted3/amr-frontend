"""Charger protocol boundaries and bounded multi-vehicle charge sequencing."""
from pathlib import Path
import tempfile
import unittest

from warehouse_sim.charging_policy import ChargerObservation, plan_charge_queue
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph


class ChargeQueueTests(unittest.TestCase):
    def test_fast_bay_queue_can_finish_earlier_than_filling_both_immediately(self):
        rates = {'a': {'fast': (2., 1.), 'slow': (30., 1.)},
                 'b': {'fast': (3., 1.), 'slow': (33., 1.)}}
        self.assertEqual(plan_charge_queue(('a', 'b'), rates, {'fast': 0., 'slow': 0.}, {}), {'a': 'fast'})

    def test_critical_vehicles_get_free_slots_even_if_waiting_is_faster(self):
        rates = {'a': {'fast': (2., 1.), 'slow': (30., 1.)},
                 'b': {'fast': (3., 1.), 'slow': (33., 1.)}}
        starts = plan_charge_queue(('a', 'b'), rates, {'fast': 0., 'slow': 0.}, {'a': 3, 'b': 3})
        self.assertEqual(set(starts), {'a', 'b'})
        self.assertEqual(set(starts.values()), {'fast', 'slow'})


class ChargerFeedbackTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = RouteGraph(Path(__file__).parents[1] / 'src/warehouse_sim/maps/warehouse.smap')

    def setUp(self):
        self.fleet = Fleet(self.graph, ['r'])
        self.fleet.robots['r'].model = 'forklift'
        self.fleet.update('r', 'LM_DOCK_06', .35, 0.)

    def test_monitored_charge_requires_fresh_ready_and_matching_release(self):
        fleet = self.fleet
        fleet.configure_charger_profiles({'CP_06': {'feedback_required': True, 'models': ['forklift']}})
        fleet.request_charge({'id': 'charge', 'robot': 'r', 'goal': 'CP_06'}, 0.)
        self.assertTrue(fleet.observe_charger('CP_06', ChargerObservation('ready', -5.)))
        self.assertFalse(fleet.tick(0.))
        self.assertTrue(fleet.observe_charger('CP_06', ChargerObservation('ready', 1.)))
        command, = fleet.tick(1.)
        execution_id = command['task_id']
        fleet.on_route({'event': 'arrived', 'robot': 'r', 'task_id': execution_id, 'station': 'CP_06'}, 2.)
        fleet.update('r', 'CP_06', .82, 2.)
        self.assertTrue(fleet.observe_charger('CP_06', ChargerObservation('charging', 2., 'r', execution_id)))
        self.assertFalse(fleet.tick(2.))
        self.assertEqual(fleet.jobs['charge'].state, 'CHARGING')
        self.assertEqual(fleet.chargers['CP_06'], 'r')
        with self.assertRaises(ValueError):
            fleet.cancel('charge', now=2.)
        self.assertFalse(fleet.observe_charger('CP_06', ChargerObservation('released', 3., 'r', 'old-execution')))
        self.assertTrue(fleet.observe_charger('CP_06', ChargerObservation('released', 4., 'r', execution_id)))
        self.assertFalse(fleet.observe_charger('CP_06', ChargerObservation('unavailable', 3.)))
        fleet.tick(4.)
        self.assertEqual(fleet.jobs['charge'].state, 'DONE')
        self.assertEqual(sum(event['event'] == 'charge_target_reached' for event in fleet.events), 1)
        fleet.update('r', 'CP_06', .82, 9.)
        fleet.submit({'id': 'move-after-charge', 'type': 'move', 'goal': 'LM_DOCK_06'}, 9.)
        self.assertFalse(fleet.tick(9.))
        self.assertTrue(fleet.observe_charger('CP_06', ChargerObservation('released', 10., 'r', execution_id)))
        self.assertTrue(fleet.tick(10.))

    def test_fixed_charger_is_checked_for_compatibility_and_arrival_reserve(self):
        fleet = self.fleet
        fleet.configure_charger_profiles({'CP_06': {'models': ['small']},
                                          'CP_12': {'models': ['forklift'], 'min_arrival_soc': .5}})
        for identity, bay in (('wrong-model', 'CP_06'), ('insufficient-soc', 'CP_12')):
            fleet.request_charge({'id': identity, 'robot': 'r', 'goal': bay}, 0.)
            self.assertFalse(fleet.tick(0.))
            self.assertEqual(fleet.jobs[identity].state, 'QUEUED')
            fleet.cancel(identity)

    def test_charger_escape_selects_compatible_bay_by_travel_and_arrival_floor(self):
        fleet = self.fleet
        fleet.configure_charger_profiles({'CP_06': {'min_arrival_soc': .8},
                                          'CP_12': {'models': ['forklift'], 'min_arrival_soc': .1},
                                          'CP_18': {'models': ['small']},
                                          'CP_24': {'models': ['small']}})
        distance, floor = fleet.charger_escape('LM_DOCK_06', robot=fleet.robots['r'], now=0.)
        self.assertEqual(distance, fleet.distance('LM_DOCK_06', 'CP_12'))
        self.assertEqual(floor, .1)

    def test_restart_restores_profile_and_requires_new_hardware_feedback(self):
        with tempfile.TemporaryDirectory() as directory:
            database = Path(directory) / 'dispatch.sqlite3'
            dispatch = DurableDispatch(self.fleet, database, 'warehouse')
            dispatch.configure_charger_profiles({'CP_06': {'feedback_required': True, 'freshness_s': 2}})
            self.fleet.observe_charger('CP_06', ChargerObservation('ready', 1.))
            dispatch.checkpoint()
            dispatch.close()

            restored = Fleet(self.graph, ['r'])
            dispatch = DurableDispatch(restored, database, 'warehouse')
            try:
                self.assertTrue(restored.charger_profile('CP_06').feedback_required)
                self.assertFalse(restored.charger_ready('CP_06', 1.))
            finally:
                dispatch.close()
