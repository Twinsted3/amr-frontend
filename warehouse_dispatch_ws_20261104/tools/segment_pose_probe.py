#!/usr/bin/env python3
"""Interrupt one simulation AMCL process and check stop and recovery."""

import json
import math
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

import rclpy
from nav_msgs.msg import Odometry
from rclpy.node import Node
from std_msgs.msg import String

from segment_traffic_probe import state


def localization_pid(launch_pid):
    matches = []
    for proc in Path('/proc').iterdir():
        try:
            if not proc.name.isdecimal() or proc.stat().st_uid != os.getuid():
                continue
            args = (proc/'cmdline').read_bytes().split(b'\0')
            parent = int((proc/'stat').read_text().rsplit(')',1)[1].split()[1])
        except (OSError, ValueError, IndexError):
            continue
        if parent == launch_pid and args[0].endswith(b'/lib/nav2_amcl/amcl') and b'__ns:=/agv01' in args:
            matches.append(int(proc.name))
    if len(matches) != 1:
        raise RuntimeError('找不到当前仿真会话所属的 agv01 定位进程')
    return matches[0]


def main():
    before = state()['state']
    if (before['traffic']['reservation_mode'] != 'segmented'
            or 'LM_DOCK_06' not in before['traffic']['waiting_points']
            or before['robots']['agv01']['station'] != 'CP_06'
            or any(robot['job'] for robot in before['robots'].values())):
        raise ValueError('需要空闲分段会话，agv01 位于 CP_06，并配置 LM_DOCK_06 为等待点')
    pid = localization_pid(int(Path('.warehouse_run.pid').read_text().strip()))
    run = Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_segment_pose_loss')
    run.mkdir(parents=True)
    identity = f'SEG-POSE-{time.time_ns()}'
    leases, odom, events = [], [], []
    rclpy.init()
    node = Node('segment_pose_loss_probe')

    def lease(msg):
        leases.append((time.monotonic(),'agv01' in json.loads(msg.data)['robots']))

    def movement(msg):
        v = msg.twist.twist
        odom.append((time.monotonic(),math.hypot(v.linear.x,v.linear.y),abs(v.angular.z)))

    def event(msg):
        value = json.loads(msg.data)
        if (value.get('task_id') or '').startswith(identity+':'):
            events.append(dict(value, observed_at=time.monotonic()))

    node.create_subscription(String,'/warehouse/motion_lease',lease,10)
    node.create_subscription(Odometry,'/agv01/odom',movement,10)
    node.create_subscription(String,'/warehouse/status',event,50)

    def wait(predicate, seconds, reason):
        deadline = time.monotonic()+seconds
        while time.monotonic() < deadline:
            rclpy.spin_once(node,timeout_sec=.05)
            if predicate():
                return
        raise RuntimeError(reason)

    paused = False
    report = {}
    try:
        request = dict(id=identity,robot='agv01',type='standby',goal='LM_06_13')
        subprocess.run([sys.executable, 'tools/submit_job.py', json.dumps(request)], check=True, timeout=15)
        wait(lambda:leases and leases[-1][1] and odom and odom[-1][1]>.08,35,'未观察到车辆开始行驶')
        interrupted = time.monotonic()
        os.kill(pid,signal.SIGSTOP)
        paused = True
        wait(lambda:any(t>interrupted and not allowed for t,allowed in leases),5,'定位中断后未撤回通行许可')
        revoked = next(t for t,allowed in leases if t>interrupted and not allowed)
        wait(lambda:any(t>revoked and v<.04 and w<.08 for t,v,w in odom),1.2,'撤回许可后未观察到停稳')
        held = state()['state']['traffic']['active'].get('agv01',{})
        restored = time.monotonic()
        os.kill(pid,signal.SIGCONT)
        paused = False
        wait(lambda:any(e['event']=='arrived' for e in events)
             or any(e['event']=='failed' for e in events),100,'恢复后未收到导航结果')
        end = state()['state']['jobs'][identity]
        for _ in range(10):
            if end['state'] in ('DONE','FAILED','CANCELLED'):
                break
            time.sleep(.25)
            end = state()['state']['jobs'][identity]
        retried = [e for e in events if e['event']=='localization_resumed']
        checks = dict(
            permission_revoked=True,
            physically_stopped=True,
            segment_remained_reserved=held.get('segment_goal')=='LM_DOCK_06' and not held.get('failed'),
            no_release_during_interruption=not any(interrupted < e['observed_at'] < restored
                                                   for e in events if e['event']=='segment_released'),
            retry_used_same_execution=bool(retried and retried[0]['task_id']==end['execution_id']),
            original_task_completed=end['state']=='DONE',
        )
        report = dict(status='PASS' if all(checks.values()) else 'FAIL', checks=checks,
                      time_to_revoke_s=revoked-interrupted, final_state=end['state'])
    except (OSError, KeyError, RuntimeError, ValueError, subprocess.SubprocessError) as error:
        report = dict(status='FAIL', reason=str(error))
    finally:
        if paused:
            os.kill(pid,signal.SIGCONT)
        report.update(evidence=str(run), task=identity)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (run/'telemetry.json').write_text(json.dumps(dict(leases=leases, odom=odom, events=events)),encoding='utf8')
        print(json.dumps(report,ensure_ascii=False),flush=True)
        node.destroy_node()
        rclpy.shutdown()
    return 0 if report['status']=='PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
