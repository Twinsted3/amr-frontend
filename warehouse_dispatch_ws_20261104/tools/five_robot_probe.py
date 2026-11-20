#!/usr/bin/env python3
"""Live five-robot HTTP/ROS/Gazebo run: motion, retries, cargo, and auto parking."""
import json
import math
from pathlib import Path
import time
import urllib.error
import urllib.request

BASE='http://localhost:8866'
HOMES=dict(zip([f'agv{i:02d}' for i in range(1,6)],['CP_06','CP_12','CP_18','CP_24','PP_05']))


def state():
    return json.load(urllib.request.urlopen(BASE+'/api/state',timeout=6))


def submit(payload):
    request=urllib.request.Request(BASE+'/api/tasks',data=json.dumps(payload).encode(),headers={'Content-Type':'application/json'})
    try:
        with urllib.request.urlopen(request,timeout=12) as response:
            return response.status,json.load(response)
    except urllib.error.HTTPError as error:
        return error.code,json.load(error)


def main():
    run=Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_five');run.mkdir(parents=True,exist_ok=False)
    started=time.monotonic();traces=[];receipts=[];checks={};report={}
    prefix='FIVE-'+time.strftime('%H%M%S')

    def observe():
        d=state();s=d['state']
        traces.append(dict(at=time.monotonic(),state=s,events=d.get('events',[])))
        return d,s

    def wait(predicate,seconds,label,ids=()):
        deadline=time.monotonic()+seconds;last_print=0
        while time.monotonic()<deadline:
            d,s=observe()
            failed=[(id,s['jobs'][id].get('reason')) for id in ids if s.get('jobs',{}).get(id,{}).get('state') in ('FAILED','CANCELLED')]
            if failed:raise RuntimeError(label+': '+str(failed))
            if predicate(d,s):return s
            if time.monotonic()-last_print>15:
                print(label,{id:s.get('jobs',{}).get(id,{}).get('state') for id in ids},flush=True);last_print=time.monotonic()
            time.sleep(.6)
        raise RuntimeError(label+' timeout')

    def batch(tasks):
        code,receipt=submit(dict(operation='submit_batch',tasks=tasks));receipts.append(receipt)
        if code!=200 or receipt.get('event')!='request_accepted':raise RuntimeError('batch rejected: '+str(receipt))
        return [t['id'] for t in tasks]

    def done(ids):
        return lambda d,s:all(s.get('jobs',{}).get(id,{}).get('state')=='DONE' for id in ids)

    try:
        initial=wait(lambda d,s:d.get('commands_ready') and s.get('durability',{}).get('adapters_ready')
            and not s['durability'].get('fenced') and set(s.get('robots',{}))==set(HOMES)
            and all(not r['job'] and not r['blocked'] and r['station']==HOMES[n]
                and s.get('telemetry',{}).get(n,{}).get('localization',{}).get('ok') for n,r in s['robots'].items()),420,'等待五车定位可信、空闲并归位')
        checks['five_ready_at_distinct_homes']=True
        origins={n:initial['telemetry'][n]['pose'] for n in HOMES}
        checks['fifth_spawn_at_parking']=math.dist(origins['agv05'][:2],[67.5,49])<.65
        invalid=[dict(id=prefix+'-bad-a',type='move',goal='AP_PICK_01'),dict(id=prefix+'-bad-b',type='transport',pickup='PP_05',dropoff='AP_SHIP_01')]
        code,receipt=submit(dict(operation='submit_batch',tasks=invalid));receipts.append(receipt)
        checks['parking_not_handling_atomic_rejection']=code==409 and not any(id.startswith(prefix) for id in state()['state']['jobs'])
        all_ids=[];out_ids=[]
        for phase,goals in [('OUT',['LM_DOCK_06','LM_DOCK_12','LM_DOCK_18','LM_DOCK_24','LM_63_49']),('HOME',list(HOMES.values()))]:
            tasks=[dict(id=f'{prefix}-{phase}-{i}',type='standby',goal=goal,priority=0) for i,goal in enumerate(goals,1)]
            ids=batch(tasks);all_ids+=ids
            if phase=='OUT':
                out_ids=ids
                count=len(state()['state']['jobs']);batch(tasks)
                checks['duplicate_batch_no_new_jobs']=len(state()['state']['jobs'])==count
            s=wait(done(ids),240,phase+' 五车运动',ids)
        checks['all_ten_standby_done']=all(s['jobs'][id]['state']=='DONE' for id in all_ids)
        checks['automatic_five_distinct_robots']=len({s['jobs'][id]['robot'] for id in out_ids})==5
        checks['all_back_at_homes']=all(not r['job'] and r['station']==HOMES[n] for n,r in s['robots'].items())
        pairs=[('AP_PICK_01','AP_SHIP_01'),('AP_RECEIVE_01','AP_SHIP_02'),('AP_RECEIVE_02','AP_RECEIVE_03'),('AP_PICK_02','AP_SHIP_01'),('AP_PICK_03','AP_BUFFER_02')]
        tasks=[dict(id=f'{prefix}-CARGO-{i}',type='transport',pickup=a,dropoff=b,priority=0) for i,(a,b) in enumerate(pairs,1)]
        cargo_ids=batch(tasks)
        s=wait(done(cargo_ids),1500,'五项搬运',cargo_ids)
        checks['five_transport_done']=True
        checks['five_robots_used_for_transport']=len({s['jobs'][id]['robot'] for id in cargo_ids})==5
        s=wait(lambda d,s:all(not r['job'] and not r['blocked'] and r['station']==HOMES[n] for n,r in s['robots'].items()),600,'搬运后自动归位')
        checks['auto_return_all_five']=True
        checks['all_cargo_delivered']=all(s.get('handling',{}).get('cargo',{}).get(id,{}).get('delivered') for id in cargo_ids)
        checks['ten_feedback_actions']=sum(r.get('state')=='SUCCEEDED' and r.get('body',{}).get('cargo_id') in cargo_ids for r in s.get('handling',{}).get('records',[]))==10
        checks['all_empty_after_delivery']=not s.get('handling',{}).get('loads')
        travel={n:0. for n in HOMES};max_moving=0
        for a,b in zip(traces,traces[1:]):
            moving=0
            for n in HOMES:
                p=a['state'].get('telemetry',{}).get(n,{}).get('pose');q=b['state'].get('telemetry',{}).get(n,{}).get('pose')
                if p and q:
                    distance=math.dist(p[:2],q[:2]);travel[n]+=distance;moving+=distance>.04
            max_moving=max(max_moving,moving)
        checks['five_physically_moved']=all(x>6 for x in travel.values())
        checks['five_moving_same_observation']=max_moving==5
        checks['no_reservation_overlap']=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in traces)
        checks['no_business_failure']=not any(j['state']=='FAILED' for j in s['jobs'].values())
        report=dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,travel_m=travel,max_moving=max_moving,final_state=s)
    except Exception as error:
        report=dict(status='FAIL',checks=checks,reason=str(error))
    finally:
        report.update(wall_seconds=time.monotonic()-started,receipts=receipts)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
        (run/'telemetry.json').write_text(json.dumps(traces),encoding='utf-8')
        print(json.dumps({k:v for k,v in report.items() if k not in ('receipts','final_state')},ensure_ascii=False),flush=True)
        print(run,flush=True)
    raise SystemExit(0 if report['status']=='PASS' else 1)


if __name__=='__main__':main()
