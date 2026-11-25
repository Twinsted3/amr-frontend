"""Directed SMAP Bézier graph, path sampling and conservative geometry checks."""

from __future__ import annotations

import heapq
import json
import math
from dataclasses import dataclass
from functools import lru_cache
from pathlib import Path

from warehouse_sim.layout import FOOTPRINT, HEIGHT, WIDTH, obstacle_rectangles


class RouteError(ValueError):
    pass


@dataclass(frozen=True)
class Footprint:
    rear_m: float
    front_m: float
    half_width_m: float
    minimum_radius_m: float
    clearance_m: float = .15

    @property
    def maneuver_radius_m(self):
        # Minkowski sum of the reference path and the farthest body corner.
        return self.minimum_radius_m + math.hypot(self.rear_m, self.half_width_m) + self.clearance_m


# SFL-CDD20-Y dimensions in meters. The simulated reference is on the
# longitudinal centerline. The rear allowance includes the fork tips.
FORKLIFT_MODEL = 'SFL-CDD20-Y'
_FORKLIFT_EMPTY = Footprint(1.550, .232, .465, 1.270)
_PALLETS = {'1000x1200': (1.0, 1.2), '800x1200': (.8, 1.2), '1000x1000': (1.0, 1.0)}
_FORKLIFT_PALLETS = {
    name: Footprint(max(_FORKLIFT_EMPTY.rear_m, .55 + length), _FORKLIFT_EMPTY.front_m,
                    max(_FORKLIFT_EMPTY.half_width_m, width / 2), _FORKLIFT_EMPTY.minimum_radius_m)
    for name, (width, length) in _PALLETS.items()
}


def forklift_footprint(model, *, loaded=False, pallet=None):
    if not isinstance(model, str) or model.upper() != FORKLIFT_MODEL:
        return None
    return _FORKLIFT_PALLETS.get(pallet, _FORKLIFT_PALLETS['1000x1200']) if loaded else _FORKLIFT_EMPTY


def heading_change(first, second):
    return abs(math.atan2(math.sin(second - first), math.cos(second - first)))


@lru_cache(maxsize=32)
def _disc_offsets(radius, resolution):
    return tuple(
        (dx, dy)
        for dx in range(-math.ceil(radius/resolution), math.ceil(radius/resolution) + 1)
        for dy in range(-math.ceil(radius/resolution), math.ceil(radius/resolution) + 1)
        if math.hypot(dx*resolution, dy*resolution) <= radius + resolution/2
    )


def bezier(curve, t):
    p0 = curve['startPos']['pos']
    p1 = curve['controlPos1']
    p2 = curve['controlPos2']
    p3 = curve['endPos']['pos']
    u = 1 - t
    x = u**3 * p0['x'] + 3*u*u*t*p1['x'] + 3*u*t*t*p2['x'] + t**3*p3['x']
    y = u**3 * p0['y'] + 3*u*u*t*p1['y'] + 3*u*t*t*p2['y'] + t**3*p3['y']
    dx = 3*u*u*(p1['x']-p0['x']) + 6*u*t*(p2['x']-p1['x']) + 3*t*t*(p3['x']-p2['x'])
    dy = 3*u*u*(p1['y']-p0['y']) + 6*u*t*(p2['y']-p1['y']) + 3*t*t*(p3['y']-p2['y'])
    return x, y, math.atan2(dy, dx)


def samples(curve, spacing=0.20):
    last = bezier(curve, 0)
    length = 0.0
    for i in range(1, 31):
        point = bezier(curve, i / 30)
        length += math.hypot(point[0]-last[0], point[1]-last[1])
        last = point
    count = max(2, math.ceil(length / spacing))
    return [bezier(curve, i / count) for i in range(count + 1)], length


def _clearance(x, y):
    """Check the initial warehouse's static rack and perimeter clearance."""
    # Include the fork tips and the envelope swept while turning in place.
    margin = 1.75
    if not (margin <= x <= WIDTH-margin and margin <= y <= HEIGHT-margin):
        return False
    for sx, sy, width, height in obstacle_rectangles():
        dx = max(abs(x-sx)-width/2, 0.0)
        dy = max(abs(y-sy)-height/2, 0.0)
        if math.hypot(dx, dy) < margin:
            return False
    return True


def occupied_cells(points, radius=1.9, resolution=0.5, *, footprint=None):
    """Rasterize the fork-inclusive footprint and the sweep at heading changes."""
    offsets = _disc_offsets(radius, resolution)
    rear, front, half_width = ((-FOOTPRINT[0][0], FOOTPRINT[1][0], .58) if footprint is None
                               else (footprint.rear_m, footprint.front_m, footprint.half_width_m))
    # Cover the cell half-diagonal and the travel between consecutive samples.
    padding = (.15 if footprint is None else footprint.clearance_m + .10) + resolution/math.sqrt(2)
    reach = 1.75 if footprint is None else math.hypot(max(rear, front), half_width)
    span = math.ceil((reach+padding)/resolution)
    cells = set()
    previous = None
    for point in points:
        cx, cy = round(point[0]/resolution), round(point[1]/resolution)
        if len(point) < 3:
            cells.update((cx+dx, cy+dy) for dx, dy in offsets)
            continue
        yaw = point[2]
        cosine, sine = math.cos(yaw), math.sin(yaw)
        for ix in range(cx-span, cx+span+1):
            for iy in range(cy-span, cy+span+1):
                dx, dy = ix*resolution-point[0], iy*resolution-point[1]
                local_x, local_y = dx*cosine+dy*sine, -dx*sine+dy*cosine
                if -rear-padding <= local_x <= front+padding and abs(local_y) <= half_width+padding:
                    cells.add((ix, iy))
        if previous is not None:
            if footprint is None and heading_change(previous, yaw) > .3:
                cells.update((cx+dx, cy+dy) for dx, dy in offsets)
        previous = yaw
    return cells


class RouteGraph:
    def __init__(self, path=None, *, document=None, clearance=_clearance):
        self.path = Path(path) if path is not None else None
        data = (json.loads(self.path.read_text(encoding='utf-8')) if document is None
                else json.loads(json.dumps(document)))
        self.stations = {}
        for point in data['advancedPointList']:
            name = point['instanceName']
            if name in self.stations:
                raise RouteError(f'Duplicate station: {name}')
            self.stations[name] = point
        self.edges = {}
        self.edge_cells = {}
        self.edge_points = {}
        self.edge_turn_radius = {}
        self.reverse_edges = set()
        self.maneuver_areas = {}
        self.lane_widths = {}
        self.adj = {name: [] for name in self.stations}
        self._static_routes={}
        self._reverse = {name: [] for name in self.stations}
        self._distance_to = {}
        self._bid_closures = frozenset()
        self._bid_trees = {}
        for name, station in self.stations.items():
            if 'maneuver_radius_m' in station:
                self.maneuver_areas[name] = self.positive_length(station['maneuver_radius_m'])
        for curve in data['advancedCurveList']:
            a = curve['startPos']['instanceName']
            b = curve['endPos']['instanceName']
            if a not in self.stations or b not in self.stations or a == b:
                raise RouteError(f'Invalid route: {a} -> {b}')
            key = (a, b)
            if key in self.edges:
                raise RouteError(f'Duplicate route: {a} -> {b}')
            # Normalize endpoints against the latest station positions.
            curve['startPos']['pos'] = self.stations[a]['pos']
            curve['endPos']['pos'] = self.stations[b]['pos']
            points, length = samples(curve)
            if not all(clearance(x, y) for x, y, _ in points):
                raise RouteError(f'Route intersects a rack or wall: {a} -> {b}')
            self.edges[key] = (curve, length)
            self.edge_cells[key] = occupied_cells(points)
            self.edge_points[key] = tuple(points)
            self.edge_turn_radius[key] = min((
                math.dist(p[:2], q[:2]) / turn
                for p, q in zip(points, points[1:]) if (turn := heading_change(p[2], q[2])) > 1e-7
            ), default=math.inf)
            if 'clearance_width_m' in curve:
                self.lane_widths[key] = self.positive_length(curve['clearance_width_m'])
            if 'drive_reverse' in curve:
                if type(curve['drive_reverse']) is not bool:
                    raise RouteError('drive_reverse must be a boolean')
                if curve['drive_reverse']:
                    self.reverse_edges.add(key)
            self.adj[a].append((b, length))
            self._reverse[b].append((a, length))

    @staticmethod
    def positive_length(number):
        if type(number) not in (int, float) or not math.isfinite(number) or number <= 0:
            raise RouteError('Geometry dimensions must be finite positive numbers in meters')
        return float(number)

    @lru_cache(maxsize=4096)
    def vehicle_edge_points(self, edge):
        points = self.edge_points[edge]
        if edge in self.reverse_edges:
            return tuple((x, y, math.remainder(yaw + math.pi, math.tau)) for x, y, yaw in points)
        return points

    def maneuver_cells(self, station, footprint, first_yaw, second_yaw):
        if first_yaw is None or second_yaw is None or heading_change(first_yaw, second_yaw) <= .3:
            return frozenset()
        if self.maneuver_areas.get(station, 0.) < footprint.maneuver_radius_m:
            raise RouteError(f'No certified turning clearance at {station}')
        pos = self.stations[station]['pos']
        return frozenset(occupied_cells([(pos['x'], pos['y'])], radius=footprint.maneuver_radius_m))

    def incoming(self, station):
        return tuple(self._reverse[station])

    def restricted_heading_edges(self, station, footprint, yaw, *, outgoing):
        if yaw is None or self.maneuver_areas.get(station, 0.) >= footprint.maneuver_radius_m:
            return frozenset()
        choices = self.adj[station] if outgoing else self._reverse[station]
        edges = [(station, other) if outgoing else (other, station) for other, _ in choices]
        return frozenset(edge for edge in edges if heading_change(
            float(yaw), self.vehicle_edge_points(edge)[0 if outgoing else -1][2]) > .3)

    @lru_cache(maxsize=32)
    def footprint_restrictions(self, footprint):
        if footprint is None:
            return frozenset(), frozenset()
        edges = frozenset(edge for edge in self.edges
                          if (self.edge_turn_radius[edge] < footprint.minimum_radius_m
                              or self.lane_widths.get(edge, math.inf) < 2 * (
                                  footprint.half_width_m + footprint.clearance_m)))
        turns = set()
        for node, incoming in self._reverse.items():
            if self.maneuver_areas.get(node, 0.) >= footprint.maneuver_radius_m:
                continue
            for previous, _ in incoming:
                for neighbor, _ in self.adj[node]:
                    first = self.vehicle_edge_points((previous, node))[-1][2]
                    second = self.vehicle_edge_points((node, neighbor))[0][2]
                    if heading_change(first, second) > .3:
                        turns.add((previous, node, neighbor))
        return edges, frozenset(turns)

    @lru_cache(maxsize=4096)
    def vehicle_edge_cells(self, edge, footprint):
        return frozenset(occupied_cells(self.vehicle_edge_points(edge), footprint=footprint))

    @lru_cache(maxsize=32)
    def no_stop_reverse_turns(self, no_stop_stations):
        return frozenset((before, station, after) for station in no_stop_stations
                         for before, _ in self._reverse[station] for after, _ in self.adj[station]
                         if ((before, station) in self.reverse_edges) != ((station, after) in self.reverse_edges))

    @lru_cache(maxsize=512)
    def geometry_tree(self, goal, forbidden):
        return self._reverse_tree(goal, forbidden)

    def vehicle_bid_route(self, start, goal, footprint, closed, *, start_yaw=None, no_stop_stations=frozenset()):
        if footprint is None:
            return self.bid_route(start, goal, closed)
        if start not in self.stations or goal not in self.stations:
            raise RouteError(f'Unknown start or goal: {start}, {goal}')
        restrictions, turns = self.footprint_restrictions(footprint)
        restrictions |= frozenset(closed) | self.restricted_heading_edges(
            goal, footprint, self.stations[goal].get('dir'), outgoing=False)
        departures = self.restricted_heading_edges(start, footprint, start_yaw, outgoing=True)
        turns |= self.no_stop_reverse_turns(no_stop_stations)
        if turns or departures:
            return self._turn_constrained_bid(start, goal, restrictions | departures, turns)
        if start == goal:
            return [start], 0.
        lengths, successor = self.geometry_tree(goal, restrictions)
        if start not in lengths:
            raise RouteError(f'No route within forklift geometry limits: {start} -> {goal}')
        path, distance = [start], lengths[start]
        while path[-1] != goal:
            path.append(successor[path[-1]])
        return path, distance

    @lru_cache(maxsize=8192)
    def _turn_constrained_bid(self, start, goal, edges, turns):
        try:
            path = tuple(self.route(start, goal, forbidden_directed_edges=edges, forbidden_turns=turns))
        except RouteError as error:
            raise RouteError(f'No route within forklift geometry limits: {start} -> {goal}') from error
        return path, sum(self.edges[edge][1] for edge in zip(path, path[1:]))

    def vehicle_path(self, nodes, footprint, *, start_yaw=None, end_yaw=None):
        blocked_edges, blocked_turns = self.footprint_restrictions(footprint)
        edges = tuple(zip(nodes, nodes[1:]))
        if any(edge in blocked_edges for edge in edges) or any(
                turn in blocked_turns for turn in zip(nodes, nodes[1:], nodes[2:])):
            raise RouteError('Route exceeds the forklift geometry limits')
        if len({edge in self.reverse_edges for edge in edges}) > 1:
            raise RouteError('Forklift travel direction may only change at an authorized stop')
        swept, points = set(), []
        for index, edge in enumerate(edges):
            edge_points = self.vehicle_edge_points(edge)
            prior = points[-1][2] if points else start_yaw
            swept.update(self.maneuver_cells(edge[0], footprint, prior, edge_points[0][2]))
            swept.update(self.vehicle_edge_cells(edge, footprint))
            points.extend(edge_points if index == 0 else edge_points[1:])
        if points and end_yaw is not None:
            swept.update(self.maneuver_cells(nodes[-1], footprint, points[-1][2], end_yaw))
            x, y, _ = points[-1]
            points[-1] = x, y, end_yaw
        return points, swept

    def distance(self, start, goal):
        if start not in self.stations or goal not in self.stations:
            raise RouteError(f'Unknown start or goal: {start}, {goal}')
        if goal not in self._distance_to:
            best = {goal: 0.}
            queue = [(0., goal)]
            while queue:
                cost, node = heapq.heappop(queue)
                if cost != best[node]:
                    continue
                for previous, length in self._reverse[node]:
                    candidate = cost + length
                    if candidate < best.get(previous, math.inf):
                        best[previous] = candidate
                        heapq.heappush(queue, (candidate, previous))
            self._distance_to[goal] = best
        try:
            return self._distance_to[goal][start]
        except KeyError:
            raise RouteError(f'No available route: {start} -> {goal}') from None

    def bid_route(self, start, goal, closed):
        """Look up the shortest available route and distance for a closure snapshot."""
        if not closed:
            return self.route(start, goal), self.distance(start, goal)
        distances, successor = self.bid_tree(goal, closed)
        if start not in distances:
            raise RouteError(f'No available route: {start} -> {goal}')
        nodes = [start]
        while nodes[-1] != goal:
            nodes.append(successor[nodes[-1]])
        return nodes, distances[start]

    def bid_distance(self, start, goal, closed):
        if not closed:
            return self.distance(start, goal)
        distances, _ = self.bid_tree(goal, closed)
        if start not in distances:
            raise RouteError(f'No available route: {start} -> {goal}')
        return distances[start]

    def bid_tree(self, goal, closed):
        if goal not in self.stations:
            raise RouteError(f'Unknown goal: {goal}')
        if closed != self._bid_closures:
            self._bid_closures = frozenset(closed)
            self._bid_trees.clear()
        if goal not in self._bid_trees:
            self._bid_trees[goal] = self._reverse_tree(goal, closed)
        return self._bid_trees[goal]

    def _reverse_tree(self, goal, closed):
        distances, successor, queue = {goal: 0.}, {}, [(0., goal)]
        while queue:
            meters, node = heapq.heappop(queue)
            if distances[node] != meters:
                continue
            for previous, length in self._reverse[node]:
                if (previous, node) in closed:
                    continue
                candidate = meters + length
                if candidate < distances.get(previous, math.inf):
                    distances[previous], successor[previous] = candidate, node
                    heapq.heappush(queue, (candidate, previous))
        return distances, successor

    def route(self, start, goal, forbidden_nodes=(), forbidden_edges=(), *,
              forbidden_directed_edges=(), penalties=None, forbidden_turns=()):
        if start not in self.stations or goal not in self.stations:
            raise RouteError(f'Unknown start or goal: {start}, {goal}')
        blocked_nodes = set(forbidden_nodes) - {start}
        blocked_edges = {frozenset(edge) for edge in forbidden_edges}
        directed_edges = set(forbidden_directed_edges)
        penalties = penalties or {}
        cacheable = not (blocked_nodes or blocked_edges or directed_edges or penalties or forbidden_turns)
        if cacheable and (start,goal) in self._static_routes:return list(self._static_routes[start,goal])
        initial = (start, '')
        queue = [(0.0, initial)]
        best = {initial: 0.0}
        previous = {}
        while queue:
            cost, state = heapq.heappop(queue)
            node, last = state
            if cost != best[state]:
                continue
            if node == goal:
                break
            for neighbor, length in self.adj[node]:
                if neighbor in blocked_nodes or frozenset((node, neighbor)) in blocked_edges or (node,neighbor) in directed_edges:
                    continue
                if (last, node, neighbor) in forbidden_turns:
                    continue
                penalty = penalties.get((node, neighbor), 0.)
                if not math.isfinite(penalty) or penalty < 0:
                    raise ValueError('route penalties must be finite and nonnegative')
                candidate = cost + length + penalty
                successor = neighbor, node if forbidden_turns else ''
                if candidate < best.get(successor, math.inf):
                    best[successor] = candidate
                    previous[successor] = state
                    heapq.heappush(queue, (candidate, successor))
        else:
            raise RouteError(f'No available route: {start} -> {goal}')
        nodes = [goal]
        while state != initial:
            state = previous[state]
            nodes.append(state[0])
        nodes.reverse()
        if cacheable:self._static_routes[start,goal]=tuple(nodes)
        return nodes

    def path_points(self, nodes):
        if len(nodes) < 2:
            return []
        result = []
        for index, (a, b) in enumerate(zip(nodes, nodes[1:])):
            points = self.edge_points[a, b]
            result.extend(points if index == 0 else points[1:])
        last = self.stations[nodes[-1]]
        if 'dir' in last and result:
            x, y, _ = result[-1]
            result[-1] = (x, y, float(last['dir']))
        return result
