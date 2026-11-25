"""Isolated concurrent baseline for the real fleet and SMAP route graph."""
import argparse
from collections import Counter
import json
from pathlib import Path
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'src/warehouse_sim'))
sys.path.insert(0, str(ROOT.parent))
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.web_requests import validate_request


def scenario(size):
    points = []
    curves = []
    for lane in range(size):
        row = []
        for offset, label in enumerate(('CP', 'PICK', 'DROP')):
            row.append(dict(instanceName=f'{label}_{lane}', pos=dict(x=6 * offset, y=6 * lane)))
        points.extend(row)
        for a, b in zip(row, row[1:]):
            for start, end in ((a, b), (b, a)):
                x, y = start['pos']['x'], start['pos']['y']
                dx = end['pos']['x'] - x
                curves.append(dict(startPos=start, endPos=end,
                                   controlPos1=dict(x=x + dx / 3, y=y),
                                   controlPos2=dict(x=x + 2 * dx / 3, y=y)))
    # Synthetic lanes are outside the physical warehouse perimeter.
    return RouteGraph(document=dict(advancedPointList=points, advancedCurveList=curves),
                      clearance=lambda x, y: True)


def run(size, database):
    started = time.perf_counter()
    cpu = time.process_time()
    graph = scenario(size)
    fleet = Fleet(graph, [str(n) for n in range(size)], feedback_handling=True)
    service = DurableDispatch(fleet, database, 'isolated-lanes')
    try:
        return exercise(service, size, started, cpu)
    finally:
        service.close()


def exercise(service, size, started, cpu):
    fleet = service.fleet
    graph = fleet.graph
    positions = {n: f'CP_{n}' for n in fleet.robots}
    tasks = []
    for n in fleet.robots:
        kind = ('move', 'standby', 'transport')[int(n) % 3]
        task = dict(id=f'first-{n}', type=kind, priority=100 if int(n) % 10 == 0 else 0)
        goals = dict(pickup=f'PICK_{n}', dropoff=f'DROP_{n}') if kind == 'transport' else dict(goal=f'DROP_{n}')
        tasks.append(dict(task, **goals))
    first = validate_request(dict(operation='submit_batch', tasks=tasks), graph.stations)
    second = validate_request(dict(operation='submit_batch', tasks=[
        dict(id=f'return-{n}', type='standby', goal=f'CP_{n}') for n in fleet.robots
    ]), graph.stations)
    service.request(first, 0)
    service.request(first, 0)
    if len(fleet.jobs) != size:
        raise RuntimeError('duplicate submission created additional jobs')
    peak = 0
    commands_sent = 0
    in_motion = {}
    busy_cells = set()
    for tick in range(100):
        for n, station in positions.items():
            fleet.update(n, station, .8, tick)
        for command in service.tick(tick):
            service.published(command)
            n = command['robot']
            goal = command['goal']
            execution = command['task_id']
            commands_sent += 1
            if 'action' in command:
                service.route_event(dict(command_id=command['command_id'], event='handling_done', robot=n, station=goal, task_id=execution,
                                    loaded=command['action'] == 'pickup', cargo_id=command['cargo_id']), tick)
            else:
                route = graph.route(positions[n], goal)
                cells = set().union(*(graph.edge_cells[edge] for edge in zip(route, route[1:])))
                if busy_cells & cells:
                    raise RuntimeError('overlapping route reservation in isolated lanes')
                busy_cells.update(cells)
                in_motion[n] = (route[1:], cells, execution, command['command_id'])
        peak = max(peak, len(in_motion))
        for n, (remaining, cells, execution, command_id) in list(in_motion.items()):
            if remaining:
                positions[n] = remaining.pop(0)
            if not remaining:
                service.route_event(dict(command_id=command_id, event='arrived', robot=n, station=positions[n], task_id=execution), tick)
                busy_cells.difference_update(cells)
                del in_motion[n]
        if len(fleet.jobs) == size and all(j.state == 'DONE' for j in fleet.jobs.values()):
            service.request(second, tick + 1)
        if len(fleet.jobs) == 2 * size and all(j.state == 'DONE' for j in fleet.jobs.values()):
            break
    return dict(vehicles=size, peak_in_motion=peak, states=dict(Counter(j.state for j in fleet.jobs.values())),
                commands=commands_sent, ticks=tick + 1, elapsed_s=time.perf_counter()-started,
                cpu_s=time.process_time()-cpu)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('vehicles', type=int, choices=(5, 100))
    args = parser.parse_args()
    with tempfile.TemporaryDirectory() as directory:
        report = run(args.vehicles, Path(directory) / 'dispatch.sqlite3')
    print(json.dumps(report))
    raise SystemExit(report['states'] != {'DONE': args.vehicles * 2}
                     or report['peak_in_motion'] != args.vehicles)
