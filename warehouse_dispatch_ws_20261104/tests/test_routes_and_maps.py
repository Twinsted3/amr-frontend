"""Checks for directed routes, fork clearance, reservations and SLAM alignment."""

import json
import math
from pathlib import Path
import tempfile
import unittest
import xml.etree.ElementTree as ET
import xacro

from nav_msgs.msg import OccupancyGrid
import numpy as np

from warehouse_sim.route_graph import RouteError, RouteGraph, occupied_cells
from warehouse_sim.save_slam_map import align_grid, navigation_grid


ROOT = Path(__file__).resolve().parents[1]


class RouteTests(unittest.TestCase):
    def test_all_initial_stations_are_mutually_reachable(self):
        graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
        self.assertEqual(len(graph.stations), 71)
        for start in graph.stations:
            for goal in graph.stations:
                self.assertEqual(graph.route(start, goal)[-1], goal)

    def write_map(self, directory, start=(4, 6), end=(6, 6)):
        points = [{'instanceName': name, 'pos': {'x': x, 'y': y}}
                  for name, (x, y) in zip(('A', 'B'), (start, end))]
        x0, y0 = start
        x1, y1 = end
        curve = {
            'startPos': {'instanceName': 'A', 'pos': points[0]['pos']},
            'endPos': {'instanceName': 'B', 'pos': points[1]['pos']},
            'controlPos1': {'x': x0+(x1-x0)/3, 'y': y0+(y1-y0)/3},
            'controlPos2': {'x': x0+2*(x1-x0)/3, 'y': y0+2*(y1-y0)/3},
        }
        path = Path(directory)/'test.smap'
        path.write_text(json.dumps({'advancedPointList': points, 'advancedCurveList': [curve]}))
        return path

    def test_one_way_edge_cannot_be_traversed_backwards(self):
        with tempfile.TemporaryDirectory() as directory:
            graph = RouteGraph(self.write_map(directory))
            self.assertEqual(graph.route('A', 'B'), ['A', 'B'])
            with self.assertRaises(RouteError):
                graph.route('B', 'A')

    def test_route_through_a_rack_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            with self.assertRaisesRegex(RouteError, 'rack or wall'):
                RouteGraph(self.write_map(directory, (13, 20), (23, 20)))

    def test_geometric_crossing_reserves_common_space(self):
        horizontal = occupied_cells([(x/5, 16, 0) for x in range(20, 66)])
        vertical = occupied_cells([(9, y/5, math.pi/2) for y in range(70, 91)])
        self.assertFalse(horizontal.isdisjoint(vertical))

    def test_fork_tips_are_included_in_station_reservation(self):
        cells = occupied_cells([(6, 5, math.pi/2)])
        self.assertIn((12, 7), cells)  # forks trail toward -Y
        self.assertNotIn((12, 13), cells)

    def test_model_positive_x_is_opposite_forks(self):
        model = ET.fromstring(xacro.process_file(
            str(ROOT/'src/forklift_description/urdf/forklift_0719.urdf.xacro'),
            mappings={'namespace': 'test_', 'robot_id': 'test'}).toxml())
        standard_base = model.find("./joint[@name='test_base_joint']/origin")
        self.assertEqual(standard_base.get('rpy'), '0 0 0')
        base = model.find("./joint[@name='test_body_geometry_joint']/origin")
        tx = float(base.get('xyz').split()[0])
        yaw = float(base.get('rpy').split()[2])
        fork = model.find("./joint[@name='test_left_fork_joint']/origin")
        local_x = float(fork.get('xyz').split()[0])-.61
        tip_x = tx+math.cos(yaw)*local_x
        self.assertLess(tip_x, -1.4)
        drive = model.find("./gazebo/plugin[@name='gz::sim::systems::DiffDrive']")
        self.assertEqual(drive.findtext('left_joint'), 'test_left_wheel_joint')


class MapTests(unittest.TestCase):
    def test_navigation_map_keeps_slam_hits_and_blocks_solid_racks(self):
        raw = np.full((100, 100), 254, dtype=np.uint8)
        raw[90, 90] = 0
        merged = navigation_grid(raw, .1, (13, 16))
        self.assertEqual(merged[40, 50], 0)  # rack centered at (18, 20)
        self.assertEqual(merged[90, 90], 0)  # measured SLAM obstacle retained
        self.assertEqual(merged[40, 0], 254)  # navigation aisle remains clear

    def grid(self):
        message = OccupancyGrid()
        message.info.width = 2
        message.info.height = 2
        message.info.resolution = 1.0
        message.info.origin.orientation.w = 1.0
        message.data = [0, 100, -1, 0]
        return message

    def test_north_facing_spawn_rotates_slam_into_world(self):
        gray, resolution, origin = align_grid(
            self.grid(), (0, 0, 0), (6, 3, math.pi/2))
        self.assertEqual(origin, (4.0, 3.0))
        self.assertEqual(resolution, 1.0)
        np.testing.assert_array_equal(gray, [[205, 254], [254, 0]])

    def test_alignment_can_preserve_original_occupancy_probabilities(self):
        gray, occupancy, _, _ = align_grid(
            self.grid(), (0, 0, 0), (6, 3, math.pi/2), include_occupancy=True)
        np.testing.assert_array_equal(gray, [[205, 254], [254, 0]])
        np.testing.assert_array_equal(occupancy, [[-1, 0], [0, 100]])

    def test_cartographer_map_to_odom_offset_is_removed(self):
        gray, _, origin = align_grid(
            self.grid(), (2, 1, math.pi/2), (6, 3, math.pi/2))
        self.assertEqual(origin, (4.0, 2.0))
        np.testing.assert_array_equal(gray, [[254, 0], [205, 254]])


if __name__ == '__main__':
    unittest.main()
