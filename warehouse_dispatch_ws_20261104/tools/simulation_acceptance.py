#!/usr/bin/env python3
"""Live four-car simulation acceptance, including scheduler crash during work."""
import json
from pathlib import Path
import time
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile,DurabilityPolicy,ReliabilityPolicy
from std_msgs.msg import String
from restart_scheduler import crash_scheduler
from recovery_evidence import audit_cursor, recovery_complete


def main():
    rclpy.init();n=Node('simulation_acceptance')
    state={};events=[];traces=[]
    q=QoSProfile(depth=1,durability=DurabilityPolicy.TRANSIENT_LOCAL,reliability=ReliabilityPolicy.RELIABLE)
    def receive(m):state.clear();state.update(json.loads(m.data))
    subs=[n.create_subscription(String,'/dispatch/state',receive,q),n.create_subscription(String,'/dispatch/events',lambda m:events.append(json.loads(m.data)),100),n.create_subscription(String,'/warehouse/status',lambda m:events.append(json.loads(m.data)),100)]
    pub=n.create_publisher(String,'/dispatch/tasks',20);progress=n.create_publisher(String,'/demo/status',q)
    root=Path('simulation_runs')/time.strftime('%Y%m%dT%H%M%S');root.mkdir(parents=True,exist_ok=False)
    start=time.monotonic();last=0.;message='等待实际定位与持久化适配器'
    def spin():
        nonlocal last
        rclpy.spin_once(n,timeout_sec=.1);now=time.monotonic()
        if state and now-last>.5:
            traces.append(dict(wall=now,state=json.loads(json.dumps(state))));last=now
            progress.publish(String(data=json.dumps(dict(status='RUNNING',message=message,elapsed_s=now-start),ensure_ascii=False)))
    def wait(predicate,timeout,label):
        nonlocal message
        message=label;end=time.monotonic()+timeout
        while time.monotonic()<end:
            spin()
            if predicate():return
        raise RuntimeError(label+' timeout')
    def send(value,predicate):
        pub.publish(String(data=json.dumps(value)));wait(predicate,10,'确认 '+value.get('id',value.get('operation','')))
    report={}
    try:
        wait(lambda:len(state.get('robots',{}))==4 and all(time.monotonic()-r['seen']<4 for r in state['robots'].values()) and state.get('execution_adapter',{}).get('database_id') and state.get('handling',{}).get('database_id'),100,'四车与执行适配器就绪')
        if any(not j['id'].startswith('autocharge-') for j in state.get('jobs',{}).values()):raise RuntimeError('requires fresh ./sim.sh start session')
        send(dict(operation='hold_dispatch',enabled=True),lambda:state['dispatch_paused'])
        send(dict(operation='set_weights',weights=dict(distance=1.,battery=20.,congestion=8.)),lambda:any(e['event']=='weights_updated' for e in events))
        initial=[dict(id='NORMAL-01',type='move',goal='AP_PICK_01'),dict(id='NORMAL-02',type='transport',pickup='LM_DOCK_12',dropoff='LM_12_13'),dict(id='TRANSPORT-03',type='transport',pickup='LM_DOCK_24',dropoff='LM_24_13',robot='agv04',allow_transfer=True),dict(id='QUEUE-CONTROL',type='move',goal='AP_QC_01')]
        for req in initial:send(req,lambda id=req['id']:id in state['jobs'])
        for op,target in [('pause','PAUSED'),('resume','QUEUED'),('cancel','CANCELLED')]:
            send(dict(operation=op,id='QUEUE-CONTROL'),lambda target=target:state['jobs']['QUEUE-CONTROL']['state']==target)
        send(dict(operation='fault_idle',robot='agv04'),lambda:state['robots']['agv04']['blocked'])
        send(dict(operation='hold_dispatch',enabled=False),lambda:not state['dispatch_paused'])
        wait(lambda:bool(state['execution_adapter'].get('active')),30,'实际车辆开始导航')
        active_robot=state['execution_adapter']['active'][0]
        moving_job=state['robots'][active_robot]['job']
        send(dict(operation='pause',id=moving_job),lambda:state['jobs'][moving_job]['state']=='PAUSED_ACTIVE')
        pause_at=time.monotonic()
        while time.monotonic()-pause_at<2:spin()
        send(dict(operation='resume',id=moving_job),lambda:state['jobs'][moving_job]['state']=='EXECUTING')
        urgent=dict(id='URGENT-01',type='transport',pickup='LM_DOCK_06',dropoff='LM_13_13',priority=100)
        delivery=dict(id='FACTORY-DELIVERY',type='transport',pickup='AP_RECEIVE_01',dropoff='AP_SHIP_01')
        for req in [urgent,delivery]:send(req,lambda id=req['id']:id in state['jobs'])
        # Submit the exact same business ID again. It must not create another mission.
        send(delivery,lambda:any(e['event']=='duplicate' and e.get('task_id')=='FACTORY-DELIVERY' for e in events))
        workspace=Path(__file__).resolve().parents[1]
        session=Path((workspace/'.sim_session').read_text().strip()).resolve()
        if workspace not in session.parents:raise RuntimeError('recovery evidence must belong to this workspace')
        database=session/'dispatch.sqlite3';cursor=audit_cursor(database)
        pid=crash_scheduler()
        wait(lambda:recovery_complete(database,cursor),40,'调度服务崩溃后自动重启、查询执行账本并恢复')
        recovered_scheduler=True
        required=['NORMAL-01','NORMAL-02','TRANSPORT-03','URGENT-01','FACTORY-DELIVERY']
        deadline=time.monotonic()+1100;message='多车运输、货叉反馈、紧急插单、交通等待与充电并行'
        while time.monotonic()<deadline:
            spin();jobs=state.get('jobs',{})
            if any(jobs.get(i,{}).get('state') in ('FAILED','CANCELLED') for i in required):raise RuntimeError('business failure; preserve evidence')
            if all(jobs.get(i,{}).get('state')=='DONE' for i in required) and any(j['kind']=='charge' and j['state']=='DONE' for j in jobs.values()):break
        else:raise RuntimeError('overall completion timeout')
        homes=dict(agv01='CP_06',agv02='CP_12',agv03='CP_18',agv04='CP_24')
        wait(lambda:all(state['robots'][n]['station']==cp and not state['robots'][n]['job'] for n,cp in homes.items()),240,'业务完成后自动返回各自停车位')
        send(dict(operation='clear_idle_fault',robot='agv04'),lambda:not state['robots']['agv04']['blocked'])
        records=state['handling']['records'];route=state['execution_adapter']['records']
        checks=dict(five_business_done=all(state['jobs'][i]['state']=='DONE' for i in required),
                    queue_control=state['jobs']['QUEUE-CONTROL']['state']=='CANCELLED',
                    active_pause_resume=all(any(e['event']==kind for e in events) for kind in ('paused_active','resumed_active')),
                    fault_isolated_and_transfer=any(e['event']=='task_transferred' for e in events) and state['jobs']['TRANSPORT-03']['robot']!='agv04' and not any(e['event']=='assigned' and e.get('robot')=='agv04' for e in events),
                    scheduler_crash_recovered=recovered_scheduler,
                    duplicate_not_reexecuted=sum(r['body'].get('cargo_id')=='FACTORY-DELIVERY' and r['body'].get('action')=='pickup' for r in records)==1,
                    eight_joint_feedback_actions=sum(r['state']=='SUCCEEDED' for r in records)==8,
                    all_cargo_delivered=len(state['handling']['cargo'])==4 and all(c.get('delivered') for c in state['handling']['cargo'].values()),
                    no_loaded_robot=not state['handling']['loads'],
                    urgent_completed=state['jobs']['URGENT-01']['state']=='DONE',
                    urgent_before_waiting_normal=next((i for i,e in enumerate(events) if e['event']=='assigned' and e.get('task_id')=='URGENT-01'),999999)<next((i for i,e in enumerate(events) if e['event']=='assigned' and e.get('task_id')=='TRANSPORT-03'),-1),
                    traffic_wait_observed=any(e['event']=='traffic_wait' for e in events),
                    exclusive_reservations=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in traces),
                    charge_completed=any(j['kind']=='charge' and j['state']=='DONE' for j in state['jobs'].values()),
                    no_failed_route_command=all(r['state'] not in ('FAILED','INTERRUPTED') for r in route),
                    all_parked=True)
        report=dict(status='PASS' if all(checks.values()) else 'FAIL',checks=checks,crashed_scheduler_pid=pid,
                    recovery_evidence='post-crash durable audit and unfenced committed state',recovery_after_audit_seq=cursor)
    except Exception as error:report=dict(status='FAIL',reason=str(error))
    finally:
        if report.get('status')!='PASS':
            pub.publish(String(data=json.dumps(dict(operation='hold_dispatch',enabled=True))))
            for job in list(state.get('jobs',{}).values()):
                if job['state'] in ('QUEUED','PAUSED','EXECUTING','HANDLING','CHARGING','PAUSING','PAUSED_ACTIVE','RESUMING'):
                    pub.publish(String(data=json.dumps(dict(operation='cancel',id=job['id']))))
            end=time.monotonic()+3
            while time.monotonic()<end:spin()
        report.update(wall_seconds=time.monotonic()-start,state=state,events=events,handling='GAZEBO_JOINT_FEEDBACK_AND_LOGICAL_CARGO_IO',battery='SOFTWARE_SOC')
        (root/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (root/'telemetry.json').write_text(json.dumps(traces,ensure_ascii=False),encoding='utf8')
        progress.publish(String(data=json.dumps(dict(status=report['status'],message='综合验收完成，包含运行中服务重启和货叉反馈' if report['status']=='PASS' else report.get('reason','check failed'),report=str(root/'summary.json')),ensure_ascii=False)))
        rclpy.spin_once(n,timeout_sec=.2);n.destroy_node();rclpy.shutdown()
        print(json.dumps({k:v for k,v in report.items() if k not in ('state','events')},ensure_ascii=False))
    return 0 if report['status']=='PASS' else 1


if __name__=='__main__':raise SystemExit(main())
