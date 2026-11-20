#!/usr/bin/env python3
"""Read-only simulation evaluation: compare TF estimates with Gazebo model poses."""
import json,math,os,subprocess,time,urllib.request
from pathlib import Path

def main():
    out=Path('artifacts/deployment_hardening_20261102');out.mkdir(parents=True,exist_ok=True)
    samples=[];end=time.monotonic()+900;seen=False;run=None
    while time.monotonic()<end:
        try:
            data=json.load(urllib.request.urlopen('http://localhost:8866/api/state',timeout=3));s=data['state']
            raw=subprocess.run(['gz','topic','-e','-t','/world/warehouse/dynamic_pose/info','-n','1','--json-output'],capture_output=True,text=True,timeout=5,check=True)
            poses={p['name']:p for p in json.loads(raw.stdout)['pose'] if p.get('name') in s.get('robots',{})}
            for name,p in poses.items():
                estimate=s.get('telemetry',{}).get(name,{}).get('pose')
                if estimate:
                    q=p['orientation'];yaw=math.atan2(2*(q.get('w',0)*q.get('z',0)+q.get('x',0)*q.get('y',0)),1-2*(q.get('y',0)**2+q.get('z',0)**2))
                    x=p['position'].get('x',0);y=p['position'].get('y',0)
                    samples.append(dict(robot=name,wall=time.time(),position_error_m=math.hypot(estimate[0]-x,estimate[1]-y),yaw_error_rad=abs(math.atan2(math.sin(estimate[2]-yaw),math.cos(estimate[2]-yaw))),quality=s['telemetry'][name].get('localization')))
            scenario=data.get('scenario',{});seen=seen or scenario.get('status')=='RUNNING'
            if seen and scenario.get('status') in ('PASS','FAIL'):
                run=scenario;break
        except (OSError,ValueError,subprocess.SubprocessError,KeyError):pass
        time.sleep(10)
    result=dict(source='Read-only Gazebo truth comparison; no ROS publication or model control',scenario=run,samples=samples,max_position_error_m=max((p['position_error_m'] for p in samples),default=None),max_yaw_error_rad=max((p['yaw_error_rad'] for p in samples),default=None))
    (out/'localization_evaluation.json').write_text(json.dumps(result,indent=2))
    print({k:v for k,v in result.items() if k!='samples'})

if __name__=='__main__':main()
