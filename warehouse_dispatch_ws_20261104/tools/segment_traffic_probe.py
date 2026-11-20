#!/usr/bin/env python3
"""Compare four-car whole-route and segmented traffic on the same two jobs."""

import argparse
import json
import math
from pathlib import Path
import subprocess
import sys
import time
from urllib.request import urlopen


ROUTES = {'agv01': ('CP_06', 'LM_13_32'), 'agv02': ('CP_12', 'AP_SHIP_01')}
CHECKPOINT = 'LM_13_26'


def state():
    with urlopen('http://127.0.0.1:8866/api/state', timeout=3) as response:
        return json.load(response)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode', choices=('whole_route', 'segmented'))
    args = parser.parse_args()
    run = Path('simulation_runs') / (time.strftime('%Y%m%dT%H%M%S') + f'_traffic_{args.mode}')
    run.mkdir(parents=True)
    traces, events = [], {}
    report = {}
    try:
        before = state()['state']
        traffic = before['traffic']
        if traffic.get('reservation_mode', 'whole_route') != args.mode:
            raise ValueError('当前会话的路权模式与指定模式不同')
        if len(before['robots']) != 4 or not before['durability']['adapters_ready'] or any(
            robot['job'] or robot['blocked'] or not robot['feedback_fresh'] for robot in before['robots'].values()
        ):
            raise ValueError('需要空闲、定位就绪的四车会话')
        if any(before['robots'][name]['station'] != home for name, (home, _) in ROUTES.items()):
            raise ValueError('agv01 和 agv02 必须从各自原停车位出发')
        if args.mode == 'segmented' and CHECKPOINT not in traffic['waiting_points']:
            raise ValueError(f'本场景需要配置等待点 {CHECKPOINT}')

        session = before['execution_adapter']['session']
        origins = {name: before['telemetry'][name]['pose'][:2] for name in ROUTES}
        prefix = f'SEG-{time.time_ns()}'
        identities = {name: f'{prefix}-{name}' for name in ROUTES}
        batch = [dict(id=identities[name], robot=name, type='standby', goal=goal,
                      priority=100 if name == 'agv01' else 0) for name, (_, goal) in ROUTES.items()]
        started = time.monotonic()
        submit = Path(__file__).with_name('submit_job.py')
        subprocess.run([sys.executable, str(submit), json.dumps(dict(operation='submit_batch', tasks=batch))],
                       check=True, timeout=15)
        while time.monotonic() - started < 180:
            value = state()
            current = value['state']
            if current['execution_adapter']['session'] != session:
                raise RuntimeError('仿真会话已变化')
            for event in value['events']:
                if (event.get('task_id') or '').startswith(prefix):
                    events[event['received_at']] = event
            traces.append(dict(at=time.monotonic(), traffic=current['traffic'], robots=current['robots'],
                               jobs={i: current['jobs'][i] for i in identities.values() if i in current['jobs']}))
            if all(current['jobs'].get(identity, {}).get('state') in ('DONE', 'FAILED', 'CANCELLED')
                   for identity in identities.values()):
                break
            time.sleep(.25)
        else:
            raise RuntimeError('两车尚未完成，已保存等待和路权记录')

        def first(name, kind):
            return next((event for _, event in sorted(events.items()) if event.get('robot') == name
                         and event['event'] == kind), None)

        leader_final = first('agv01', 'arrived')
        release = first('agv01', 'segment_released') if args.mode == 'segmented' else leader_final
        follower = first('agv02', 'dispatched')
        waiting = first('agv02', 'traffic_wait')
        checks = dict(
            both_done=all(current['jobs'][job]['state'] == 'DONE' for job in identities.values()),
            both_moved=all(math.dist(current['telemetry'][name]['pose'][:2], pose) > 4
                           for name, pose in origins.items()),
            observed_blocking=bool(waiting and 'agv01' in waiting.get('blockers', [])),
            ordered_release=bool(release and follower and release['received_at'] <= follower['received_at']),
            no_reservation_overlap=all(trace['traffic']['overlap_cells'] == 0 for trace in traces),
        )
        if args.mode == 'segmented':
            checks['segment_exit_confirmed'] = bool(release and release['station'] == CHECKPOINT
                                                     and release['released_cells'] > 0)
            checks['follower_permitted_before_leader_final'] = bool(follower and leader_final and
                                                                    follower['received_at'] < leader_final['received_at'])
        report = dict(status='PASS' if all(checks.values()) else 'FAIL', checks=checks, release=release,
                      batch_elapsed_s=time.monotonic()-started,
                      follower_wait_s=(follower['received_at']-waiting['received_at']
                                       if follower and waiting else None))
    except (OSError, KeyError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        report = dict(status='FAIL', reason=str(error))
    finally:
        report.update(reservation_mode=args.mode, evidence=str(run))
        (run/'summary.json').write_text(json.dumps(report, ensure_ascii=False, indent=2),encoding='utf8')
        (run/'telemetry.json').write_text(json.dumps(dict(traces=traces,events=list(events.values())),
                                                     ensure_ascii=False),encoding='utf8')
    print(json.dumps(report, ensure_ascii=False), flush=True)
    return 0 if report['status'] == 'PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
