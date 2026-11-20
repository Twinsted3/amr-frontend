#!/usr/bin/env python3
"""Exercise station exclusion, pre-pickup transfer, and recovery in Gazebo."""

import argparse
import json
import math
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

from action_msgs.srv import CancelGoal
import rclpy
from rclpy.node import Node

from restart_scheduler import crash_scheduler, owned_adapter_pid
from segment_traffic_probe import state


PICKUP = 'AP_PICK_01'


def adapter_gap():
    identity = f'ADAPTER-GAP-{time.time_ns()}'
    run = Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_adapter_gap')
    run.mkdir(parents=True)
    samples = []

    def observe(seconds, predicate):
        deadline = time.monotonic()+seconds
        while time.monotonic()<deadline:
            try:
                s = state()['state']
                job = s['jobs'].get(identity,{})
                robot = s['robots']['agv04']
                ready = s['durability']['adapters_ready']
                records = [r for r in s.get('execution_adapter',{}).get('records',[])
                           if r['body']['task_id'].startswith(identity+':')]
                sample = dict(time=time.monotonic(),ready=ready,job=job.get('state'),execution=job.get('execution_id'),
                              station=robot['station'],robot_job=robot['job'],
                              executor_states=[r['state'] for r in records])
                samples.append(sample)
                if predicate(sample):
                    return s
            except (KeyError,OSError):
                pass
            time.sleep(.25)
        raise RuntimeError('等待执行端恢复或任务状态超时')

    try:
        initial = state()['state']
        origin = initial['robots']['agv04']['station']
        if (not initial['durability']['adapters_ready'] or len(initial['robots'])!=4
                or origin not in ('CP_24','LM_DOCK_24') or initial['robots']['agv04']['blocked']
                or initial['robots']['agv04']['job'] or any(j['state']=='HANDLING' for j in initial['jobs'].values())):
            raise ValueError('需要四车仿真，agv04 在 CP_24 或 LM_DOCK_24 空闲且无货叉作业')
        target = 'LM_DOCK_24' if origin=='CP_24' else 'CP_24'
        pid = owned_adapter_pid('sim_actions','actions.sqlite3')
        try:
            os.kill(pid,signal.SIGSTOP)
            observe(12,lambda s:not s['ready'])
            task = dict(id=identity,type='standby',goal=target,robot='agv04')
            subprocess.run([sys.executable,'tools/submit_job.py',json.dumps(task)],check=True,timeout=12)
            queued = time.monotonic()
            observe(7,lambda s:time.monotonic()-queued>2 and not s['ready'] and s['job']=='QUEUED'
                    and not s['execution'] and not s['robot_job'])
        finally:
            os.kill(pid,signal.SIGCONT)
        final = observe(100,lambda s:s['ready'] and s['job']=='DONE' and s['station']==target
                        and 'SUCCEEDED' in s['executor_states'])
        records = [r for r in final['execution_adapter']['records'] if r['body']['task_id'].startswith(identity+':')]
        checks = dict(held_during_gap=all(not s['execution'] and not s['executor_states']
                                        for s in samples if not s['ready']),
                      ready_after_same_adapter_return=final['handling']['database_id']==initial['handling']['database_id'],
                      exactly_one_completed_execution=len(records)==1 and records[0]['state']=='SUCCEEDED')
        report = dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,origin=origin,target=target)
    except (OSError,ValueError,KeyError,RuntimeError,subprocess.SubprocessError) as error:
        report = dict(status='FAIL',reason=str(error))
    report.update(job=identity,evidence=str(run))
    (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
    (run/'telemetry.json').write_text(json.dumps(samples,ensure_ascii=False),encoding='utf8')
    print(json.dumps(report,ensure_ascii=False),flush=True)
    return 0 if report['status']=='PASS' else 1


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adapter-gap',action='store_true',help='check a brief loss of the fork adapter snapshot')
    if parser.parse_args().adapter_gap:
        return adapter_gap()
    prefix = f'RECOVERY-{time.time_ns()}'
    transfer, protected = prefix+'-transfer', prefix+'-protected'
    run = Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_workstation_recovery')
    run.mkdir(parents=True)
    events, trace = {}, []
    current, report = {}, {}
    rclpy.init()
    node = Node('workstation_recovery_probe')

    def observe(seconds, predicate, reason):
        nonlocal current
        deadline = time.monotonic()+seconds
        while time.monotonic()<deadline:
            try:
                response = state()
                current = response['state']
                if 'overlap_cells' not in current['traffic']:
                    time.sleep(.3)
                    continue
                if current.get('execution_adapter',{}).get('session') not in (session,None):
                    raise RuntimeError('仿真导航执行器会话已变化')
                for event in response['events']:
                    if (event.get('task_id') or '').startswith(prefix) or event['event'] in (
                        'restart_reconciliation_required','reconciliation_complete'
                    ):
                        events[event['received_at']] = event
                trace.append(dict(at=time.monotonic(), jobs={k:v for k,v in current['jobs'].items()
                    if k.startswith(prefix)}, workstations=current['workstations'], loads=current['handling'].get('loads',{}),
                    traffic=current['traffic'], fenced=current['durability']['fenced']))
                if predicate():
                    return
            except (OSError, KeyError):
                pass
            time.sleep(.3)
        raise RuntimeError(reason)

    def submit(tasks):
        subprocess.run([sys.executable,'tools/submit_job.py',json.dumps(dict(operation='submit_batch',tasks=tasks))],
                       check=True,timeout=15)

    def interrupt_navigation(robot):
        client = node.create_client(CancelGoal,f'/{robot}/follow_path/_action/cancel_goal')
        if not client.wait_for_service(timeout_sec=5):
            raise RuntimeError(f'{robot} 的仿真导航取消服务不可用')
        pending = client.call_async(CancelGoal.Request())
        rclpy.spin_until_future_complete(node,pending,timeout_sec=6)
        result = pending.result()
        if result is None or result.return_code != CancelGoal.Response.ERROR_NONE or len(result.goals_canceling)!=1:
            raise RuntimeError(f'{robot} 未确认终止正在执行的导航')

    def job(identity):
        return current['jobs'].get(identity,{})

    try:
        initial = state()['state']
        session = initial['execution_adapter']['session']
        if (len(initial['robots'])!=4 or not initial['durability']['adapters_ready']
                or initial['traffic']['reservation_mode']!='segmented'
                or 'LM_DOCK_06' not in initial['traffic']['waiting_points']
                or any(robot['job'] or robot['blocked'] or not robot['feedback_fresh']
                       for robot in initial['robots'].values())):
            raise ValueError('需要空闲四车分段会话，并配置 LM_DOCK_06 为等待点')
        start = initial['telemetry']['agv01']['pose'][:2]
        began = time.monotonic()
        submit([dict(id=transfer,type='transport',pickup=PICKUP,dropoff='AP_SHIP_01',robot='agv01',
                     priority=100,allow_transfer=True),
                dict(id=protected,type='transport',pickup=PICKUP,dropoff='AP_SHIP_02',robot='agv03')])
        observe(45,lambda:job(transfer).get('state')=='EXECUTING'
                and current['traffic']['active'].get('agv01',{}).get('segment_goal')=='LM_DOCK_06'
                and math.dist(current['telemetry']['agv01']['pose'][:2],start)>.35,
                '未观测到原车在取货前行驶')
        first = job(transfer)['execution_id']
        exclusion = (job(protected)['state']=='QUEUED' and current['workstations'][PICKUP]['job']==transfer)
        interrupt_navigation('agv01')
        observe(45,lambda:job(transfer).get('state')=='EXECUTING' and job(transfer).get('robot') not in (None,'agv01')
                and job(transfer).get('execution_id')!=first,'原车终止后未自动改派')
        alternate, second = job(transfer)['robot'], job(transfer)['execution_id']
        old_holds = current['traffic']['active'].get('agv01',{}).get('failed')
        observe(30,lambda:any(r['body']['task_id']==second and r['state']=='ACTIVE'
                              for r in current['execution_adapter']['records']),
                '新车未进入导航执行')
        crash_scheduler()
        observe(50,lambda:any(e['event']=='execution_reconciled' and e['task_id']==transfer for e in events.values())
                and not current['durability']['fenced'],'调度器重启后未完成原执行对账')
        same_after_restart = job(transfer)['execution_id']==second
        observe(300,lambda:job(protected).get('loaded') is True and job(protected).get('state')=='EXECUTING'
                and current['traffic']['active'].get('agv03',{}).get('task_id')==job(protected)['execution_id'],
                '前一台车离开后未完成第二单取货')
        loaded_execution = job(protected)['execution_id']
        interrupt_navigation('agv03')
        observe(200,lambda:job(protected).get('state')=='FAILED' and job(transfer).get('state')=='DONE',
                '载货故障仍未隔离或改派单未完成')
        stable_since = time.monotonic()
        observe(10,lambda:time.monotonic()-stable_since>3 and job(protected)['state']=='FAILED'
                and current['telemetry']['agv03'].get('odom_age',99)<1,'载货隔离未保持或车辆反馈缺失')
        checks = dict(
            one_pickup_reservation=exclusion,
            same_business_id_and_new_vehicle=job(transfer)['transfer_from']=='agv01' and alternate!='agv01',
            new_execution_created=second!=first,
            isolated_route_retained=bool(old_holds),
            scheduler_restart_kept_live_execution=same_after_restart,
            delivered_to_original_target=current['handling']['cargo'][transfer]==dict(location='AP_SHIP_01',delivered=True),
            released_workstation_after_departure=any(e['event']=='workstation_released' and e.get('task_id')==transfer
                                                      and e.get('robot')==alternate and e.get('station')==PICKUP
                                                      for e in events.values()),
            loaded_vehicle_remains_owner=current['handling']['loads'].get('agv03')==protected
                            and job(protected)['execution_id']==loaded_execution and job(protected)['robot']=='agv03',
            loaded_failure_kept_out_of_transfer=not any(e['event']=='task_transferred' and e['task_id']==protected
                                                       for e in events.values()),
            no_reservation_overlap=all(t['traffic']['overlap_cells']==0 for t in trace),
        )
        report = dict(status='PASS' if all(checks.values()) else 'FAIL', checks=checks, source_execution=first,
                      replacement_execution=second, replacement_robot=alternate, elapsed_s=time.monotonic()-began)
    except (OSError,ValueError,KeyError,RuntimeError,subprocess.SubprocessError) as error:
        report = dict(status='FAIL',reason=str(error))
    finally:
        node.destroy_node()
        rclpy.shutdown()
        report.update(evidence=str(run),transfer_job=transfer,loaded_job=protected)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (run/'telemetry.json').write_text(json.dumps(dict(events=list(events.values()),traces=trace),
                                                     ensure_ascii=False),encoding='utf8')
    print(json.dumps(report,ensure_ascii=False),flush=True)
    return 0 if report['status']=='PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
