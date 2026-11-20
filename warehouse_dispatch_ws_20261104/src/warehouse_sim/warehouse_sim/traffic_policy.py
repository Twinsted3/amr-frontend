"""Wait-for cycles. A cycle is reported independently of how it is resolved."""

import json
import math
from dataclasses import dataclass
from pathlib import Path
from warehouse_sim.route_graph import RouteError

STOP_TOLERANCE = .65
STOP_FOOTPRINT_RADIUS = 1.9


@dataclass(frozen=True)
class TrafficStops:
    waiting_points: frozenset[str]
    yield_bays: frozenset[str]
    no_stop_stations: frozenset[str]
    dedicated_yield: bool = True

    @classmethod
    def load(cls, stations, path=None):
        if not path:
            return cls(frozenset(), frozenset(name for name in stations if name.startswith('CP_')),
                       frozenset(), dedicated_yield=False)
        document = json.loads(Path(path).read_text(encoding='utf-8-sig'))
        fields = ('waiting_points', 'yield_bays', 'no_stop_stations')
        if (not isinstance(document, dict) or not set(fields) <= set(document)
                or set(document) - {*fields, 'no_stop_regions'}):
            raise ValueError('traffic policy must define waiting_points, yield_bays and no_stop_stations')
        groups = {}
        for field in fields:
            names = document[field]
            if not isinstance(names, list) or any(not isinstance(name, str) or name not in stations for name in names):
                raise ValueError(f'{field} must contain station names from the active map')
            if len(set(names)) != len(names):
                raise ValueError(f'{field} contains duplicate stations')
            groups[field] = frozenset(names)
        regions = document.get('no_stop_regions', [])
        if not isinstance(regions, list):
            raise ValueError('no_stop_regions must be a list of map rectangles')
        for bounds in regions:
            if (not isinstance(bounds, list) or len(bounds) != 4
                    or any(type(coordinate) not in (int,float) or not math.isfinite(coordinate)
                           for coordinate in bounds)):
                raise ValueError('no_stop_regions rectangles require four finite coordinates')
            x_min, y_min, x_max, y_max = bounds
            if x_min >= x_max or y_min >= y_max:
                raise ValueError('no_stop_regions rectangles must have positive size')
            blocked = []
            for name, station in stations.items():
                x, y = station['pos']['x'], station['pos']['y']
                if math.hypot(max(x_min-x, 0, x-x_max), max(y_min-y, 0, y-y_max)) <= STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE:
                    blocked.append(name)
            groups['no_stop_stations'] |= frozenset(blocked)
        for field in ('waiting_points', 'yield_bays'):
            if groups[field] & groups['no_stop_stations']:
                raise ValueError(f'{field} overlaps no_stop_stations')
        if groups['waiting_points'] & groups['yield_bays']:
            raise ValueError('waiting_points overlaps yield_bays')
        return cls(**groups)

    def validate_destinations(self, goals):
        forbidden = self.no_stop_stations.intersection(goals)
        if forbidden:
            raise ValueError(f"planned stop forbidden at {', '.join(sorted(forbidden))}")
        dedicated = self.yield_bays.intersection(goals)
        if self.dedicated_yield and dedicated:
            raise ValueError(f"station reserved for traffic yielding: {', '.join(sorted(dedicated))}")


def next_segment(graph, start, goal, waiting_points, reserved_nodes, reserved_edges, blocked_edges):
    """Return a free prefix ending at the destination or an approved waiting point."""
    def available(destination):
        return graph.route(start, destination, reserved_nodes, reserved_edges,
                           forbidden_directed_edges=blocked_edges)

    try:
        route = available(goal)
    except RouteError:
        nominal = graph.route(start, goal)
        entrance = next((station for station in nominal[1:-1] if station in waiting_points), None)
        if entrance is None:
            raise
        route = available(entrance)
    end = next((index for index, station in enumerate(route[1:-1], start=1)
                if station in waiting_points), len(route)-1)
    return route[:end+1]


def wait_cycles(waiting):
    graph={n:set(w.get('blockers',())) & set(waiting) for n,w in waiting.items()}
    index=0;indices={};low={};stack=[];on_stack=set();cycles=[]
    def visit(n):
        nonlocal index
        indices[n]=low[n]=index;index+=1;stack.append(n);on_stack.add(n)
        for other in graph[n]:
            if other not in indices:visit(other);low[n]=min(low[n],low[other])
            elif other in on_stack:low[n]=min(low[n],indices[other])
        if low[n]==indices[n]:
            component=[]
            while True:
                other=stack.pop();on_stack.remove(other);component.append(other)
                if other==n:break
            if len(component)>1:cycles.append(sorted(component))
    for n in graph:
        if n not in indices:visit(n)
    return sorted(cycles)
