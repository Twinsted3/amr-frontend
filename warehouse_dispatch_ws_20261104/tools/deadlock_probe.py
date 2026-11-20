#!/usr/bin/env python3
"""Run a wait-cycle acceptance case on the live four-car Gazebo simulation."""

import argparse
import json
from pathlib import Path
import subprocess
import sys
import time

from segment_traffic_probe import state


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('case', choices=('empty','loaded','blocked','three'))
    case = parser.parse_args().case
    run = Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+f'_deadlock_{case}')
    run.mkdir(parents=True)
    prefix = f'CYCLE-{time.time_ns()}'
    robots = ('agv01','agv02','agv03') if case=='three' else ('agv01','agv02')
    ids = {name:f'{prefix}-{name}' for name in robots}
    targets = {
        'three': ('AP_PICK_01','AP_SHIP_01','AP_SHIP_02'),
        'loaded': ('AP_PICK_01','AP_SHIP_01'),
    }.get(case, ('LM_DOCK_06','LM_DOCK_12'))
    destinations = targets[1:] + targets[:1]
    events, trace = {}, []
    report, current = {}, {}

    def observe(seconds, predicate, label):
        nonlocal current
        deadline = time.monotonic()+seconds
        while time.monotonic() < deadline:
            response = state()
            current = response['state']
            if current['execution_adapter']['session'] != session:
                raise RuntimeError('仿真会话已变化')
            for event in response['events']:
                if ((event.get('task_id') or '').startswith(prefix) or
                        event.get('event','').startswith('traffic_deadlock_')):
                    events[event['received_at']] = event
            traffic = current['traffic']
            trace.append(dict(
                at=time.monotonic(), jobs={i:j['state'] for i,j in current['jobs'].items() if i.startswith(prefix)},
                stations={name:r['station'] for name,r in current['robots'].items()},
                poses={name:t.get('pose') for name,t in current['telemetry'].items()},
                loads=current['handling']['loads'], active=traffic['active'], waiting=traffic['waiting'],
                deadlock_recovery=traffic.get('deadlock_recovery',[]), overlap=traffic['overlap_cells']))
            if predicate():
                return
            time.sleep(.4)
        raise RuntimeError(label)

    def submit(commands):
        script = Path(__file__).with_name('submit_job.py')
        subprocess.run([sys.executable,str(script),json.dumps(dict(operation='submit_batch',tasks=commands))],
                       check=True,timeout=14)

    def task(identity, name, destination):
        return dict(id=identity,robot=name,type='standby',goal=destination)

    def completed(identities):
        results = [current['jobs'].get(identity,{}) for identity in identities]
        failed = [j for j in results if j.get('state') in ('FAILED','CANCELLED')]
        if failed:
            raise RuntimeError(f"{failed[0]['id']}: {failed[0].get('reason')}")
        return all(j.get('state')=='DONE' for j in results)

    try:
        initial = state()['state']
        session = initial['execution_adapter']['session']
        if (len(initial['robots']) != 4 or not initial['durability']['adapters_ready']
                or any(r['job'] or r['blocked'] or not r['feedback_fresh'] for r in initial['robots'].values())
                or initial['traffic']['reservation_mode']!='segmented'):
            raise RuntimeError('需要空闲且定位就绪的四车分段会话')
        configured = set(initial['traffic']['yield_bays'])
        if case=='blocked' and configured or case!='blocked' and not {'LM_DOCK_18','LM_13_26'} <= configured:
            raise RuntimeError('让行位配置与专项不匹配')
        start_ids = [f'{prefix}-stage-{name}' for name in robots]
        submit([task(identity,name,destination) for identity,name,destination in zip(start_ids,robots,targets)])
        observe(230,lambda:completed(start_ids),'未能将车辆停到互等场景的起始位置')
        before = time.monotonic()
        requests = [task(ids[name],name,destination) for name,destination in zip(robots,destinations)]
        if case=='loaded':
            requests[0] = dict(id=ids['agv01'],robot='agv01',type='transport',
                               pickup=targets[0],dropoff=destinations[0])
        submit(requests)

        if case=='blocked':
            def reported():
                return any(e['robots']==list(robots) and e['status']=='no_safe_plan'
                           for e in current['traffic']['deadlock_recovery'])
            observe(45,reported,'没有观测到当前候选无安全解')
            other = f'{prefix}-independent'
            submit([task(other,'agv04','LM_DOCK_24')])
            observe(90,lambda:completed([other]),'无关路线上的车辆未能继续')
            checks = dict(no_safe_plan_still_reported=reported(),
                          no_yield_for_cycle=not any(e['event']=='traffic_yield' for e in events.values()),
                          blocked_robots_stayed=all(current['robots'][name]['station']==station
                                                   and current['robots'][name]['job']==ids[name]
                                                   for name,station in zip(robots,targets)),
                          independent_job_done=True)
        else:
            observe(480 if case=='three' else 365,lambda:completed(ids.values()),
                    '车辆未能完成互等恢复后的原任务')
            chosen = [e for e in events.values() if e['event']=='traffic_yield'
                      and (e.get('task_id') or '').startswith(prefix)]
            checks = dict(
                joint_plan_observed=any(e['event']=='traffic_deadlock_planned' and e['cycle']==list(robots)
                                        and len(e['moves'])>=len(robots)+1
                                        for e in events.values()),
                all_original_jobs_done=True,
                at_original_destinations=all(current['robots'][name]['station']==destination
                                             for name,destination in zip(robots,destinations)),
                resolution_confirmed=any(e['event']=='traffic_deadlock_resolved' and e['cycle']==list(robots)
                                         for e in events.values()),
                saw_required_yield=any(e.get('loaded')==(case=='loaded') for e in chosen))
            if case=='loaded':
                cargo = ids['agv01']
                checks['same_cargo_remained_with_yielding_vehicle'] = any(
                    e.get('cargo_id')==cargo and e['robot']=='agv01' for e in chosen)
                checks['unload_confirmed_at_original_destination'] = (
                    current['handling']['cargo'].get(cargo,{}).get('location')==targets[1]
                    and current['handling']['cargo'][cargo].get('delivered') is True)
        checks['no_reservation_overlap'] = all(item['overlap']==0 for item in trace)
        report = dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,
                      elapsed_after_staging_s=time.monotonic()-before)
    except (OSError,KeyError,ValueError,RuntimeError,subprocess.SubprocessError) as error:
        report = dict(status='FAIL',reason=str(error))
    finally:
        report.update(case=case,evidence=str(run),jobs=ids)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (run/'telemetry.json').write_text(json.dumps(dict(events=list(events.values()),trace=trace),
                                                     ensure_ascii=False),encoding='utf8')
    print(json.dumps(report,ensure_ascii=False),flush=True)
    return 0 if report['status']=='PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
