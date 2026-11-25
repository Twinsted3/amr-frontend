"""Write a read-only visualization record from a real lightweight benchmark run."""
from datetime import datetime, timezone
import json
import os
from pathlib import Path
from tempfile import NamedTemporaryFile


SCHEMA_VERSION = 1
SOURCE = 'LIGHTWEIGHT_BENCHMARK'
VEHICLE_FIELDS = ('x', 'y', 'yaw', 'state', 'job', 'soc', 'loaded', 'wait_reason', 'cargo')
AUDIT_MILESTONES = {
    'traffic_deadlock_held': ('deadlock_held', '互等车辆保持安全占位'),
    'traffic_deadlock_planned': ('deadlock_planned', '调度找到安全解锁计划'),
    'traffic_deadlock_replan': ('deadlock_replan', '互等恢复路线重新核对'),
    'traffic_deadlock_resolved': ('deadlock_resolved', '互等车辆完成解锁'),
    'traffic_protective_stop': ('protective_stop', '在途车辆进入保护停驶'),
    'traffic_feedback_reconciled': ('feedback', '核对停稳、车辆位置与原执行授权'),
}


def station_category(name, engine):
    if name.startswith('CP_'):
        return 'charger'
    if name in engine.stops.yield_bays:
        return 'refuge'
    if name.startswith(('HOME_', 'PP_', 'PARK_')):
        return 'parking'
    if name.startswith(('DROP_', 'PICK_', 'AP_', 'HP_')):
        return 'workcell'
    return 'junction'


def section_points(points):
    # The graph itself holds the original high-resolution authorization geometry.
    # Limit visualization points without changing the benchmark's movement checks.
    stride = max(1, len(points) // 64)
    return [[round(points[i][0], 2), round(points[i][1], 2)]
            for i in (*range(0, len(points) - 1, stride), len(points) - 1)]


def vehicle_state(engine, name, segment, job, recovering):
    if name in engine.feedback_unavailable:
        return 'offline'
    if name in recovering:
        return 'recovering'
    if segment and segment.stopped_tick is None:
        return 'moving'
    if job and job.state == 'CHARGING':
        return 'charging'
    if name in engine.waiting or name in engine.fleet.charge_waiting or segment:
        return 'waiting'
    if job and job.state == 'HANDLING':
        return 'handling'
    return 'queued' if job or name in engine.pending else 'idle'


class FleetReplay:
    def __init__(self, engine, map_name, seed, scheduled):
        self.vehicles = sorted(engine.positions)
        self.scheduled = int(scheduled)
        self.events = []
        self.frames = []
        self.record = {
            'schema_version': SCHEMA_VERSION,
            'source': SOURCE,
            'created_at': datetime.now(timezone.utc).isoformat(timespec='seconds'),
            'seed': seed,
            'tick_seconds': engine.modeled_tick_seconds,
            'vehicle_fields': VEHICLE_FIELDS,
            'map': {
                'name': map_name,
                'stations': {name: {'x': p['pos']['x'], 'y': p['pos']['y'], 'kind': station_category(name, engine)}
                             for name, p in engine.graph.stations.items()},
                'edges': [{'start': start, 'end': end, 'points': section_points(points)}
                          for (start, end), points in engine.graph.edge_points.items()],
            },
            'vehicles': self.vehicles,
            'frames': self.frames,
            'events': self.events,
        }

    def event(self, tick, event_type, label, *, robots=(), **details):
        row = {'tick': tick, 'type': event_type, 'label': label}
        if robots:
            row['robots'] = sorted(robots)
        if details:
            row['details'] = details
        self.events.append(row)

    def observe_audit(self, tick, event):
        milestone = AUDIT_MILESTONES.get(event['event'])
        if milestone is None:
            return
        robots = event.get('robots') or ([event['robot']] if event.get('robot') else [])
        self.event(tick, *milestone, robots=robots, **{
            field: event[field] for field in ('task_id', 'status', 'reason', 'station') if field in event
        })

    def observe(self, engine, submitted, done):
        if engine.tick != len(self.frames) or sorted(engine.positions) != self.vehicles:
            raise ValueError('回放必须逐步记录同一组仿真车辆')
        if not 0 <= done <= submitted <= self.scheduled:
            raise ValueError('回放中的业务任务计数无效')
        poses = engine.poses()
        cargo = {record['location']: key for key, record in engine.cargo.items()}
        recovering = engine.recovery_members
        waiting = set(engine.waiting)
        charge_waiting = engine.fleet.charge_waiting
        rows = []
        counts = {'done': done, 'submitted': submitted, 'waiting': len(waiting), 'moving': 0,
                  'charging': 0, 'lowPowerWaiting': len(charge_waiting),
                  'outages': len(engine.feedback_unavailable)}
        for name in self.vehicles:
            x, y, yaw = poses[name]
            vehicle = engine.fleet.robots[name]
            job = engine.fleet.jobs.get(vehicle.job)
            segment = engine.active.get(name)
            state = vehicle_state(engine, name, segment, job, recovering)
            if segment and segment.stopped_tick is None and name not in engine.feedback_unavailable:
                counts['moving'] += 1
            if job and job.state == 'CHARGING':
                counts['charging'] += 1
            reason = engine.waiting.get(name, {}).get('reason') or (
                'charge_capacity' if name in charge_waiting else None)
            item = cargo.get(name)
            rows.append([round(x, 2), round(y, 2), round(yaw, 3), state, vehicle.job,
                         round(engine.soc[name], 4), item is not None, reason, item])
        self.frames.append({
            'tick': engine.tick, 'vehicles': rows, 'counts': counts,
            'closed_edges': sorted(engine.closed_edges),
            'grants': [[name, segment.nodes] for name, segment in sorted(engine.active.items())],
        })

    def write(self, path, optimized, *, comparison=None, target_met=None):
        data = self.record
        data['events'] = sorted(self.events, key=lambda event: event['tick'])
        data['verification'] = {key: optimized[key] for key in (
            'checks', 'business_done', 'transports_done', 'first_all_done_tick', 'shared_road_segments',
            'max_vehicles_per_shared_segment', 'worked_after_charging', 'all_plugs_busy_wait_ticks',
            'closure_reroutes', 'completed_during_outage', 'recovered_groups', 'allocation_seconds',
            'batch_acceptance', 'arrivals', 'traffic',
        )}
        data['verification']['scheduled'] = self.scheduled
        data['verification']['functional_passed'] = all(data['verification']['checks'].values())
        if comparison is not None:
            data['verification']['charging_comparison'] = comparison
            data['verification']['charge_target_met'] = target_met
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        temporary = None
        try:
            with NamedTemporaryFile(mode='w', encoding='utf-8', dir=path.parent,
                                    prefix=f'.{path.name}.', suffix='.tmp', delete=False) as output:
                temporary = Path(output.name)
                json.dump(data, output, allow_nan=False, ensure_ascii=False, separators=(',', ':'))
                output.write('\n')
            os.replace(temporary, path)
        finally:
            if temporary is not None:
                temporary.unlink(missing_ok=True)
