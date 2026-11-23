"""Connected, reproducible acceptance geometry for the lightweight simulator."""
from warehouse_sim.traffic_policy import TrafficStops


def shared_warehouse(size=100):
    if size < 10 or size % 5:
        raise ValueError('车数要求至少 10 台且是 5 的倍数')
    points = {}
    curves = []
    positions = {}
    tasks = [[], []]

    def point(name, x, y):
        points[name] = dict(instanceName=name, pos=dict(x=x, y=y))

    def lane(start, end):
        a, b = points[start]['pos'], points[end]['pos']
        p1, p2 = [{axis: a[axis] + fraction * (b[axis] - a[axis]) for axis in ('x', 'y')}
                  for fraction in (1/3, 2/3)]
        curves.append(dict(startPos=points[start], endPos=points[end], controlPos1=p1, controlPos2=p2))

    def bridge(start, end):
        lane(start, end)
        lane(end, start)

    previous = None
    for group in range(size // 5 - 1):
        x = group * 58 + 40
        spine = f'SPINE_{group}'
        point(spine, x, 15)
        if previous:
            bridge(previous, spine)
        previous = spine
        backbone, homes, goals = [], [], []
        for index in range(5):
            n = group * 5 + index
            line, home, goal = f'J_{n}', f'HOME_{n}', f'DROP_{n}'
            y = 27 + 8 * index
            point(line, x, y)
            point(home, x - 9, y)
            point(goal, x + 9, y)
            bridge(backbone[-1] if backbone else spine, line)
            bridge(home, line)
            bridge(line, goal)
            positions[f'SIM-{n+1:03d}'] = home
            backbone.append(line)
            homes.append(home)
            goals.append(goal)
        for index in range(5):
            n = group * 5 + index
            if index < 3:
                tasks[0].append(dict(id=f'OUT-{n:03d}', type='transport',
                                     pickup=homes[index], dropoff=goals[(index+2) % 5]))
            else:
                tasks[0].append(dict(id=f'OUT-{n:03d}', type=('move','standby')[index-3],
                                     goal=goals[(index+2) % 5]))
            tasks[1].append(dict(id=f'BACK-{n:03d}', type=('move','standby')[index % 2], goal=homes[index]))
        if group == 0:
            point('HP_SWAP', x-14, 15)
            point('PP_ISOLATE', x-27, 15)
            bridge(spine, 'HP_SWAP')
            bridge('HP_SWAP', 'PP_ISOLATE')
            point('DET_IN', x, 47)
            point('DET_1', x - 24, 47)
            point('DET_2', x - 24, 55)
            point('DET_OUT', x, 55)
            detour = [backbone[2], 'DET_IN', 'DET_1', 'DET_2', 'DET_OUT', backbone[3]]
            for a, b in zip(detour, detour[1:]):
                bridge(a, b)
            point('CP_NORTH', x, 74)
            point('CP_SOUTH', x+9, 19)
            bridge(backbone[-1], 'CP_NORTH')
            bridge(backbone[0], 'CP_SOUTH')
            point('PARK_SOUTH', x+16, 19)
            point('PARK_NORTH', x+7, 74)
            bridge('CP_SOUTH', 'PARK_SOUTH')
            bridge('CP_NORTH', 'PARK_NORTH')
            for suffix, origin, offsets in (
                    ('SOUTH', points['CP_SOUTH']['pos'], [(2, -8), (10, -8)]),
                    ('NORTH', points['CP_NORTH']['pos'], [(-6, 8), (4, 9)])):
                for index, (dx, dy) in enumerate(offsets):
                    parking = f'PP_EXIT_{suffix}_{index}'
                    point(parking, origin['x'] + dx, origin['y'] + dy)
                    bridge(f'CP_{suffix}', parking)
            tasks[1][-2]['goal'] = 'PARK_SOUTH'
            tasks[1][-1]['goal'] = 'PARK_NORTH'
            positions.update({'SIM-004': 'CP_SOUTH', 'SIM-005': 'CP_NORTH'})

    # Five one-way occupied checkpoints force the next vehicle to yield.
    x = (size // 5 - 1) * 58 + 40
    ring = [f'RING_{i}' for i in range(5)]
    egress = [f'EXIT_{i}' for i in range(5)]
    coordinates = [(x, 29), (x+10, 28), (x+22, 35), (x+15, 49), (x-2, 46)]
    exits = [(x-9, 22), (x+17, 20), (x+32, 34), (x+19, 58), (x-12, 50)]
    for index, ((a, b), (c, d)) in enumerate(zip(coordinates, exits)):
        point(ring[index], a, b)
        point(egress[index], c, d)
        positions[f'SIM-{size-4+index:03d}'] = ring[index]
    for index in range(5):
        lane(ring[index], ring[(index+1) % 5])
        bridge(ring[index], egress[index])
        tasks[0].append(dict(id=f'RING-OUT-{index}', type='transport',
                             pickup=ring[index], dropoff=egress[(index+1) % 5], priority=100))
        a, b = coordinates[index]
        c, d = exits[index]
        parking = f'RING_PARK_{index}'
        point(parking, c + (c-a), d + (d-b) if index != 0 else d + 8)
        bridge(egress[index], parking)
        tasks[1].append(dict(id=f'RING-BACK-{index}', type='standby', goal=parking))
    point('RING_LINK', x-9, 15)
    bridge(previous, 'RING_LINK')
    bridge('RING_LINK', egress[0])
    point('YIELD_1', x+8, 35)
    lane(ring[1], 'YIELD_1')
    lane('YIELD_1', ring[2])
    stops = TrafficStops(frozenset(), frozenset({'YIELD_1'}), frozenset())
    document = dict(header=dict(mapType='2D-Map', mapName=f'shared-{size}', resolution=.1),
                    advancedPointList=list(points.values()), advancedCurveList=curves)
    return document, positions, stops, tasks


class ScenarioConditions:
    """Apply repeatable traffic and charging events within the shared warehouse."""

    blocked_aisle = frozenset({('J_2', 'J_3'), ('J_3', 'J_2')})
    closed_bay = frozenset({('RING_1', 'YIELD_1'), ('YIELD_1', 'RING_2')})

    def __init__(self, execution):
        self.bay_open_at = None
        execution.soc['SIM-001'] = .12
        execution.closed_edges.update(self.blocked_aisle | self.closed_bay)

    def step(self, execution):
        held = next((cycle for cycle in execution.recent_cycles
                     if cycle['status'] == 'no_safe_plan'), None)
        if self.bay_open_at is None and held:
            self.bay_open_at = execution.tick + 3
        if held and self.bay_open_at >= execution.tick:
            if set(held['robots']) & execution.active.keys():
                raise RuntimeError('无安全方案时不应给互等车辆授权移动')
            execution.stats['no_safe_hold_ticks'] += 1
        if self.bay_open_at == execution.tick:
            execution.closed_edges.difference_update(self.closed_bay)
            execution.fleet.emit('traffic_yield_bay_opened', station='YIELD_1')
