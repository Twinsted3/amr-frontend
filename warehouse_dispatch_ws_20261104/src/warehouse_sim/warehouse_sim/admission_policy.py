"""Rolling business admission ahead of hard workstation and road reservations."""
from collections import Counter


def next_window(fleet, pending, positions, zones, now, *, limit=96, window_slack=2):
    """Use overlap between expected job demand and current regional capacity.

    No resource is granted here. The fleet solver and the traffic executor
    still acquire exclusive stations and swept road segments.
    """
    station_zones = {}
    capacity = {}
    for name, (stations, _, users, places) in zones.items():
        capacity[name] = max(places - len(users), 0)
        for station in stations:
            station_zones.setdefault(station, set()).add(name)
    incoming = Counter()
    for robot, command in pending.items():
        goal = command['goal']
        for name in station_zones.get(goal, ()):
            if name not in station_zones.get(positions[robot], ()):
                incoming[name] += 1
    queue = sorted((job for job in fleet.jobs.values() if job.state == 'QUEUED' and job.kind != 'charge'),
                   key=lambda job: (fleet.scheduling_priority(job, now)[0], job.created, job.id))
    allowed = set()
    offered = Counter()
    for job in queue:
        if len(allowed) >= limit:
            job.reason = '等待下一轮滚动派单'
            continue
        stops = fleet.remaining_stops(job)
        # Keep several compatible bids for the same station, but stop a full
        # station backlog from occupying an entire solver iteration.
        contested = [station for station in stops if (
            station in fleet.destinations or (station in fleet.workstations
            and fleet.workstations[station]['phase'] != 'departing'))]
        if contested and (not job.next_robot or job.admission.get('mode') == 'batch'):
            job.reason = '等待取放货位释放'
            continue
        areas = set().union(*(station_zones.get(station, ()) for station in stops))
        ready = [name for name in areas if incoming[name] < capacity[name] + window_slack]
        if len(ready) != len(areas) and fleet.scheduling_priority(job, now)[0] > 2:
            job.reason = '等待目标区域释放通行容量'
            continue
        if any(offered[station] >= window_slack for station in stops):
            job.reason = '同一工位已有本轮候选任务'
            continue
        allowed.add(job.id)
        offered.update(set(stops))
        incoming.update(areas)
    return allowed


def parking_for_idle_workstations(fleet, positions, homes, unavailable):
    """Offer nearby parking to an idle truck physically blocking queued work."""
    demand = {station for job in fleet.jobs.values() if job.kind == 'transport'
              and job.state in ('QUEUED', 'EXECUTING', 'NEXT_LEG', 'HANDLING')
              for station in fleet.remaining_stops(job)}
    reserved = set(positions.values()) | set(fleet.destinations) | demand
    waiting_for_parking = {job.requested_robot for job in fleet.jobs.values()
                           if job.kind == 'return' and job.state == 'QUEUED'}
    options = {station for station in homes.values() if station.startswith(('HOME_', 'PP_'))} - reserved
    parking = {}
    for name, station in positions.items():
        robot = fleet.robots[name]
        if (station not in demand or name in unavailable or name in waiting_for_parking or robot.job
                or robot.blocked or robot.dispatch_state != 'enabled' or robot.soc is None or robot.soc < fleet.low_soc):
            continue
        reachable = []
        for bay in options:
            try:
                distance = fleet.dispatch_distance(station, bay)
            except ValueError:
                continue
            reachable.append((distance, bay))
        if reachable:
            _, bay = min(reachable)
            parking[name] = bay
            options.remove(bay)
    return parking
