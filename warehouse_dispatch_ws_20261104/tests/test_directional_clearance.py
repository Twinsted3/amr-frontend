import unittest
from pathlib import Path
from warehouse_sim.route_graph import RouteGraph,occupied_cells,RouteError


class DirectionalClearanceTests(unittest.TestCase):
    def setUp(self):
        self.g=RouteGraph(Path(__file__).parents[1]/'src/warehouse_sim/maps/warehouse.smap')
        route=['PP_05','LM_63_49','LM_63_44','LM_63_38','LM_53_38','LM_43_38','LM_33_38','AP_PICK_02','LM_33_26','LM_33_20','LM_33_13','LM_24_13','LM_23_13','LM_18_13','LM_DOCK_18']
        self.cells=occupied_cells(self.g.path_points(route))
        self.blocked={edge for edge,cells in self.g.edge_cells.items() if cells & self.cells}

    def test_incident_forward_clear_reverse_blocked(self):
        self.assertNotIn(('CP_24','LM_DOCK_24'),self.blocked)
        self.assertIn(('LM_DOCK_24','CP_24'),self.blocked)
        self.assertEqual(self.g.route('CP_24','LM_DOCK_24',forbidden_directed_edges=self.blocked),['CP_24','LM_DOCK_24'])
        self.assertFalse(occupied_cells(self.g.path_points(['CP_24','LM_DOCK_24'])) & self.cells)

    def test_actual_reverse_conflict_is_still_blocked_and_cache_not_used(self):
        self.g.route('LM_DOCK_24','CP_24')
        with self.assertRaises(RouteError):self.g.route('LM_DOCK_24','CP_24',forbidden_directed_edges=self.blocked)

    def test_explicit_reserved_corridor_still_blocks_both_directions(self):
        for start,end in [('CP_24','LM_DOCK_24'),('LM_DOCK_24','CP_24')]:
            with self.assertRaises(RouteError):self.g.route(start,end,forbidden_edges=[('CP_24','LM_DOCK_24')])
