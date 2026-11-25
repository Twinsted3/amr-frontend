import unittest

from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import FORKLIFT_MODEL, RouteError, RouteGraph, forklift_footprint, occupied_cells


def line(a, b, *, station_names=('0', '1', '2'), **options):
    points = [{'x': .0, 'y': .0}, {'x': 9., 'y': .0}, {'x': 18., 'y': .0}]
    start, end = points[a], points[b]

    def interpolate(t):
        return {axis: (1 - t) * start[axis] + t * end[axis] for axis in ('x', 'y')}

    return dict(startPos=dict(instanceName=station_names[a], pos=start),
                endPos=dict(instanceName=station_names[b], pos=end),
                controlPos1=interpolate(1/3), controlPos2=interpolate(2/3), **options)


def simple_graph(first, second):
    points = [first['startPos'], first['endPos'], second['endPos']]
    return RouteGraph(document=dict(advancedPointList=points, advancedCurveList=[first, second]),
                      clearance=lambda *_: True)


class ForkliftGeometryTests(unittest.TestCase):
    def test_clearance_parking_with_no_independent_exit_is_rejected(self):
        names = ('LANE', 'CP_NORTH', 'PP_EXIT_NORTH_0')
        lanes = [line(a, b, station_names=names) for a, b in ((0, 1), (1, 2), (2, 1), (1, 0))]
        points = [lanes[0]['startPos'], lanes[0]['endPos'], lanes[1]['endPos']]
        for point in points:
            point['maneuver_radius_m'] = 3.3
        graph = RouteGraph(document=dict(advancedPointList=points, advancedCurveList=lanes), clearance=lambda *_: True)
        fleet = Fleet(graph, {'lift': 'CP_NORTH'})
        fleet.robots['lift'].model = FORKLIFT_MODEL
        self.assertFalse(fleet.charger_parking_has_exit('lift', 'CP_NORTH', 'PP_EXIT_NORTH_0'))
        self.assertIsNone(fleet.charged_clearance_goal('lift', 'CP_NORTH'))

    def test_business_cannot_book_through_an_active_charger(self):
        names = ('0', 'CP_1', '2')
        graph = simple_graph(line(0, 1, station_names=names), line(1, 2, station_names=names))
        fleet = Fleet(graph, {'working': '0', 'charging': 'CP_1'})
        truck = fleet.robots['working']
        truck.model = FORKLIFT_MODEL
        charge = fleet.submit(dict(id='charge', type='charge', robot='charging', goal='CP_1'), 0)
        fleet.robots['charging'].job = charge.id
        fleet.chargers['CP_1'] = charge.robot = 'charging'
        charge.state = 'CHARGING'
        with self.assertRaises(RouteError):
            fleet.forklift_trip('0', ('2',), truck, None, None, transport=False)
        fleet.finish(charge)
        self.assertEqual(fleet.forklift_trip('0', ('2',), truck, None, None, transport=False)[2], list(names))

    def test_clearance_filters_loaded_vehicle_but_allows_empty_and_narrow_pallet(self):
        graph = simple_graph(line(0, 1, clearance_width_m=1.25), line(1, 2))
        empty = forklift_footprint(FORKLIFT_MODEL)
        narrow = forklift_footprint(FORKLIFT_MODEL, loaded=True, pallet='800x1200')
        wide = forklift_footprint(FORKLIFT_MODEL, loaded=True, pallet='1000x1200')
        self.assertEqual(graph.vehicle_bid_route('0', '2', empty, ())[0], ['0', '1', '2'])
        self.assertEqual(graph.vehicle_bid_route('0', '2', narrow, ())[0], ['0', '1', '2'])
        with self.assertRaises(RouteError):
            graph.vehicle_bid_route('0', '2', wide, ())
        at_dock = [(0., 0., 0.)]
        self.assertGreater(len(occupied_cells(at_dock, resolution=.05, footprint=narrow)),
                           len(occupied_cells(at_dock, resolution=.05, footprint=empty)))

    def test_reversal_requires_a_certified_stop_and_separate_grants(self):
        first, second = line(0, 1), line(1, 2, drive_reverse=True)
        first['endPos']['maneuver_radius_m'] = 3.3
        graph = simple_graph(first, second)
        empty = forklift_footprint(FORKLIFT_MODEL)
        self.assertEqual(graph.vehicle_bid_route('0', '2', empty, ())[0], ['0', '1', '2'])
        with self.assertRaises(RouteError):
            graph.vehicle_bid_route('0', '2', empty, (), no_stop_stations=frozenset({'1'}))
        with self.assertRaises(RouteError):
            graph.vehicle_path(('0', '1', '2'), empty)


if __name__ == '__main__':
    unittest.main()
