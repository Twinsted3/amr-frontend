"""Bounded search for safe stop-to-stop recovery of wait-for groups."""

from dataclasses import dataclass
import heapq
from itertools import count
from functools import lru_cache
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
    start_yaw: float | None = None


@dataclass(frozen=True)
class CycleMove:
    robot: str
    nodes: tuple[str, ...]
    cargo: str | None
    cells: frozenset | None = None


def move_envelope(graph, nodes):
    """Recovery sweep plus both stationary turning envelopes."""
    endpoints = [graph.stations[node]['pos'] for node in (nodes[0], nodes[-1])]
    swept = occupied_cells(graph.path_points(nodes))
    for point in endpoints:
        swept.update(occupied_cells([(point['x'], point['y'])], radius=PARKING_RADIUS))
    return frozenset(swept)


def ring_order(vehicles, waits):
    by_name = {v.name: v for v in vehicles}
    dependencies = {}
    if waits is not None:
        for name in by_name:
            blockers = set(waits.get(name, {}).get('blockers', ())) & by_name.keys()
            if len(blockers) != 1:
                break
            dependencies[name] = blockers.pop()
    if len(dependencies) != len(vehicles) or len(set(dependencies.values())) != len(vehicles):
        by_start = {v.start: v.name for v in vehicles}
        if len(by_start) != len(vehicles) or set(by_start) != {v.goal for v in vehicles}:
            return []
        dependencies = {v.name: by_start[v.goal] for v in vehicles}
    predecessor = {blocker: robot for robot, blocker in dependencies.items()}
    first = vehicles[0].name
    sequence = [first]
    while predecessor[sequence[-1]] != first:
        sequence.append(predecessor[sequence[-1]])
    return [by_name[name] for name in sequence] if len(sequence) == len(vehicles) else []


def rotate_ring(graph, vehicles, stops, reserved_nodes, reserved_edges, reserved_cells,
                deadline, max_attempts, waits, closed_edges, trajectory, geometry, blocked_by, entry_exclusions):
    """Try a single-vacancy rotation. Validate every move before returning any."""
    sequence = ring_order(vehicles, waits)
    if not sequence:
        return (), 'search_limit'

    def xy(node):
        p = graph.stations[node]['pos']
        return p['x'], p['y']

    @lru_cache(maxsize=None)
    def parking(node):
        return occupied_cells([xy(node)], radius=PARKING_RADIUS)

    def move(vehicle, destination, positions, footprints, headings):
        start = positions[vehicle.name]
        occupied = set(reserved_cells)
        for name, footprint in footprints.items():
            if name != vehicle.name:
                occupied.update(footprint)
        blocked_nodes = reserved_nodes | (set(positions.values()) - {start})
        blocked_edges = closed_edges | (blocked_by(occupied) if blocked_by else {
            edge for edge, cells in graph.edge_cells.items() if not cells.isdisjoint(occupied)})
        if entry_exclusions:
            blocked_edges |= entry_exclusions(positions, vehicle.name)
        yaw = headings[vehicle.name]
        options = geometry(vehicle.name, start, destination, yaw) if geometry else {}
        path = tuple(graph.route(start, destination, blocked_nodes, reserved_edges,
                                 forbidden_directed_edges=blocked_edges | set(options.get('geometry_edges', ())),
                                 forbidden_turns=options.get('forbidden_turns', ())))
        if trajectory and options:
            swept, destination_cells, final_yaw = trajectory(vehicle.name, path, yaw)
        else:
            lane_cells = graph.edge_cells[path] if len(path) == 2 else occupied_cells(graph.path_points(path))
            destination_cells = parking(destination)
            swept = lane_cells | parking(start) | destination_cells
            final_yaw = None
        swept = frozenset(swept | footprints[vehicle.name])
        if not swept.isdisjoint(occupied):
            raise RouteError('rotation would conflict with traffic')
        positions[vehicle.name] = destination
        footprints[vehicle.name] = destination_cells
        headings[vehicle.name] = final_yaw
        return CycleMove(vehicle.name, path, vehicle.cargo, swept if options else None)

    bays = stops.yield_bays - {v.start for v in vehicles} - reserved_nodes - stops.no_stop_stations
    if not bays:
        return (), 'search_limit'
    initial_footprints = {v.name: v.footprint | occupied_cells([v.start_xy]) for v in vehicles}
    remaining_attempts = max_attempts
    for offset, vehicle in enumerate(sequence):
        if time.monotonic() >= deadline:
            return (), 'search_limit'
        order = sequence[offset:] + sequence[:offset]
        for bay in sorted(bays):
            if remaining_attempts <= 0:
                return (), 'search_limit'
            remaining_attempts -= 1
            positions = {v.name: v.start for v in vehicles}
            footprints = initial_footprints.copy()
            headings = {v.name: v.start_yaw for v in vehicles}
            moves = []
            try:
                for peer, target in [(vehicle, bay), *((v, v.goal) for v in order[1:]),
                                     (vehicle, vehicle.goal)]:
                    if time.monotonic() >= deadline:
                        return (), 'search_limit'
                    moves.append(move(peer, target, positions, footprints, headings))
            except RouteError:
                continue
            return tuple(moves), 'planned'
    # A single-vacancy rotation is only one possible recovery strategy.
    return (), 'search_limit'


def plan_cycle(graph, vehicles, stops, reserved_nodes, reserved_edges, reserved_cells,
               *, max_vehicles=100, max_moves=None, max_states=192, budget_s=.35, waits=None,
               closed_edges=(), trajectory=None, geometry=None, blocked_by=None, entry_exclusions=None):
    """Return an ordered, collision-checked plan or a reason the search stopped."""
    if len(vehicles) > max_vehicles:
        return (), 'search_limit'
    deadline = time.monotonic() + budget_s
    closed_edges = frozenset(closed_edges)
    if len(vehicles) > 5:
        if max_states <= 0:
            return (), 'search_limit'
        if max_moves is None or len(vehicles) + 1 <= max_moves:
            # Leave time for a bounded joint search if one vacancy is insufficient.
            rotation_deadline = min(deadline, time.monotonic() + budget_s * .65)
            moves, status = rotate_ring(graph, vehicles, stops, reserved_nodes, reserved_edges,
                                        reserved_cells, rotation_deadline, max_states, waits, closed_edges,
                                        trajectory, geometry, blocked_by, entry_exclusions)
            if moves:
                return moves, status
    if max_moves is None:
        max_moves = max(9, len(vehicles) * 2)
    stations = tuple(vehicle.start for vehicle in vehicles)
    goals = tuple(vehicle.goal for vehicle in vehicles)
    parking_cells, swept_cells, blocked_for_cells = {}, {}, {}
    order = count()
    initial_headings = tuple(vehicle.start_yaw for vehicle in vehicles)
    initial_footprints = tuple(vehicle.footprint for vehicle in vehicles)
    large_group = len(vehicles) > 5
    queue = [(len(vehicles) if large_group else 0, 0., 0., 0., 0, next(order), stations, initial_headings,
              initial_footprints, frozenset(), (), 0.)]
    best = {}
    expanded = 0
    depth_limited = False
    if blocked_by:
        global_blocked = closed_edges | blocked_by(reserved_cells)
    else:
        global_blocked = closed_edges | {edge for edge, cells in graph.edge_cells.items()
                                        if not cells.isdisjoint(reserved_cells)}

    def distance_to_bay(start, bay):
        try:
            return graph.distance(start, bay)
        except RouteError:
            return float('inf')

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
        progress, first_done, delay_bound, distance, loaded_yields, _, positions, headings, footprints, moved, moves, delay = (
            heapq.heappop(queue))
        score = (progress, first_done, delay_bound, distance, loaded_yields)
        if best.get((positions, headings, moved), score) < score:
            continue
        if positions == goals:
            return moves, 'planned'
        if time.monotonic() >= deadline or expanded >= max_states:
            return (), 'search_limit'
        if len(moves) >= max_moves:
            depth_limited = True
            continue
        expanded += 1
        vehicle_positions = {vehicle.name: station for vehicle, station in zip(vehicles, positions)} if entry_exclusions else None
        for index, vehicle in enumerate(vehicles):
            start, goal = positions[index], goals[index]
            if start == goal:
                continue
            if time.monotonic() >= deadline:
                return (), 'search_limit'
            other_stops = {node for i, node in enumerate(positions) if i != index}
            blocked_nodes = reserved_nodes | other_stops
            occupied = set()
            for i, footprint in enumerate(footprints):
                if i != index:
                    occupied.update(footprint)
            key = frozenset(occupied)
            if key not in blocked_for_cells:
                blocked_for_cells[key] = global_blocked | (blocked_by(occupied) if blocked_by else {
                    edge for edge, cells in graph.edge_cells.items() if not cells.isdisjoint(occupied)})
            capacity_exclusions = entry_exclusions(vehicle_positions, vehicle.name) if entry_exclusions else frozenset()
            blocked = blocked_for_cells[key] | capacity_exclusions
            options = []
            yaw = headings[index]
            geometry_options = geometry(vehicle.name, start, goal, yaw) if geometry else {}
            try:
                options.append(next_segment(graph,start,goal,stops.waiting_points,blocked_nodes,reserved_edges,blocked,
                                            closed_edges=closed_edges | capacity_exclusions, **geometry_options))
            except RouteError:
                pass
            bays = stops.yield_bays - blocked_nodes - {start,goal}
            if large_group:
                bays = sorted(bays, key=lambda bay: (distance_to_bay(start, bay), bay))
            else:
                bays = sorted(bays)
            for bay in bays:
                if time.monotonic() >= deadline:
                    return (), 'search_limit'
                try:
                    bay_geometry = geometry(vehicle.name, start, bay, yaw) if geometry else {}
                    options.append(graph.route(start,bay,blocked_nodes,reserved_edges,
                                               forbidden_directed_edges=blocked | set(bay_geometry.get('geometry_edges', ())),
                                               forbidden_turns=bay_geometry.get('forbidden_turns', ())))
                except RouteError:
                    continue
            starting_cells = footprints[index]
            if not geometry_options and index not in moved:
                starting_cells |= occupied_cells([vehicle.start_xy])
            for path in options:
                nodes = tuple(path)
                station = nodes[-1]
                if len(nodes) < 2:
                    continue
                if trajectory and geometry_options:
                    try:
                        travel, arrival, heading = trajectory(vehicle.name, nodes, yaw)
                    except RouteError:
                        continue
                else:
                    arrival, heading = parked(station), None
                    travel = sweep(nodes) | arrival
                travel |= starting_cells
                if not travel.isdisjoint(occupied) or not travel.isdisjoint(reserved_cells):
                    continue
                after = positions[:index] + (station,) + positions[index+1:]
                arrival_headings = headings[:index] + (heading,) + headings[index+1:]
                arrival_footprints = footprints[:index] + (arrival,) + footprints[index+1:]
                meters = sum(graph.edges[a,b][1] for a,b in zip(nodes,nodes[1:]))
                next_distance = distance + meters
                next_delay = delay + (next_distance if station == goal else 0.)
                # Before anyone reaches their goal, distance already traveled is a lower bound.
                someone_done = any(current == target for current,target in zip(positions,goals))
                next_first = first_done if someone_done else next_distance
                next_loaded = loaded_yields + int(vehicle.cargo is not None and station != goal)
                unfinished = sum(current != target for current,target in zip(after,goals))
                next_score = (unfinished if large_group else 0, next_first, next_delay+unfinished*next_distance,
                              next_distance, next_loaded)
                moved_now = moved | {index}
                key = after, arrival_headings, moved_now
                if key in best and best[key] <= next_score:
                    continue
                best[key] = next_score
                move = CycleMove(vehicle.name, nodes, vehicle.cargo, frozenset(travel) if geometry_options else None)
                heapq.heappush(queue, (*next_score, next(order), after, arrival_headings, arrival_footprints, moved_now,
                                       moves + (move,), next_delay))
    return (), 'search_limit' if depth_limited or len(vehicles) > 5 else 'no_safe_plan'
