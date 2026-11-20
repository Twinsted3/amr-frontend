#!/usr/bin/env python3
"""Isolated live ROS API/CLI regression; no Gazebo or mock vehicle feedback."""
import json
import os
from pathlib import Path
import signal
import subprocess
import tempfile
import time


def main():
    root=Path(__file__).resolve().parents[1]
    run=Path(tempfile.mkdtemp(prefix='cli_',dir=root/'artifacts/simulation_validation'))
    env=dict(os.environ,ROS_DOMAIN_ID='83')
    log=(run/'node.log').open('w')
    node=subprocess.Popen([str(root/'install/warehouse_sim/lib/warehouse_sim/fleet_scheduler'),'--ros-args','-p','robots:=1','-p','durable_db:='+str(run/'dispatch.sqlite3'),'-p','evidence_dir:='+str(run/'events')],cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
    results=[]
    try:
        time.sleep(2)
        requests=[dict(operation='set_weights',weights=dict(distance=2,battery=10,congestion=4)),dict(operation='hold_dispatch',enabled=True),dict(id='CLI-ONE',type='move',goal='AP_PICK_01'),dict(id='CLI-ONE',type='move',goal='AP_PICK_01'),dict(operation='pause',id='CLI-ONE'),dict(operation='cancel',id='CLI-ONE')]
        for req in requests:
            p=subprocess.run(['python3',str(root/'tools/submit_job.py'),json.dumps(req),'--timeout','8'],cwd=root,env=env,capture_output=True,text=True,timeout=14)
            results.append(dict(request=req,exit=p.returncode,stdout=p.stdout,stderr=p.stderr))
        p=subprocess.run(['python3',str(root/'tools/submit_job.py'),json.dumps(dict(id='CLI-ONE',type='move',goal='AP_PICK_02'))],cwd=root,env=env,capture_output=True,text=True,timeout=14)
        results.append(dict(request='conflicting duplicate',exit=p.returncode,stdout=p.stdout,stderr=p.stderr))
        ok=all(r['exit']==0 and 'request_accepted' in r['stdout'] for r in results[:-1]) and results[-1]['exit']!=0 and 'request_rejected' in results[-1]['stdout']
        report=dict(status='PASS' if ok else 'FAIL',mode='LIVE_ROS_CLI_NO_GAZEBO_NO_VEHICLE',results=results)
    finally:
        if node.poll() is None:
            os.killpg(node.pid,signal.SIGINT)
            try:node.wait(timeout=8)
            except subprocess.TimeoutExpired:os.killpg(node.pid,signal.SIGTERM);node.wait(timeout=4)
        log.close()
    (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
    print(json.dumps(dict(status=report['status'],requests=len(results),report=str(run/'summary.json'))))
    return 0 if report['status']=='PASS' else 1


if __name__=='__main__':raise SystemExit(main())
