#!/usr/bin/env python3
"""Real four-car HTTP/ROS/Gazebo batch probe, after the main acceptance run."""
import json,time,math,urllib.request,urllib.error
from pathlib import Path

BASE='http://localhost:8866'
def state():return json.load(urllib.request.urlopen(BASE+'/api/state',timeout=5))
def submit(payload):
    request=urllib.request.Request(BASE+'/api/tasks',data=json.dumps(payload).encode(),headers={'Content-Type':'application/json'})
    try:
        response=urllib.request.urlopen(request,timeout=12);return response.status,json.load(response)
    except urllib.error.HTTPError as error:return error.code,json.load(error)

def main():
    run=Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_batch');run.mkdir(parents=True,exist_ok=False)
    traces=[];receipts=[];checks={};report={};started=time.monotonic();prefix='BATCH-'+time.strftime('%H%M%S')
    try:
        deadline=time.monotonic()+30
        while time.monotonic()<deadline:
            data=state();initial=data.get('state',{})
            if data.get('commands_ready') and initial.get('durability',{}).get('adapters_ready') and not initial['durability'].get('fenced') and len(initial.get('robots',{}))==4:break
            time.sleep(.5)
        else:raise RuntimeError('live scheduler command channel/adapters are not ready')
        robots=initial['robots']
        if len(robots)!=4 or any(r['job'] or r['blocked'] for r in robots.values()):raise RuntimeError('requires four idle healthy vehicles; run after main acceptance')
        origins={n:initial['telemetry'][n]['pose'] for n in robots}
        homes=[f'CP_{i*6:02d}' for i in range(1,5)]
        if sorted(r['station'] for r in robots.values())!=homes:raise RuntimeError('requires four home charging bays')
        invalid=[dict(id=prefix+'-rollback',type='move',goal='AP_PICK_01'),dict(id=prefix+'-invalid',type='transport',pickup='AP_RECEIVE_01',dropoff='CP_12')]
        code,receipt=submit(dict(operation='submit_batch',tasks=invalid));receipts.append(receipt)
        checks['invalid_batch_rolled_back']=code==409 and 'charging bays' in receipt.get('reason','') and not any(j['id'].startswith(prefix) for j in state()['state']['jobs'].values())
        batches=[]
        for phase,goals in [('OUT',[f'LM_DOCK_{i*6:02d}' for i in range(1,5)]),('HOME',homes)]:
            tasks=[dict(id=f'{prefix}-{phase}-{i}',type='standby',goal=goal,priority=0) for i,goal in enumerate(goals,1)];batches.append(tasks)
            code,receipt=submit(dict(operation='submit_batch',tasks=tasks));receipts.append(receipt)
            if code!=200 or receipt.get('event')!='request_accepted':raise RuntimeError('batch not accepted '+str(receipt))
            if phase=='OUT':
                code,receipt=submit(dict(operation='submit_batch',tasks=tasks));receipts.append(receipt)
                checks['duplicate_batch_accepted']=code==200 and receipt.get('event')=='request_accepted'
            deadline=time.monotonic()+180
            while time.monotonic()<deadline:
                data=state();s=data['state'];traces.append(dict(at=time.monotonic(),state=s,events=data['events']))
                jobs=[s['jobs'].get(t['id'],{}) for t in tasks]
                if any(j.get('state') in ('FAILED','CANCELLED') for j in jobs):raise RuntimeError('batch task failed')
                if all(j.get('state')=='DONE' for j in jobs):break
                time.sleep(.5)
            else:raise RuntimeError('batch movement timeout')
        s=state()['state'];ids=[t['id'] for group in batches for t in group]
        checks['all_eight_done']=all(s['jobs'][id]['state']=='DONE' for id in ids)
        checks['automatic_four_distinct_robots']=len({s['jobs'][t['id']]['robot'] for t in batches[0]})==4
        checks['all_home_idle']=all(not r['job'] and not r['blocked'] and r['station'] in homes for r in s['robots'].values())
        checks['duplicate_no_extra_execution']=all(sum(r['body']['task_id'].startswith(id+':') and not any(r['body'].get(k) for k in ('cancel','pause','resume')) for r in s['execution_adapter']['records'])==1 for id in ids)
        max_moving=0;travel={n:0. for n in robots}
        for a,b in zip(traces,traces[1:]):
            moving=0
            for n in robots:
                p=a['state']['telemetry'][n]['pose'];q=b['state']['telemetry'][n]['pose'];dist=math.hypot(q[0]-p[0],q[1]-p[1]);travel[n]+=dist
                moving+=dist>.04
            max_moving=max(max_moving,moving)
        checks['four_moving_same_observation']=max_moving==4
        checks['all_physically_moved']=all(v>6 for v in travel.values())
        checks['no_reservation_overlap']=all(t['state']['traffic']['overlap_cells']==0 for t in traces)
        plans=[e for t in traces for e in t['events'] if e.get('event')=='assignment_planned' and len(e.get('allocation',{}))==4]
        checks['four_job_joint_plan_observed']=bool(plans)
        report=dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,travel_m=travel,max_moving=max_moving,decision_compute_ms=[e.get('decision_compute_ms') for e in plans[:2]],final_state=s)
    except Exception as error:report=dict(status='FAIL',checks=checks,reason=str(error))
    finally:
        report.update(wall_seconds=time.monotonic()-started,receipts=receipts)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8');(run/'telemetry.json').write_text(json.dumps(traces),encoding='utf-8')
        print(json.dumps({k:v for k,v in report.items() if k not in ('receipts','final_state')},ensure_ascii=False));print(run)
    raise SystemExit(0 if report['status']=='PASS' else 1)

if __name__=='__main__':main()
