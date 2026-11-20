"""Directed SMAP Bézier graph, path sampling and conservative geometry checks."""

from __future__ import annotations

import heapq
import json
import math
from pathlib import Path

from warehouse_sim.layout import FOOTPRINT, HEIGHT, WIDTH, obstacle_rectangles


class RouteError(ValueError):
    pass


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


def occupied_cells(points, radius=1.9, resolution=0.5):
    """Rasterize the fork-inclusive footprint and the sweep at heading changes."""
    offsets = [
        (dx, dy)
        for dx in range(-math.ceil(radius/resolution), math.ceil(radius/resolution) + 1)
        for dy in range(-math.ceil(radius/resolution), math.ceil(radius/resolution) + 1)
        if math.hypot(dx*resolution, dy*resolution) <= radius + resolution/2
    ]
    cells = set()
    previous = None
    for point in points:
        cx, cy = round(point[0]/resolution), round(point[1]/resolution)
        if len(point) < 3:
            cells.update((cx+dx, cy+dy) for dx, dy in offsets)
            continue
        yaw = point[2]
        cosine, sine = math.cos(yaw), math.sin(yaw)
        padding = 0.15 + resolution/math.sqrt(2)
        span = math.ceil((1.75+padding)/resolution)
        for ix in range(cx-span, cx+span+1):
            for iy in range(cy-span, cy+span+1):
                dx, dy = ix*resolution-point[0], iy*resolution-point[1]
                local_x, local_y = dx*cosine+dy*sine, -dx*sine+dy*cosine
                if FOOTPRINT[0][0]-padding <= local_x <= FOOTPRINT[1][0]+padding and abs(local_y) <= 0.58+padding:
                    cells.add((ix, iy))
        if previous is not None:
            angle = math.atan2(math.sin(yaw-previous), math.cos(yaw-previous))
            if abs(angle) > 0.3:
                cells.update((cx+dx, cy+dy) for dx, dy in offsets)
        previous = yaw
    return cells


class RouteGraph:
    def __init__(self, path=None, *, document=None):
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
        self.adj = {name: [] for name in self.stations}
        self._static_routes={}
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
            if not all(_clearance(x, y) for x, y, _ in points):
                raise RouteError(f'Route intersects a rack or wall: {a} -> {b}')
            self.edges[key] = (curve, length)
            self.edge_cells[key] = occupied_cells(points)
            self.adj[a].append((b, length))

    def route(self, start, goal, forbidden_nodes=(), forbidden_edges=(), *, forbidden_directed_edges=()):
        if start not in self.stations or goal not in self.stations:
            raise RouteError(f'Unknown start or goal: {start}, {goal}')
        blocked_nodes = set(forbidden_nodes) - {start}
        blocked_edges = {frozenset(edge) for edge in forbidden_edges}
        directed_edges = set(forbidden_directed_edges)
        cacheable=not blocked_nodes and not blocked_edges and not directed_edges
        if cacheable and (start,goal) in self._static_routes:return list(self._static_routes[start,goal])
        queue = [(0.0, start)]
        best = {start: 0.0}
        previous = {}
        while queue:
            cost, node = heapq.heappop(queue)
            if cost != best[node]:
                continue
            if node == goal:
                break
            for neighbor, length in self.adj[node]:
                if neighbor in blocked_nodes or frozenset((node, neighbor)) in blocked_edges or (node,neighbor) in directed_edges:
                    continue
                candidate = cost + length
                if candidate < best.get(neighbor, math.inf):
                    best[neighbor] = candidate
                    previous[neighbor] = node
                    heapq.heappush(queue, (candidate, neighbor))
        if goal not in best:
            raise RouteError(f'No available route: {start} -> {goal}')
        nodes = [goal]
        while nodes[-1] != start:
            nodes.append(previous[nodes[-1]])
        nodes.reverse()
        if cacheable:self._static_routes[start,goal]=tuple(nodes)
        return nodes

    def path_points(self, nodes):
        if len(nodes) < 2:
            return []
        result = []
        for index, (a, b) in enumerate(zip(nodes, nodes[1:])):
            curve, _ = self.edges[(a, b)]
            points, _ = samples(curve)
            result.extend(points if index == 0 else points[1:])
        last = self.stations[nodes[-1]]
        if 'dir' in last and result:
            x, y, _ = result[-1]
            result[-1] = (x, y, float(last['dir']))
        return result
