"""Exercise the cycle planner on the warehouse and on a three-vehicle ring."""

from pathlib import Path
import copy
import math
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src/warehouse_sim'))
from warehouse_sim.cycle_recovery import CycleMove, CycleVehicle, plan_cycle
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.lightweight_execution import LightweightExecution
from warehouse_sim.route_graph import RouteError, RouteGraph, occupied_cells
from warehouse_sim.shared_warehouse import shared_warehouse
from warehouse_sim.traffic_policy import TrafficStops, next_segment, traffic_order, wait_cycles


def vehicle(graph, name, start, goal, cargo=None):
    position = graph.stations[start]['pos']
    pose = position['x'], position['y']
    return CycleVehicle(name,start,goal,cargo,frozenset(occupied_cells([pose])),pose)


def straight_graph(stations, edges):
    points = {n: dict(instanceName=n, pos=dict(x=x, y=y))
              for n, (x, y) in stations.items()}
    curves = []
    for start, end in edges:
        a, b = stations[start], stations[end]
        controls = [dict(zip(('x', 'y'), [(1-t)*x+t*y for x, y in zip(a, b)]))
                    for t in (1/3, 2/3)]
        curves.append(dict(startPos=points[start], endPos=points[end],
                           controlPos1=controls[0], controlPos2=controls[1]))
    return RouteGraph(document=dict(advancedPointList=list(points.values()),
                                   advancedCurveList=curves), clearance=lambda x, y: True)


def circular_graph(size, *, charger=False, exits=False, reverse_refuge=False):
    radius = max(14, size * 2)
    stations = {str(i): (radius * math.cos(i * math.tau / size),
                         radius * math.sin(i * math.tau / size)) for i in range(size)}
    stations['Y'] = (radius + 10, 2)
    ring = [(str(i), str((i + 1) % size)) for i in range(size)]
    edges = ring + [('0', 'Y'), ('Y', '1')]
    if reverse_refuge:
        edges.append(('Y', '0'))
    if exits:
        for i in range(size):
            x, y = stations[str(i)]
            stations[f'EXIT_{i}'] = (x * .55, y * .55)
            edges.extend([(str(i), f'EXIT_{i}'), (f'EXIT_{i}', str(i))])
    if charger:
        stations['CP_TEST'] = (radius + 20, 2)
        stations['CP_ESCAPE'] = (-radius - 10, 0)
        edges.extend([('Y', 'CP_TEST'), ('CP_TEST', 'Y'), (str(size // 2), 'CP_ESCAPE')])
    return straight_graph(stations, edges), ring


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

    def test_fallback_waiting_point_requires_progress_and_continuation_without_closed_edges(self):
        graph = straight_graph({'A':(0, 0), 'B':(8, 0), 'Y':(8, 4), 'Z':(17, 4), 'G':(22, 0)},
                               [('A', 'B'), ('B', 'G'), ('A', 'Y'), ('Y', 'Z'), ('Z', 'G')])
        args = (graph, 'A', 'G', {'Y'}, {'B', 'Z'}, (), ())
        self.assertEqual(next_segment(*args), ['A', 'Y'])
        with self.assertRaises(RouteError):
            next_segment(*args, closed_edges={('Y', 'Z')})

    def test_directed_reverse_closure_does_not_disable_forward_refuge_entry(self):
        graph, ring = circular_graph(6, reverse_refuge=True)
        vehicles = [vehicle(graph, start, start, goal) for start, goal in ring]
        stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())
        moves, status = plan_cycle(graph, vehicles, stops, set(), (), set(), closed_edges={('Y', '0')})
        self.assertEqual(status, 'planned')
        self.assertEqual(moves[0].nodes, ('0', 'Y'))

    def test_full_region_rejects_recovery_that_would_enter_its_refuge(self):
        graph, ring = circular_graph(6)
        vehicles = [vehicle(graph, start, start, goal) for start, goal in ring]
        stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())

        def full_region(positions, robot):
            return {('0', 'Y')} if positions[robot] != 'Y' else set()

        self.assertEqual(plan_cycle(graph, vehicles, stops, set(), (), set(), entry_exclusions=full_region),
                         ((), 'search_limit'))
        moves, status = plan_cycle(graph, vehicles, stops, set(), (), set())
        self.assertEqual(status, 'planned')
        self.assertEqual(moves[0].nodes, ('0', 'Y'))

    def test_unrelated_priority_route_waits_for_remaining_recovery_envelope(self):
        graph = straight_graph({'A':(0, 0), 'B':(12, 0), 'C':(24, 0), 'X':(18, -8),
                                'Z':(18, 8), 'CP_TEST':(36, 8)},
                               [('A', 'B'), ('B', 'C'), ('X', 'Z'), ('C', 'CP_TEST'), ('Z', 'CP_TEST')])
        stops = TrafficStops(frozenset(), frozenset(), frozenset())
        positions = {'recovering': 'A', 'outsider': 'X'}
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, positions, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'guard.sqlite3', 'guard')
            try:
                execution = LightweightExecution(service, positions, stops)
                execution.recovery_plans[('recovering',)] = [CycleMove('recovering', ('A', 'B'), None),
                                                             CycleMove('recovering', ('B', 'C'), None)]
                service.request(dict(id='recover', type='move', goal='C', robot='recovering'), 0)
                service.request(dict(id='normal', type='move', goal='Z', robot='outsider', priority=100), 0)
                execution.step()
                self.assertEqual(execution.active['recovering'].nodes, ('A', 'B'))
                self.assertNotIn('outsider', execution.active)
                self.assertEqual(execution.waiting['outsider']['reason'], 'recovery_corridor')
                for _ in range(8):
                    execution.step()
                self.assertTrue(all(job.state == 'DONE' for job in fleet.jobs.values()))
                self.assertEqual(execution.stats['recovery_steps'], 2)
                self.assertEqual(execution.overlap_cells, 0)
            finally:
                service.close()

    def test_exhausted_candidates_and_reached_search_limit_have_different_statuses(self):
        vehicles = [vehicle(self.graph,'agv01','LM_DOCK_06','LM_DOCK_12'),
                    vehicle(self.graph,'agv02','LM_DOCK_12','LM_DOCK_06')]
        stops = TrafficStops(self.stops.waiting_points,frozenset(),self.stops.no_stop_stations)
        self.assertEqual(plan_cycle(self.graph,vehicles,stops,set(),set(),set()),((),'no_safe_plan'))
        self.assertEqual(plan_cycle(self.graph,vehicles,stops,set(),set(),set(),max_states=0),
                         ((),'search_limit'))

    def test_independent_recovery_groups_keep_moving_when_one_stops(self):
        base, ring = circular_graph(6, charger=True)
        names = ('west-', 'east-')
        def station_name(prefix, name):
            return 'CP_' + prefix + name[3:] if name.startswith('CP_') else prefix + name

        stations = {station_name(prefix, name): (pos['x'] * 2 + index * 200, pos['y'] * 2)
                    for index, prefix in enumerate(names) for name, node in base.stations.items()
                    for pos in [node['pos']]}
        edges = [(station_name(prefix, a), station_name(prefix, b)) for prefix in names for a, b in base.edges]
        graph = straight_graph(stations, edges)
        stops = TrafficStops(frozenset(), frozenset(prefix + 'Y' for prefix in names), frozenset())
        positions = {prefix + 'car-' + a: prefix + a for prefix in names for a, _ in ring}
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, positions, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'groups.sqlite3', 'two-rings')
            try:
                execution = LightweightExecution(service, positions, stops)
                execution.closed_edges.update((prefix + '0', prefix + 'Y') for prefix in names)
                for prefix in names:
                    for a, b in ring:
                        service.request(dict(id=prefix + 'job-' + a, type='move', goal=prefix + b,
                                             robot=prefix + 'car-' + a), 0)
                for _ in range(4):
                    execution.step()
                execution.closed_edges.clear()
                for _ in range(10):
                    execution.step()
                    if len(execution.recovery_plans) == 2:
                        break
                self.assertEqual(execution.stats['peak_recovery_groups'], 2)
                restored = LightweightExecution(service, positions, stops)
                restored.restore_checkpoint(copy.deepcopy(execution.checkpoint()))
                self.assertEqual(restored.recovery_plans, execution.recovery_plans)
                execution = restored
                east_moving = next(name for name in execution.active if name.startswith('east-'))
                execution.feedback_unavailable.add(east_moving)
                for _ in range(50):
                    execution.step()
                    if all(fleet.jobs['west-job-' + a].state == 'DONE' for a, _ in ring):
                        break
                self.assertTrue(all(fleet.jobs['west-job-' + a].state == 'DONE' for a, _ in ring))
                self.assertIsNotNone(execution.active[east_moving].stopped_tick)
                self.assertIsNotNone(execution.recovery_group(east_moving))
                self.assertEqual(execution.stats['resolved_cycles'], 1)
                self.assertEqual(execution.overlap_cells, 0)
            finally:
                service.close()

    def test_zone_forecast_penalizes_all_approaches_and_responds_to_release(self):
        graph = straight_graph({'W': (0, 0), 'E': (12, 0), 'Z': (6, 0), 'CP_TEST': (6, 18)},
                               [('W', 'Z'), ('E', 'Z'), ('Z', 'CP_TEST')])
        positions = {'left': 'W', 'right': 'E', 'inside': 'Z'}
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, positions, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'zone.sqlite3', 'zone')
            try:
                execution = LightweightExecution(service, positions, TrafficStops(frozenset(), frozenset(), frozenset()))
                execution.configure(dict(operation='set_traffic_zone', zone='shared', stations=['Z'], capacity=1))
                available = {('W', 'Z'), ('E', 'Z')}
                self.assertEqual(set(execution.forecast_traffic()), available)
                self.assertEqual(execution.full_zone_entries('left', execution.zone_usage()), available)
                execution.positions['inside'] = 'CP_TEST'
                self.assertEqual(execution.forecast_traffic(), {})
                self.assertEqual(execution.full_zone_entries('left', execution.zone_usage()), set())
            finally:
                service.close()

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


    def test_five_vehicle_ring_with_and_without_refuge(self):
        positions = {'A': (0, 0), 'B': (8, 0), 'C': (16, 4),
                     'D': (12, 12), 'E': (0, 12), 'Y': (8, -8)}
        points = {n: dict(instanceName=n, pos=dict(x=x, y=y))
                  for n, (x, y) in positions.items()}
        ring = list(zip('ABCDE', 'BCDEA'))
        curves = []
        for start, end in ring + [('B', 'Y'), ('Y', 'C')]:
            a, b = positions[start], positions[end]
            controls = [dict(zip(('x', 'y'), [(1-t)*x+t*y for x, y in zip(a, b)]))
                        for t in (1/3, 2/3)]
            curves.append(dict(startPos=points[start], endPos=points[end],
                               controlPos1=controls[0], controlPos2=controls[1]))
        graph = RouteGraph(document=dict(advancedPointList=list(points.values()),
                                         advancedCurveList=curves), clearance=lambda x, y: True)
        vehicles = [vehicle(graph, a, a, b) for a, b in ring]
        stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())
        moves, status = plan_cycle(graph, vehicles, stops, set(), set(), set())
        self.assertEqual(status, 'planned')
        self.assertEqual({move.robot for move in moves}, set('ABCDE'))
        stops = TrafficStops(frozenset(), frozenset(), frozenset())
        self.assertEqual(plan_cycle(graph, vehicles, stops, set(), set(), set()),
                         ((), 'no_safe_plan'))


    def test_large_ring_with_vacancy_and_blocked_refuge(self):
        for size in (6, 12, 100):
            with self.subTest(size=size):
                graph, ring = circular_graph(size)
                vehicles = [vehicle(graph, a, a, b, 'load' if a == '0' else None) for a, b in ring]
                stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())
                moves, status = plan_cycle(graph, vehicles, stops, set(), set(), set())
                self.assertEqual(status, 'planned')
                self.assertEqual(len(moves), size + 1)
                self.assertEqual((moves[0].nodes[-1], moves[0].cargo), ('Y', 'load'))
                blocked = {frozenset(('0', 'Y'))}
                self.assertEqual(plan_cycle(graph, vehicles, stops, set(), blocked, set()),
                                 ((), 'search_limit'))


    def test_large_rings_hold_then_execute_recovery(self):
        for size in (6, 100):
            with self.subTest(size=size):
                self.exercise_ring_execution(size)

    def exercise_ring_execution(self, size):
        graph, ring = circular_graph(size, charger=True)
        stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())
        positions = {f'car-{a}': a for a, _ in ring}
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, positions, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'test.sqlite3', f'{size}-ring')
            try:
                execution = LightweightExecution(service, positions, stops)
                execution.closed_edges.add(('0', 'Y'))
                for a, b in ring:
                    service.request(dict(id=f'job-{a}', type='move', goal=b, robot=f'car-{a}'), 0)
                for _ in range(4):
                    execution.step()
                self.assertFalse(execution.active)
                self.assertEqual(execution.positions, positions)
                self.assertEqual(execution.recent_cycles[0]['status'], 'search_limit')
                execution.closed_edges.clear()
                for _ in range(4 * size + 16):
                    execution.step()
                    if all(j.state == 'DONE' for j in fleet.jobs.values()):
                        break
                self.assertEqual([j.state for j in fleet.jobs.values()], ['DONE'] * size)
                self.assertEqual(execution.stats['resolved_cycles'], 1)
                self.assertEqual(execution.stats['recovery_steps'], size + 1)
                self.assertEqual(execution.overlap_cells, 0)
            finally:
                service.close()


    def test_large_ring_uses_wait_dependencies_to_external_goals(self):
        graph, ring = circular_graph(8, exits=True)
        vehicles = [vehicle(graph, a, a, f'EXIT_{b}') for a, b in ring]
        waits = {a: {'blockers': [b]} for a, b in ring}
        stops = TrafficStops(frozenset(), frozenset({'Y'}), frozenset())
        moves, status = plan_cycle(graph, vehicles, stops, set(), set(), set(), waits=waits)
        self.assertEqual(status, 'planned')
        self.assertEqual(len(moves), 9)
        self.assertEqual({m.nodes[-1] for m in moves[1:]}, {v.goal for v in vehicles})

    def test_joint_search_uses_two_refuges_for_compound_group(self):
        source, ring = circular_graph(3)
        points, curves, vehicles = [], [], []
        for prefix, dx in (('left-', 0), ('right-', 50)):
            for station in source.stations.values():
                point = copy.deepcopy(station)
                point['instanceName'] = prefix + point['instanceName']
                point['pos']['x'] += dx
                points.append(point)
            for item, _ in source.edges.values():
                curve = copy.deepcopy(item)
                for end in ('startPos', 'endPos'):
                    curve[end]['instanceName'] = prefix + curve[end]['instanceName']
                for control in ('controlPos1', 'controlPos2'):
                    curve[control]['x'] += dx
                curves.append(curve)
        graph = RouteGraph(document=dict(advancedPointList=points, advancedCurveList=curves),
                           clearance=lambda x, y: True)
        for prefix in ('left-', 'right-'):
            vehicles.extend(vehicle(graph, prefix+a, prefix+a, prefix+b) for a, b in ring)
        stops = TrafficStops(frozenset(), frozenset({'left-Y', 'right-Y'}), frozenset())
        moves, status = plan_cycle(graph, vehicles, stops, set(), set(), set())
        self.assertEqual(status, 'planned')
        self.assertEqual(len(moves), 8)
        self.assertTrue(stops.yield_bays <= {move.nodes[-1] for move in moves})
        moves, status = plan_cycle(graph, vehicles, stops, {'right-Y'}, set(), set())
        self.assertEqual((moves, status), ((), 'search_limit'))

    def test_six_interlocking_vehicles_use_two_refuges_during_execution(self):
        self.exercise_interlocking_group(False)

    def test_six_interlocking_vehicles_share_one_runtime_with_94_business_vehicles(self):
        self.exercise_interlocking_group(True)

    def exercise_interlocking_group(self, include_business):
        # The C→A lane crosses D's parked footprint, and F→D crosses B's.
        positions = dict(A=(10, 20), B=(22, 20), C=(15, 32), D=(11, 26), E=(32, 28),
                         F=(27, 13), Y=(3, 10), Z=(35, 10), CP_TEST=(1, 2), CP_ESCAPE=(22, 10))
        ring = list(zip('ABCDEF', 'BCAEFD'))
        controls = {('Z', 'D'): [(28, 40), (-40, 76)],
                    ('Z', 'CP_TEST'): [(22, -5), (11, -5)],
                    ('CP_TEST', 'Z'): [(11, -5), (22, -5)]}
        lanes = ring + [('A', 'Y'), ('Y', 'B'), ('F', 'Z'), ('Y', 'CP_TEST'), ('CP_TEST', 'Y'),
                        ('B', 'CP_ESCAPE'), *controls]
        points = {name: dict(instanceName=name, pos=dict(x=x, y=y)) for name, (x, y) in positions.items()}
        curves = []
        for a, b in lanes:
            control = controls.get((a, b))
            if control is None:
                control = [tuple((1 - t) * x + t * y for x, y in zip(positions[a], positions[b]))
                           for t in (1 / 3, 2 / 3)]
            p1, p2 = [dict(x=x, y=y) for x, y in control]
            curves.append(dict(startPos=points[a], endPos=points[b], controlPos1=p1, controlPos2=p2))
        document = dict(advancedPointList=list(points.values()), advancedCurveList=curves)
        stops = TrafficStops(frozenset(), frozenset({'Y', 'Z'}), frozenset())
        group = {f'car-{a}': a for a, _ in ring}
        roster = group.copy()
        if include_business:
            shared, starts, _, _ = shared_warehouse(100)
            roster.update({name: starts[name] for name in list(starts)[:94]})
            # Translate the compound junction beyond the original east aisle.
            coordinates = [point['pos'] for point in points.values()]
            coordinates.extend(curve[key] for curve in curves for key in ('controlPos1', 'controlPos2'))
            for coordinate in coordinates:
                coordinate['x'] += 1350
                coordinate['y'] += 30
            outside = next(point for point in shared['advancedPointList'] if point['instanceName'] == 'SPINE_18')
            for start, end in ((outside, points['CP_TEST']), (points['CP_TEST'], outside)):
                p1, p2 = [{axis: (1 - t) * start['pos'][axis] + t * end['pos'][axis] for axis in ('x', 'y')}
                          for t in (1 / 3, 2 / 3)]
                curves.append(dict(startPos=start, endPos=end, controlPos1=p1, controlPos2=p2))
            document['advancedPointList'].extend(shared['advancedPointList'])
            curves.extend(shared['advancedCurveList'])
        graph = RouteGraph(document=document, clearance=lambda x, y: True)
        with tempfile.TemporaryDirectory() as directory:
            fleet = Fleet(graph, roster, feedback_handling=True)
            service = DurableDispatch(fleet, Path(directory) / 'compound.sqlite3', 'compound')
            try:
                execution = LightweightExecution(service, roster, stops)
                execution.closed_edges.add(('A', 'Y'))
                for a, b in ring:
                    service.request(dict(id=f'job-{a}', type='move', goal=b, robot=f'car-{a}'), 0)
                if include_business:
                    for index in range(94):
                        service.request(dict(id=f'background-{index}', type='move',
                                             goal=f'DROP_{index}', robot=f'SIM-{index+1:03d}'), 0)
                for _ in range(4):
                    execution.step()
                self.assertIn(sorted(group), wait_cycles(execution.waiting))
                self.assertFalse(execution.active.keys() & group.keys())
                self.assertEqual({name: execution.positions[name] for name in group}, group)
                if include_business:
                    self.assertTrue(execution.active.keys() - group.keys())
                execution.closed_edges.clear()
                for _ in range(60):
                    execution.step()
                    if all(job.state == 'DONE' for job in fleet.jobs.values()):
                        break
                self.assertTrue(all(job.state == 'DONE' for job in fleet.jobs.values()))
                self.assertEqual(execution.stats['resolved_cycles'], 1)
                targets = {path[-1] for routes in execution.last_routes.values() for path in routes}
                self.assertTrue(stops.yield_bays <= targets)
                self.assertEqual(execution.overlap_cells, 0)
            finally:
                service.close()

    def test_prolonged_wait_can_precede_new_urgent_traffic(self):
        new_urgent = traffic_order(100, None, 31, 30)
        self.assertLess(new_urgent, traffic_order(0, 2, 31, 30))
        self.assertLess(traffic_order(0, 1, 31, 30), new_urgent)


if __name__ == '__main__':
    unittest.main()
