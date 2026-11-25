import copy
import json
from pathlib import Path
import unittest

from common.dispatch import Dispatch
from common.maps import plan
from field.map_cutover import MapCutover


class Adapter:
    def __init__(self, old, position):
        self.current = {'scheduler': old, 'car': old}
        self.snapshot = {
            'version': old, 'pending': 0, 'active': 0, 'reservations': 0,
            'deadlocks': 0, 'expected_vehicles': ['car'],
            'vehicles': {'car': dict(station='CP_06', position=position,
                                     trusted=True, stopped=True, charging=False)},
        }
        self.frozen = False
        self.fail = set()

    def freeze_admission(self):
        self.frozen = True
        return True

    def quiesce(self):
        return self.snapshot

    def same_frame(self, source, candidate):
        return source['normalPosList'] == candidate['normalPosList']

    def load(self, version, document, vehicles):
        assert self.frozen
        self.current['scheduler'] = version
        self.current['car'] = None if version in self.fail else version

    def versions(self):
        return self.current.copy()

    def resume_admission(self):
        self.frozen = False
        return True


class MapApplicationTest(unittest.TestCase):
    def setUp(self):
        path = (Path(__file__).resolve().parents[1] /
                'warehouse_dispatch_ws_20261104/src/warehouse_sim/maps/warehouse.smap')
        source = json.loads(path.read_text(encoding='utf-8-sig'))
        self.dispatch = Dispatch(':memory:', None, local_executor=False)
        self.addCleanup(self.dispatch.db.close)
        self.old = self.dispatch.add_map(source)['id']
        candidate = copy.deepcopy(source)
        candidate['header']['mapName'] += '_edited'
        candidate['advancedPointList'].append({'instanceName': 'EDIT_TEST', 'pos': {'x': 0, 'y': 0}})
        self.target = self.dispatch.save_map_version(self.old, candidate)['id']
        position = self.dispatch.map(self.old)['stations']['CP_06']
        self.adapter = Adapter(self.old, position)
        self.coordinator = MapCutover(self.dispatch, self.adapter)

    def test_application_and_new_map_route(self):
        self.coordinator.apply(self.target)
        state = self.dispatch.state()
        self.assertEqual(state['map_id'], self.target)
        self.assertFalse(self.adapter.frozen)
        route = plan(self.dispatch.map(state['map_id']), ['CP_06', 'LM_DOCK_06'])
        self.assertGreater(route['length'], 0)

    def test_occupancy_rejection(self):
        self.adapter.snapshot['deadlocks'] = 1
        with self.assertRaisesRegex(ValueError, '死锁'):
            self.coordinator.apply(self.target)
        self.assertEqual(self.dispatch.state()['map_id'], self.old)

    def test_partial_loading_rollback(self):
        self.adapter.fail.add(self.target)
        with self.assertRaisesRegex(ValueError, '未全部确认新版'):
            self.coordinator.apply(self.target)
        self.assertEqual(self.adapter.versions(), {'scheduler': self.old, 'car': self.old})
        self.assertFalse(self.adapter.frozen)

    def test_failed_rollback_stays_frozen(self):
        self.adapter.fail.update((self.old, self.target))
        with self.assertRaisesRegex(ValueError, '保留冻结'):
            self.coordinator.apply(self.target)
        self.assertTrue(self.adapter.frozen)
        self.assertIsNotNone(self.dispatch.state()['map_cutover'])
