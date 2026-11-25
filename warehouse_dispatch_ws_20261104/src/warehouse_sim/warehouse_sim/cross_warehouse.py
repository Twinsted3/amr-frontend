"""A reproducible hundred-forklift benchmark with a shared work queue."""
import random

from warehouse_sim.charge_benchmark import configure_charge_benchmark
from warehouse_sim.shared_warehouse import shared_warehouse
from warehouse_sim.traffic_policy import TrafficStops


INITIAL_LOW = (1, 3, 7, 12, 16, 22, 27, 32, 39, 46, 53, 60, 68, 75, 82, 90)
STAGED_AT_CHARGERS = (12, 27, 39, 53, 68, 82)


def cross_warehouse(seed=22):
    document, positions, stops, _ = shared_warehouse(100)
    document['header']['mapName'] = 'forklift-cross-100'
    points = {point['instanceName']: point for point in document['advancedPointList']}
    curves = document['advancedCurveList']
    for data in points.values():
        data['maneuver_radius_m'] = 3.3

    def point(name, x, y):
        entry = dict(instanceName=name, pos=dict(x=x, y=y), maneuver_radius_m=3.3)
        points[name] = entry
        document['advancedPointList'].append(entry)

    def lane(start, end, control=None):
        a, b = points[start]['pos'], points[end]['pos']
        first, second = control or [
            tuple(a[axis] + t * (b[axis] - a[axis]) for axis in ('x', 'y')) for t in (1/3, 2/3)
        ]
        curves.append(dict(startPos=points[start], endPos=points[end],
                           controlPos1=dict(zip(('x', 'y'), first)), controlPos2=dict(zip(('x', 'y'), second))))

    def bridge(a, b):
        lane(a, b)
        lane(b, a)

    # A second cross aisle provides alternate routes between the same work areas.
    # The 58 m bay spacing is kept from the original shared warehouse.
    previous = None
    for area in range(19):
        bypass = f'UPPER_{area}'
        x = 40 + 58 * area
        point(bypass, x, 68)
        bridge(bypass, f'J_{5 * area + 4}')
        if previous is not None:
            bridge(previous, bypass)
        previous = bypass

    # These two berths are inherited from the original warehouse. Each of
    # their parking branches needs a one-way exit outside the charging berth.
    for name, x, y in (
            ('NORTH_EXIT_WEST', 31, 67), ('NORTH_EXIT_EAST', 52, 66), ('NORTH_EXIT_TURN', 55, 82),
            ('SOUTH_EXIT_WEST', 40, 7), ('SOUTH_EXIT_EAST', 62, 5), ('SOUTH_EXIT_TURN', 65, 18)):
        point(name, x, y)
    for start, end in (
            ('PP_EXIT_NORTH_0', 'NORTH_EXIT_WEST'), ('NORTH_EXIT_WEST', 'UPPER_0'),
            ('PP_EXIT_NORTH_1', 'NORTH_EXIT_TURN'), ('NORTH_EXIT_TURN', 'NORTH_EXIT_EAST'),
            ('PARK_NORTH', 'NORTH_EXIT_EAST'), ('NORTH_EXIT_EAST', 'UPPER_0'),
            ('PP_EXIT_SOUTH_0', 'SOUTH_EXIT_WEST'), ('SOUTH_EXIT_WEST', 'SPINE_0'),
            ('PP_EXIT_SOUTH_1', 'SOUTH_EXIT_EAST'), ('PARK_SOUTH', 'SOUTH_EXIT_TURN'),
            ('SOUTH_EXIT_TURN', 'SOUTH_EXIT_EAST'), ('SOUTH_EXIT_EAST', 'SOUTH_EXIT_WEST')):
        lane(start, end)

    for number, area in enumerate((3, 6, 9, 12, 15, 18)):
        x = 40 + 58 * area
        plug = f'CP_ZONE_{number}'
        point(plug, x, 76)
        positions[f'SIM-{STAGED_AT_CHARGERS[number]:03d}'] = plug
        bridge(f'UPPER_{area}', plug)
        point(f'PP_EXIT_ZONE_{number}_0', x+8, 81)
        bridge(plug, f'PP_EXIT_ZONE_{number}_0')
        # A workcell near the charger but reachable without going through the berth.
        pickup = f'PICK_ZONE_{number}'
        point(pickup, x+15, 77)
        bridge(f'UPPER_{area}', pickup)
        bridge(plug, pickup)
        bridge(f'PP_EXIT_ZONE_{number}_0', pickup)

    # Six interlocked checkpoints share the connected network. The C→A lane
    # crosses the parked footprint at D; F→D crosses B’s footprint.
    local = dict(A=(10, 20), B=(22, 20), C=(15, 32), D=(11, 26), E=(32, 28),
                 F=(27, 13), Y=(3, 10), Z=(35, 10), LINK=(1, 2))
    dx, dy = 1210, 18
    for name, (x, y) in local.items():
        point(f'LOCK_{name}', dx+x, dy+y)
    cycle = tuple(zip('ABCDEF', 'BCAEFD'))
    controls = {('C', 'A'): ((12, 29), (9, 23)), ('F', 'D'): ((27, 17), (19, 70 / 3))}
    for start, end in (*cycle, ('A', 'Y'), ('Y', 'B'), ('F', 'Z')):
        control = controls.get((start, end))
        lane(f'LOCK_{start}', f'LOCK_{end}', [(dx + x, dy + y) for x, y in control] if control else None)
    # The outer lane returns from the second bay without squeezing past the
    # parked truck at E. Its four modeled junctions have maneuvering space.
    outer = ('LOCK_Z', 'LOCK_OUT_1', 'LOCK_OUT_2', 'LOCK_OUT_3', 'LOCK_OUT_4', 'LOCK_D')
    for name, xy in zip(outer[1:-1], ((43, 13), (44, 42), (5, 43), (4, 27))):
        point(name, dx + xy[0], dy + xy[1])
    for start, end in zip(outer, outer[1:]):
        lane(start, end)
    lane('LOCK_B', 'LOCK_OUT_1')
    lane('LOCK_Z', 'LOCK_LINK', [(dx+22, dy-5), (dx+11, dy-5)])
    lane('LOCK_LINK', 'LOCK_Z', [(dx+11, dy-5), (dx+22, dy-5)])
    bridge('LOCK_Y', 'LOCK_LINK')
    bridge('RING_LINK', 'LOCK_LINK')
    for index, (start, _) in enumerate(cycle, 95):
        positions[f'SIM-{index:03d}'] = f'LOCK_{start}'

    rng = random.Random(seed)
    pallets = ('1000x1200', '800x1200', '1000x1000')
    phases = []
    for batch in range(5):
        items = []
        for index in range(100 if batch < 2 else 35):
            area = rng.randrange(19)
            target = max(0, min(18, area + rng.choice((-3, -2, -1, 1, 2, 3))))
            if target == area:
                target = area + 1 if area < 18 else area - 1
            source = f'DROP_{area * 5 + rng.randrange(5)}'
            goal = f'DROP_{target * 5 + rng.randrange(5)}'
            priority = rng.choices((-100, 0, 100), weights=(2, 7, 1))[0]
            identity = f'X{batch}-{index:03d}'
            if rng.randrange(5):
                item = dict(id=identity, type='transport', pickup=source, dropoff=goal, priority=priority,
                            requirements={'payload_kg': rng.choice((600, 1200, 1800)), 'pallet': rng.choice(pallets)})
            else:
                item = dict(id=identity, type='standby', goal=f'HOME_{target * 5 + rng.randrange(5)}',
                            priority=priority)
            items.append(item)
        phases.append(items)
    # Introduce fresh warehouse orders while the first low-SOC cohort returns.
    # These are ordinary pooled assignments with pickup points at the six upper workcells.
    for batch in range(2):
        phases.append([dict(id=f'RETURN-TO-WORK-{batch}-{number}', type='transport',
                            pickup=f'PICK_ZONE_{number}', dropoff=f'DROP_{target * 5 + 4}',
                            priority=(100 if batch else 0), requirements={'payload_kg': 600, 'pallet': '1000x1200'})
                       for number, target in enumerate((4, 7, 10, 13, 16, 17))])
    return document, positions, TrafficStops(stops.waiting_points,
        stops.yield_bays | {'LOCK_Y', 'LOCK_Z'}, stops.no_stop_stations), phases


def prepare_forklifts(execution, *, optimized=True):
    """Nominal manufacturer profile; site dwell and energy remain adjustable."""
    for name, vehicle in execution.fleet.robots.items():
        vehicle.model = 'SFL-CDD20-Y'
        vehicle.payload_kg = 2000
        vehicle.performance = {'empty_speed_mps': .90, 'loaded_speed_mps': .70,
                               'empty_soc_per_m': .00020, 'loaded_soc_per_m': .00034,
                               'handling_s': 18.}
    execution.rolling_admission = True
    initial_soc = {f'SIM-{number:03d}': (.12, .15, .18, .23)[step % 4]
                   for step, number in enumerate(INITIAL_LOW)}
    # The preceding shift has already brought eight depleted trucks to the
    # eight berths. Other low-SOC trucks must queue under real occupation.
    for number in (*STAGED_AT_CHARGERS, 4, 5):
        initial_soc[f'SIM-{number:03d}'] = .14
    groups = {name: f'area-{int((point["pos"]["x"] + 7) // (58 * 3))}'
              for name, point in execution.graph.stations.items()}
    return configure_charge_benchmark(execution, optimized=optimized, initial_soc=initial_soc,
                                      station_groups=groups)
