"""Search stop-to-stop moves for a small wait-for cycle."""

from dataclasses import dataclass
import heapq
from itertools import count
import time

from warehouse_sim.route_graph import RouteError, occupied_cells
from warehouse_sim.traffic_policy import STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE, next_segment


PARKING_RADIUS = STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE


@dataclass(frozen=True)
class CycleVehicle:
    name: str
    start: str
    goal: str
    cargo: str | None
    footprint: frozenset
    start_xy: tuple


@dataclass(frozen=True)
class CycleMove:
    robot: str
    nodes: tuple[str, ...]
    cargo: str | None


def plan_cycle(graph, vehicles, stops, reserved_nodes, reserved_edges, reserved_cells,
               *, max_vehicles=4, max_moves=9, max_states=192, budget_s=.35):
    """Return an ordered, collision-checked plan or a reason the search stopped."""
    if len(vehicles) > max_vehicles:
        return (), 'search_limit'
    deadline = time.monotonic() + budget_s
    stations = tuple(vehicle.start for vehicle in vehicles)
    goals = tuple(vehicle.goal for vehicle in vehicles)
    parking_cells, swept_cells, blocked_for_cells = {}, {}, {}
    order = count()
    queue = [(0., 0., 0., 0, next(order), stations, frozenset(), (), 0.)]
    best = {}
    expanded = 0
    depth_limited = False

    def xy(station):
        pos = graph.stations[station]['pos']
        return pos['x'], pos['y']

    def parked(station):
        if station not in parking_cells:
            parking_cells[station] = occupied_cells([xy(station)], radius=PARKING_RADIUS)
        return parking_cells[station]

    def sweep(nodes):
        if nodes not in swept_cells:
            swept_cells[nodes] = occupied_cells(graph.path_points(nodes))
        return swept_cells[nodes]

    while queue:
        first_done, delay_bound, distance, loaded_yields, _, positions, moved, moves, delay = heapq.heappop(queue)
        score = (first_done, delay_bound, distance, loaded_yields)
        if best.get((positions,moved), score) < score:
            continue
        if positions == goals:
            return moves, 'planned'
        if time.monotonic() >= deadline or expanded >= max_states:
            return (), 'search_limit'
        if len(moves) >= max_moves:
            depth_limited = True
            continue
        expanded += 1
        for index, vehicle in enumerate(vehicles):
            start, goal = positions[index], goals[index]
            if start == goal:
                continue
            if time.monotonic() >= deadline:
                return (), 'search_limit'
            other_stops = {node for i, node in enumerate(positions) if i != index}
            blocked_nodes = reserved_nodes | other_stops
            occupied = set(reserved_cells)
            for i, peer in enumerate(vehicles):
                if i != index:
                    occupied.update(peer.footprint if i not in moved else parked(positions[i]))
            key = frozenset(occupied)
            if key not in blocked_for_cells:
                blocked_for_cells[key] = {edge for edge, cells in graph.edge_cells.items()
                                          if not cells.isdisjoint(occupied)}
            blocked = blocked_for_cells[key]
            options = []
            try:
                options.append(next_segment(graph,start,goal,stops.waiting_points,blocked_nodes,reserved_edges,blocked))
            except RouteError:
                pass
            for bay in sorted(stops.yield_bays - blocked_nodes - {start,goal}):
                if time.monotonic() >= deadline:
                    return (), 'search_limit'
                try:
                    options.append(graph.route(start,bay,blocked_nodes,reserved_edges,
                                               forbidden_directed_edges=blocked))
                except RouteError:
                    continue
            starting_cells = (vehicle.footprint | occupied_cells([vehicle.start_xy])
                              if index not in moved else parked(start))
            for path in options:
                nodes = tuple(path)
                station = nodes[-1]
                if len(nodes) < 2 or not (sweep(nodes) | starting_cells | parked(station)).isdisjoint(occupied):
                    continue
                after = positions[:index] + (station,) + positions[index+1:]
                meters = sum(graph.edges[a,b][1] for a,b in zip(nodes,nodes[1:]))
                next_distance = distance + meters
                next_delay = delay + (next_distance if station == goal else 0.)
                # Before anyone reaches their goal, distance already traveled is a lower bound.
                someone_done = any(current == target for current,target in zip(positions,goals))
                next_first = first_done if someone_done else next_distance
                next_loaded = loaded_yields + int(vehicle.cargo is not None and station != goal)
                unfinished = sum(current != target for current,target in zip(after,goals))
                next_score = (next_first, next_delay+unfinished*next_distance, next_distance, next_loaded)
                moved_now = moved | {index}
                if (after,moved_now) in best and best[(after,moved_now)] <= next_score:
                    continue
                best[(after,moved_now)] = next_score
                move = CycleMove(vehicle.name,nodes,vehicle.cargo)
                heapq.heappush(queue, (*next_score,next(order),after,moved_now,moves+(move,),next_delay))
    return (), 'search_limit' if depth_limited else 'no_safe_plan'
