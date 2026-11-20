#!/usr/bin/env python3
"""Controlled physical replay of the clear-forward/blocked-reverse incident."""
import json,time,subprocess
from pathlib import Path
from five_robot_probe import state

def main():
    out=Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_direction');out.mkdir(parents=True)
    start=time.monotonic();prefix='DIR-'+time.strftime('%H%M%S');samples=[];report={}
    def send(robot,goal,suffix):
        req=dict(id=prefix+suffix,type='standby',robot=robot,goal=goal,priority=0)
        subprocess.run(['./sim.sh','submit',json.dumps(req)],check=True,capture_output=True,text=True,timeout=15)
        return req['id']
    def wait(predicate,seconds):
        end=time.monotonic()+seconds
        while time.monotonic()<end:
            s=state()['state'];samples.append(s)
            if predicate(s):return s
            if any(j['id'].startswith(prefix) and j['state']=='FAILED' for j in s['jobs'].values()):raise RuntimeError('route failed')
            time.sleep(.4)
        raise RuntimeError('replay timeout')
    try:
        initial=state()['state']
        if any(r['job'] or r['blocked'] for r in initial['robots'].values()):raise RuntimeError('requires idle healthy fleet')
        if initial['robots']['agv05']['station']!='PP_05' or initial['robots']['agv04']['station']!='CP_24':raise RuntimeError('requires agv05/04 home')
        five=send('agv05','LM_DOCK_18','-05')
        wait(lambda s:'agv05' in s['traffic']['active'],30)
        four_started=time.monotonic();four=send('agv04','LM_DOCK_24','-04')
        s=wait(lambda s:s['jobs'].get(four,{}).get('state')=='DONE',60)
        elapsed=time.monotonic()-four_started
        independent=s['jobs'][five]['state']=='EXECUTING' and 'agv05' in s['traffic']['active']
        s=wait(lambda s:s['jobs'][five]['state']=='DONE',420)
        checks=dict(agv04_completed_before_agv05=independent,both_tasks_done=all(s['jobs'][id]['state']=='DONE' for id in (four,five)),no_reservation_overlap=all(x['traffic']['overlap_cells']==0 for x in samples),no_isolation=all(not r['blocked'] for r in s['robots'].values()))
        report=dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,agv04_seconds=elapsed)
    except Exception as e:report=dict(status='FAIL',reason=str(e))
    report['wall_seconds']=time.monotonic()-start
    (out/'summary.json').write_text(json.dumps(report,indent=2));(out/'telemetry.json').write_text(json.dumps(samples))
    print(json.dumps(report),flush=True);print(out,flush=True)
    raise SystemExit(0 if report['status']=='PASS' else 1)
if __name__=='__main__':main()
