#!/usr/bin/env python3
"""Four-forklift acceptance scenario. All execution comes from live ROS feedback."""
import json
import math
from pathlib import Path
import time
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from std_msgs.msg import String


def fleet_parked(state):
    homes={'agv01':'CP_06','agv02':'CP_12','agv03':'CP_18'}
    return all(name in state.get('robots',{}) and state['robots'][name]['job'] is None and state['robots'][name]['station']==home for name,home in homes.items()) and not any(j['state'] in ('EXECUTING','QUEUED') for j in state.get('jobs',{}).values() if j['id'].startswith('park-'))


def main():
    rclpy.init()
    n = Node('overall_dispatch_demonstration')
    q = QoSProfile(depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL, reliability=ReliabilityPolicy.RELIABLE)
    state, events, traces = {}, [], []
    def receive(m):
        state.clear(); state.update(json.loads(m.data))
    subs = [n.create_subscription(String, '/dispatch/state', receive, q),
            n.create_subscription(String, '/dispatch/events', lambda m: events.append(json.loads(m.data)), 100),
            n.create_subscription(String, '/warehouse/status', lambda m: events.append(json.loads(m.data)), 100)]
    pub = n.create_publisher(String, '/dispatch/tasks', 20)
    status = n.create_publisher(String, '/demo/status', q)
    root = Path('overall_runs')/time.strftime('%Y%m%dT%H%M%S')
    root.mkdir(parents=True, exist_ok=False)
    start, last_sample, last_status = time.monotonic(), 0., 0.
    message = '等待四台叉车定位、电量与扫描数据'
    def spin(seconds=.2):
        nonlocal last_sample, last_status
        rclpy.spin_once(n, timeout_sec=seconds)
        now = time.monotonic()
        if state and now-last_sample >= .5:
            traces.append(dict(wall=now, state=json.loads(json.dumps(state))))
            last_sample = now
        if now-last_status >= 1:
            status.publish(String(data=json.dumps(dict(status='RUNNING', message=message, elapsed_s=now-start), ensure_ascii=False)))
            last_status = now
    def wait(predicate, timeout, explanation):
        nonlocal message
        message = explanation
        end = time.monotonic()+timeout
        while time.monotonic()<end:
            spin()
            if predicate(): return
        raise RuntimeError(explanation+'：超时')
    def send(req, predicate=None):
        pub.publish(String(data=json.dumps(req)))
        if predicate: wait(predicate, 8, '确认请求 '+req.get('id', req.get('operation','')))
    report = {}
    try:
        wait(lambda: len(state.get('robots',{}))==4 and all(r['station'] and time.monotonic()-r['seen']<4 for r in state['robots'].values()),
             100, '等待四车就绪')
        if state.get('jobs') and any(not j['id'].startswith('autocharge-') for j in state['jobs'].values()):
            raise RuntimeError('要求全新会话；已有业务任务，拒绝叠加演示')
        send(dict(operation='hold_dispatch', enabled=True), lambda: state.get('dispatch_paused'))
        requests = [
            dict(id='NORMAL-01', type='move', goal='AP_PICK_01', priority=0),
            dict(id='NORMAL-02', type='transport', pickup='LM_DOCK_12', dropoff='LM_12_13', priority=0),
            dict(id='TRANSFER-01', type='transport', pickup='LM_DOCK_24', dropoff='LM_24_13', robot='agv04', allow_transfer=True),
            dict(id='QUEUE-CONTROL', type='move', goal='AP_QC_01')]
        for req in requests:
            send(req, lambda id=req['id']: id in state.get('jobs',{}))
        send(dict(operation='pause', id='QUEUE-CONTROL'), lambda: state['jobs']['QUEUE-CONTROL']['state']=='PAUSED')
        send(dict(operation='priority', id='QUEUE-CONTROL', priority=100), lambda: state['jobs']['QUEUE-CONTROL']['priority']==100)
        send(dict(operation='resume', id='QUEUE-CONTROL'), lambda: state['jobs']['QUEUE-CONTROL']['state']=='QUEUED')
        send(dict(operation='cancel', id='QUEUE-CONTROL'), lambda: state['jobs']['QUEUE-CONTROL']['state']=='CANCELLED')
        send(dict(operation='fault_idle', robot='agv04'), lambda: state['robots']['agv04']['blocked'])
        send(dict(operation='hold_dispatch', enabled=False), lambda: not state.get('dispatch_paused',True))
        wait(lambda: any(j['state']=='EXECUTING' for j in state['jobs'].values() if j['id'].startswith('NORMAL')),
             15, '普通任务开始执行，agv04故障隔离，agv03充电并行')
        end=time.monotonic()+2
        while time.monotonic()<end:spin()
        req=dict(id='URGENT-01', type='transport', pickup='LM_DOCK_06', dropoff='LM_13_13', priority=100)
        send(req, lambda: 'URGENT-01' in state['jobs'])
        delivery=dict(id='FACTORY-DELIVERY', type='transport', pickup='AP_RECEIVE_01', dropoff='AP_SHIP_01')
        send(delivery, lambda: 'FACTORY-DELIVERY' in state['jobs'])
        required=['NORMAL-01','NORMAL-02','TRANSFER-01','URGENT-01','FACTORY-DELIVERY']
        message='紧急任务插入；观察候选报价、共享路段等待和空闲后优先派单'
        deadline=time.monotonic()+900
        while time.monotonic()<deadline:
            spin()
            jobs=state.get('jobs',{})
            if any(jobs.get(id,{}).get('state') in ('FAILED','CANCELLED') for id in required):
                raise RuntimeError('业务任务失败，保留现场和事件')
            charge=[j for j in jobs.values() if j['kind']=='charge' and j['robot']=='agv03']
            if all(jobs.get(id,{}).get('state')=='DONE' for id in required) and charge and all(j['state']=='DONE' for j in charge):
                break
        else: raise RuntimeError('综合任务/充电在900秒内未全部完成')
        wait(lambda: fleet_parked(state),
             160,'业务完成，自动返程清空共享路段')
        send(dict(operation='clear_idle_fault', robot='agv04'), lambda: not state['robots']['agv04']['blocked'])
        assigned=[e for e in events if e['event']=='assigned']
        wait_events=[e for e in events if e['event']=='traffic_wait']
        checks=dict(business_all_done=all(state['jobs'][id]['state']=='DONE' for id in required),
                    queued_pause_resume_cancel=all(any(e['event']==op and e.get('task_id')=='QUEUE-CONTROL' for e in events) for op in ('pause','resume','cancelled')),
                    task_transfer=any(e['event']=='task_transferred' for e in events) and state['jobs']['TRANSFER-01']['robot']!='agv04',
                    urgent_assigned=any(e.get('task_id')=='URGENT-01' for e in assigned),
                    urgent_before_waiting_normal=next((i for i,e in enumerate(assigned) if e.get('task_id')=='URGENT-01'),999)<next((i for i,e in enumerate(assigned) if e.get('task_id')=='TRANSFER-01'),-1),
                    injected_fault_recovered=any(e['event']=='robot_fault_cleared' for e in events),
                    resource_wait_observed=bool(wait_events),
                    no_active_reservation_overlap=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in traces),
                    fault_robot_excluded=not any(e.get('robot')=='agv04' for e in assigned),
                    charge_completed=any(j['kind']=='charge' and j['state']=='DONE' and j['robot']=='agv03' for j in state['jobs'].values()))
        report=dict(status='PASS' if all(checks.values()) else 'FAIL', checks=checks,
                    wall_seconds=time.monotonic()-start, traffic_wait_events=len(wait_events),
                    business_count=5, handling='SOFTWARE_SIMULATED', fault='EXPLICIT_IDLE_FAULT_INJECTION',
                    charge='SOFTWARE_BATTERY_AT_SPAWN_CHARGER', state=state)
    except Exception as error:
        report=dict(status='FAIL', reason=str(error), wall_seconds=time.monotonic()-start, state=state)
    finally:
        if report.get('status') != 'PASS':
            pub.publish(String(data=json.dumps(dict(operation='hold_dispatch', enabled=True))))
            for job in list(state.get('jobs', {}).values()):
                if job['state'] in ('QUEUED','EXECUTING','HANDLING','CHARGING'):
                    pub.publish(String(data=json.dumps(dict(operation='cancel',id=job['id']))))
            until=time.monotonic()+4
            while time.monotonic()<until:rclpy.spin_once(n,timeout_sec=.1)
        report['events']=events
        (root/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (root/'telemetry.json').write_text(json.dumps(traces,ensure_ascii=False),encoding='utf8')
        status.publish(String(data=json.dumps(dict(status=report['status'], message='综合演示完成，可查看任务、报价与事件记录' if report['status']=='PASS' else report.get('reason','验收项未全部通过'), report=str(root/'summary.json')),ensure_ascii=False)))
        rclpy.spin_once(n,timeout_sec=.3)
        print(json.dumps({k:v for k,v in report.items() if k not in ('state','events')},ensure_ascii=False))
        n.destroy_node();rclpy.shutdown()
    return 0 if report['status']=='PASS' else 1


if __name__=='__main__':raise SystemExit(main())
