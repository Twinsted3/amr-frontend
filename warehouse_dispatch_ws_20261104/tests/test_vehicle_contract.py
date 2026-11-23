"""Exercise the transport-neutral boundary and its lightweight execution path."""
from dataclasses import replace
import json
from pathlib import Path
import tempfile
import unittest

from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.lightweight_execution import LightweightExecution
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.traffic_policy import TrafficStops
from warehouse_sim.vehicle_contract import (
    AuthorizedMotion, ExecutionRef, HandlingCommand, SegmentArrival, StopRequest, TelemetryIngress, VehicleFeedback,
    VehicleIdentity, VehicleTelemetry,
)


class VehicleAdapterContractTests(unittest.TestCase):
    def setUp(self):
        self.identity = VehicleIdentity('FORK-01', 'map-v2', 'vehicle-epoch')
        self.command = dict(robot='FORK-01', map_name='map-v2', task_id='task:leg-1',
                            command_id='command-1', goal='SHIP')
        self.ref = ExecutionRef.from_dispatch(self.command, self.identity.epoch)

    def test_arrival_and_handling_acknowledgements_are_separate(self):
        arrival = VehicleFeedback(self.ref, 'arrived', station='SHIP')
        self.assertEqual(VehicleFeedback.from_event(arrival.to_event()), arrival)
        self.assertTrue(arrival.matches(self.command, self.identity.epoch))
        self.assertFalse(arrival.matches(self.command, 'old-epoch'))
        self.assertFalse(arrival.matches({**self.command, 'map_name': 'old-map'}, self.identity.epoch))
        self.assertFalse(replace(arrival, station='OTHER').matches(self.command, self.identity.epoch))
        unload = {**self.command, 'action': 'dropoff', 'cargo_id': 'pallet-1'}
        self.assertEqual(HandlingCommand.from_dispatch(unload, self.identity.epoch).station, 'SHIP')
        self.assertFalse(arrival.matches(unload, self.identity.epoch))
        ack = VehicleFeedback(self.ref, 'handling_done', station='SHIP', loaded=False, cargo_id='pallet-1')
        self.assertTrue(ack.matches(unload, self.identity.epoch))
        self.assertFalse(replace(ack, loaded=True).matches(unload, self.identity.epoch))
        self.assertFalse(replace(ack, cargo_id='other-pallet').matches(unload, self.identity.epoch))

    def test_telemetry_is_bound_to_vehicle_epoch_and_monotonic_receive_order(self):
        ingress = TelemetryIngress([self.identity])
        sample = VehicleTelemetry(self.identity, 8, (0., 2., 0.), .75, True, True, True)
        self.assertTrue(ingress.observe(sample, 10))
        self.assertIs(ingress.read(self.identity.robot, 10.1, .5), sample)
        self.assertIsNone(ingress.read(self.identity.robot, 10.8, .5))
        self.assertFalse(ingress.observe(replace(sample, sequence=7), 11))
        wrong_epoch = replace(self.identity, epoch='vehicle-restarted')
        self.assertFalse(ingress.observe(replace(sample, vehicle=wrong_epoch, sequence=9), 11))
        self.assertTrue(ingress.observe(replace(sample, sequence=9, localization_valid=False), 11))
        self.assertIsNone(ingress.read(self.identity.robot, 11, .5))
        with self.assertRaises(ValueError):
            replace(sample, pose=(float('nan'), 2., 0.))

    def test_stop_acknowledgement_must_match_motion_grant_and_request(self):
        motion = AuthorizedMotion(self.ref, 'grant-1', 1, ((0., 0., 0.), (0., 2., 0.)), 5., .6)
        request = StopRequest(self.ref, 'stop-1', motion.grant_id)
        sample = VehicleTelemetry(self.identity, 3, (0., 1., 0.), .75, True, True, True,
                                  active_command_id=self.ref.command_id, active_grant_id=motion.grant_id)
        self.assertTrue(request.confirms('stop-1', sample))
        self.assertFalse(request.confirms('previous-stop', sample))
        self.assertFalse(request.confirms('stop-1', replace(sample, active_grant_id='older-grant')))
        self.assertFalse(request.confirms('stop-1', replace(sample, stopped=False)))
        arrival = SegmentArrival(self.ref, motion.grant_id, sample)
        self.assertFalse(arrival.confirms(self.ref, motion.grant_id, motion.points[-1]))
        arrived = replace(arrival, telemetry=replace(sample, pose=motion.points[-1]))
        self.assertTrue(arrived.confirms(self.ref, motion.grant_id, motion.points[-1]))
        self.assertFalse(arrived.confirms(self.ref, 'replayed-grant', motion.points[-1]))


class SimulatedAdapterContractTests(unittest.TestCase):
    def test_restart_keeps_motion_grant_and_waits_for_correlated_stop_proof(self):
        root = Path(__file__).resolve().parents[1]
        graph = RouteGraph(root / 'src/warehouse_sim/maps/warehouse.smap')
        roster = {'FORK-01': 'CP_06'}
        stops = TrafficStops.load(graph.stations)
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, roster, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'adapter.sqlite3', 'map-v2')
            try:
                engine = LightweightExecution(service, roster, stops)
                service.request(dict(id='move', type='move', goal='LM_63_49'), 0)
                engine.step()
                engine.step()
                command = engine.pending['FORK-01']
                stale = engine.acknowledge(command, 'arrived', station=command['goal'])
                stale['vehicle_epoch'] = 'old-controller-run'
                engine.relay_feedback([stale])
                self.assertEqual(fleet.jobs['move'].state, 'EXECUTING')
                self.assertEqual(engine.stats['invalid_vehicle_feedback'], 1)
                engine.feedback_unavailable.add('FORK-01')
                engine.step()
                robot = 'FORK-01'
                pose = engine.poses()[robot]
                grant_id = engine.active[robot].grant_id
                stop_id = engine.stop_requests[robot][0]
                epoch = engine.vehicle_epoch
                self.assertTrue(grant_id)
                saved = json.loads(json.dumps(engine.checkpoint()))
                resumed = LightweightExecution(service, roster, stops)
                resumed.restore_checkpoint(saved)
                self.assertEqual(resumed.active[robot].grant_id, grant_id)
                self.assertEqual(resumed.vehicle_epoch, epoch)
                self.assertEqual(resumed.poses()[robot], pose)
                proof = resumed.stationary_sample(robot, pose)
                self.assertFalse(resumed.reconcile_vehicle(proof, 'previous-stop'))
                self.assertFalse(resumed.reconcile_vehicle(replace(proof, sequence=proof.sequence - 1), stop_id))
                self.assertFalse(resumed.reconcile_vehicle(replace(proof, cargo_verified=False), stop_id))
                self.assertFalse(resumed.reconcile_vehicle(replace(proof, active_grant_id='older-grant'), stop_id))
                self.assertTrue(resumed.reconcile_vehicle(proof, stop_id))
                stop_event = next(event for event in fleet.events if event['event'] == 'sim_stop_confirmed')
                self.assertIsNone(stop_event['elapsed_ms'])
                for _ in range(30):
                    resumed.step()
                self.assertEqual(fleet.jobs['move'].state, 'DONE')
            finally:
                service.close()
