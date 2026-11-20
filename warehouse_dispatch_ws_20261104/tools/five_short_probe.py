#!/usr/bin/env python3
"""Five real robots, two short waves. No charging or handling completion claim."""
import json,time,math
from datetime import datetime
from pathlib import Path
from five_robot_probe import state,submit,HOMES


def p95(values):
    return sorted(values)[math.ceil(len(values) * .95) - 1] if values else None


def benchmark_metrics(jobs, traces):
    created = [datetime.fromisoformat(job['created_at']) for job in jobs]
    assigned = [datetime.fromisoformat(job['assigned_at']) for job in jobs]
    finished = [datetime.fromisoformat(job['finished_at']) for job in jobs]
    elapsed = (max(finished) - min(created)).total_seconds()
    assignment_waits = [(end - start).total_seconds() for start, end in zip(created, assigned)]
    previous = {}
    closed_waits = []
    cycle_samples = 0
    for trace in traces:
        traffic = trace['state']['traffic']
        current = {name: item['since'] for name, item in traffic['waiting'].items()}
        for robot, since in previous.items():
            if current.get(robot) != since and trace['at'] >= since:
                closed_waits.append(trace['at'] - since)
        previous = current
        cycle_samples += bool(traffic['deadlocks'])
    return dict(jobs_per_minute=len(jobs) * 60 / elapsed if elapsed > 0 else None,
                assignment_wait_p95_s=p95(assignment_waits),
                observed_traffic_wait_p95_s=p95(closed_waits),
                observed_traffic_waits=len(closed_waits), unfinished_traffic_waits=len(previous),
                samples_with_wait_cycles=cycle_samples)


def main():
    out=Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_short');out.mkdir(parents=True)
    prefix='SHORT-'+time.strftime('%H%M%S');started=time.monotonic();traces=[];checks={};report={}
    try:
        deadline=time.monotonic()+120
        while time.monotonic()<deadline:
            try:d=state();s=d['state']
            except OSError:
                time.sleep(.5);continue
            if d.get('commands_ready') and s.get('durability',{}).get('adapters_ready') and not s['durability'].get('fenced') and set(s['robots'])==set(HOMES) and all(not r['job'] and not r['blocked'] and r['station']==HOMES[n] and s['telemetry'][n].get('localization',{}).get('ok') for n,r in s['robots'].items()):break
            time.sleep(.5)
        else:raise RuntimeError('requires five healthy idle vehicles at their homes; initial charging must finish')
        session=s.get('execution_adapter',{}).get('session')
        ids=[];outids=[]
        for phase,goals in [('OUT',['LM_DOCK_06','LM_DOCK_12','LM_DOCK_18','LM_DOCK_24','LM_63_49']),('HOME',list(HOMES.values()))]:
            tasks=[dict(id=f'{prefix}-{phase}-{i}',type='standby',goal=g,priority=0) for i,g in enumerate(goals)]
            code,receipt=submit(dict(operation='submit_batch',tasks=tasks))
            if code!=200 or receipt.get('event')!='request_accepted':raise RuntimeError(str(receipt))
            current=[t['id'] for t in tasks];ids+=current
            if phase=='OUT':outids=current
            deadline=time.monotonic()+240
            while time.monotonic()<deadline:
                s=state()['state'];traces.append(dict(at=time.monotonic(),state=s))
                if s.get('execution_adapter',{}).get('session')!=session:raise RuntimeError('simulation session changed')
                # The receipt precedes the next periodic state publication.
                # Missing in that frame is not an execution failure.
                if not all(id in s.get('jobs',{}) for id in current):
                    time.sleep(.2);continue
                if any(s['jobs'][id]['state'] in ('FAILED','CANCELLED') for id in current):raise RuntimeError('business failure')
                if all(s['jobs'][id]['state']=='DONE' for id in current):break
                time.sleep(.5)
            else:raise RuntimeError(phase+' timeout')
        travel={n:0. for n in HOMES};maximum=0
        for a,b in zip(traces,traces[1:]):
            moving=0
            for n in HOMES:
                delta=math.dist(a['state']['telemetry'][n]['pose'][:2],b['state']['telemetry'][n]['pose'][:2]);travel[n]+=delta;moving+=delta>.04
            maximum=max(maximum,moving)
        checks=dict(ten_tasks_done=all(s['jobs'][id]['state']=='DONE' for id in ids),five_distinct_robots=len({s['jobs'][id]['robot'] for id in outids})==5,five_physically_moved=all(x>6 for x in travel.values()),all_at_own_homes=all(not r['job'] and not r['blocked'] and r['station']==HOMES[n] for n,r in s['robots'].items()),no_reservation_overlap=all(t['state']['traffic']['overlap_cells']==0 for t in traces))
        metrics = benchmark_metrics([s['jobs'][job_id] for job_id in ids], traces)
        report=dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,travel_m=travel,max_moving=maximum,
                    reservation_policy=s['traffic'].get('reservation_mode','whole_route'), metrics=metrics)
    except Exception as e:report=dict(status='FAIL',reason=str(e),checks=checks)
    report['wall_seconds']=time.monotonic()-started
    (out/'summary.json').write_text(json.dumps(report,indent=2),encoding='utf-8');(out/'telemetry.json').write_text(json.dumps(traces),encoding='utf-8')
    print(json.dumps(report),flush=True);print(out,flush=True)
    raise SystemExit(0 if report['status']=='PASS' else 1)
if __name__=='__main__':main()
