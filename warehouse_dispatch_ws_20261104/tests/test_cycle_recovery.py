"""Exercise the cycle planner on the warehouse and on a three-vehicle ring."""

from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src/warehouse_sim'))
from warehouse_sim.cycle_recovery import CycleVehicle, plan_cycle
from warehouse_sim.route_graph import RouteGraph, occupied_cells
from warehouse_sim.traffic_policy import TrafficStops


def vehicle(graph, name, start, goal, cargo=None):
    position = graph.stations[start]['pos']
    pose = position['x'], position['y']
    return CycleVehicle(name,start,goal,cargo,frozenset(occupied_cells([pose])),pose)


class CycleRecoveryTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
        cls.stops = TrafficStops.load(cls.graph.stations,ROOT/'tools/deadlock_demo_policy.json')

    def parked_cells(self, *names):
        points = [self.graph.stations[name]['pos'] for name in names]
        return occupied_cells([(point['x'],point['y']) for point in points])

    def test_loaded_robot_retains_cargo_id_when_leaving_a_blocking_station(self):
        vehicles = [vehicle(self.graph,'agv01','AP_PICK_01','AP_SHIP_01','delivery'),
                    vehicle(self.graph,'agv02','AP_SHIP_01','AP_PICK_01')]
        external = {'CP_18','CP_24'}
        moves,status = plan_cycle(self.graph,vehicles,self.stops,external,set(),self.parked_cells(*external))
        self.assertEqual(status,'planned')
        self.assertEqual((moves[0].robot,moves[0].nodes[-1],moves[0].cargo),
                         ('agv01','LM_13_26','delivery'))
        self.assertEqual((moves[-1].nodes[-1],moves[-1].cargo),('AP_SHIP_01','delivery'))

    def test_exhausted_candidates_and_reached_search_limit_have_different_statuses(self):
        vehicles = [vehicle(self.graph,'agv01','LM_DOCK_06','LM_DOCK_12'),
                    vehicle(self.graph,'agv02','LM_DOCK_12','LM_DOCK_06')]
        stops = TrafficStops(self.stops.waiting_points,frozenset(),self.stops.no_stop_stations)
        self.assertEqual(plan_cycle(self.graph,vehicles,stops,set(),set(),set()),((),'no_safe_plan'))
        self.assertEqual(plan_cycle(self.graph,vehicles,stops,set(),set(),set(),max_states=0),
                         ((),'search_limit'))

    def test_joint_plan_requires_three_robots_to_move_in_order(self):
        positions = {'A':(6,5),'B':(13,5),'C':(13,13),'Y':(22,5)}
        points = {name:{'instanceName':name,'pos':dict(x=x,y=y)} for name,(x,y) in positions.items()}
        curves = []
        for a,b in [('A','B'),('B','C'),('C','A'),('B','Y'),('Y','C')]:
            xa,ya = positions[a]
            xb,yb = positions[b]
            curves.append(dict(startPos=points[a],endPos=points[b],
                               controlPos1=dict(x=(2*xa+xb)/3,y=(2*ya+yb)/3),
                               controlPos2=dict(x=(xa+2*xb)/3,y=(ya+2*yb)/3)))
        graph = RouteGraph(document=dict(advancedPointList=list(points.values()),advancedCurveList=curves))
        stops = TrafficStops(frozenset(),frozenset({'Y'}),frozenset())
        vehicles = [vehicle(graph,a,a,b) for a,b in [('A','B'),('B','C'),('C','A')]]
        moves,status = plan_cycle(graph,vehicles,stops,set(),set(),set())
        self.assertEqual(status,'planned')
        self.assertEqual([(move.robot,move.nodes[-1]) for move in moves],
                         [('B','Y'),('A','B'),('C','A'),('B','C')])


if __name__ == '__main__':
    unittest.main()
