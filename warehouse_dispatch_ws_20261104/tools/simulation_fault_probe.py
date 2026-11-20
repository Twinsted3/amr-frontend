#!/usr/bin/env python3
"""Live watchdog stop/recovery and circular-wait yielding probes.

Run after sim.sh run; these are real ROS/Gazebo fixtures in the owned session.
"""
import argparse
import json
import math
import os
from pathlib import Path
import signal
import subprocess
import time
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile,DurabilityPolicy,ReliabilityPolicy
from std_msgs.msg import String
from nav_msgs.msg import Odometry
from restart_scheduler import owned_adapter_pid


def main():
    parser=argparse.ArgumentParser();parser.add_argument('mode',choices=['watchdog','driver','traffic','charge','parallel','cancel']);args=parser.parse_args()
    rclpy.init();n=Node('simulation_'+args.mode+'_probe');state={};events=[];trace=[];odom={}
    q=QoSProfile(depth=1,durability=DurabilityPolicy.TRANSIENT_LOCAL,reliability=ReliabilityPolicy.RELIABLE)
    def receive(m):state.clear();state.update(json.loads(m.data))
    def movement(m):
        p=m.pose.pose.position;v=m.twist.twist
        odom.update(at=time.monotonic(),x=p.x,y=p.y,speed=math.hypot(v.linear.x,v.linear.y),angular=abs(v.angular.z))
    subs=[n.create_subscription(String,'/dispatch/state',receive,q),n.create_subscription(String,'/warehouse/status',lambda m:events.append(json.loads(m.data)),100),n.create_subscription(String,'/dispatch/events',lambda m:events.append(json.loads(m.data)),100),n.create_subscription(Odometry,'/agv04/odom',movement,10)]
    pub=n.create_publisher(String,'/dispatch/tasks',10);status=n.create_publisher(String,'/demo/status',q)
    run=Path('simulation_runs')/(time.strftime('%Y%m%dT%H%M%S')+'_'+args.mode);run.mkdir(parents=True,exist_ok=False)
    start=time.monotonic();last=0.;message='等待实际车队状态';suspended=None;report={}
    def spin():
        nonlocal last
        rclpy.spin_once(n,timeout_sec=.05);now=time.monotonic()
        if state and now-last>.25:
            trace.append(dict(wall=now,state=json.loads(json.dumps(state)),odom=dict(odom)));last=now
            status.publish(String(data=json.dumps(dict(status='RUNNING',message=message),ensure_ascii=False)))
    def wait(predicate,seconds,label):
        nonlocal message
        message=label;deadline=time.monotonic()+seconds
        while time.monotonic()<deadline:
            spin()
            if predicate():return
        raise RuntimeError(label+' timeout')
    def task(req):
        wait(lambda:pub.get_subscription_count()>0,8,'等待任务订阅建立')
        payload=String(data=json.dumps(req));deadline=time.monotonic()+10;sent=-1e30
        while time.monotonic()<deadline:
            if time.monotonic()-sent>1:
                pub.publish(payload);sent=time.monotonic()
            spin()
            if req['id'] in state.get('jobs',{}):return
            rejected=next((e for e in events if e['event']=='request_rejected' and e.get('task_id')==req['id']),None)
            if rejected:raise RuntimeError(rejected.get('reason','request rejected'))
        raise RuntimeError('任务确认超时 '+req['id'])
    def parameter(value):
        p=subprocess.run(['ros2','param','set','/fleet_scheduler','auto_return',str(value).lower()],capture_output=True,text=True,timeout=12)
        if p.returncode:raise RuntimeError(p.stderr or p.stdout)
    try:
        wait(lambda:len(state.get('robots',{}))==4,10,'等待四车状态')
        if any(r['job'] or r['blocked'] for r in state['robots'].values()):raise RuntimeError('requires idle, healthy four-car fleet')
        if args.mode=='cancel':
            task(dict(id='ACTIVE-CANCEL',type='move',robot='agv04',goal='LM_23_20'))
            wait(lambda:odom.get('speed',0)>.25,40,'等待实际运动后取消任务')
            pub.publish(String(data=json.dumps(dict(operation='cancel',id='ACTIVE-CANCEL'))))
            wait(lambda:state['jobs']['ACTIVE-CANCEL']['state']=='CANCELLED' and odom.get('speed',1)<.02 and odom.get('angular',1)<.04 and state.get('traffic',{}).get('active',{}).get('agv04',{}).get('failed'),10,'取消后确认实际停车和占用保留')
            p=dict(odom);since=time.monotonic()
            while time.monotonic()-since<.7:spin()
            drift=math.hypot(odom['x']-p['x'],odom['y']-p['y'])
            checks=dict(cancelled=state['jobs']['ACTIVE-CANCEL']['state']=='CANCELLED',physically_stopped=drift<.05,robot_isolated=state['robots']['agv04']['blocked'],reservation_retained=state['traffic']['active']['agv04']['failed'])
            report=dict(checks=checks,stationary_drift_m=drift,note='Terminal safety probe; stop/start a new simulation before further demos')
        elif args.mode=='parallel':
            homes={f'agv{i:02d}':f'CP_{i*6:02d}' for i in range(1,5)}
            if any(state['robots'][name]['station']!=cp for name,cp in homes.items()):raise RuntimeError('parallel probe requires four home positions')
            origins={name:state['telemetry'][name]['pose'] for name in homes}
            for i,name in enumerate(homes,1):task(dict(id='PARALLEL-'+name,type='standby',robot=name,goal=f'LM_DOCK_{i*6:02d}'))
            wait(lambda:all(state['jobs']['PARALLEL-'+name]['state'] in ('DONE','FAILED') for name in homes),120,'四车同时离桩到达各自工位')
            distances={name:math.hypot(state['telemetry'][name]['pose'][0]-p[0],state['telemetry'][name]['pose'][1]-p[1]) for name,p in origins.items()}
            for name,cp in homes.items():task(dict(id='PARALLEL-HOME-'+name,type='return',robot=name,goal=cp))
            wait(lambda:all(state['jobs']['PARALLEL-HOME-'+name]['state'] in ('DONE','FAILED') for name in homes),120,'四车同时返回各自车位')
            max_moving=0
            for a,b in zip(trace,trace[1:]):
                moving=0
                for name in homes:
                    pa=a['state']['telemetry'][name].get('pose');pb=b['state']['telemetry'][name].get('pose')
                    if pa and pb and math.hypot(pa[0]-pb[0],pa[1]-pb[1])>.03:moving+=1
                max_moving=max(max_moving,moving)
            checks=dict(all_eight_legs_done=all(state['jobs'][prefix+name]['state']=='DONE' for name in homes for prefix in ('PARALLEL-','PARALLEL-HOME-')),
                        all_four_physically_moved=all(d>4 for d in distances.values()),
                        four_moving_same_sample=max_moving==4,
                        exclusive_reservations=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in trace),
                        all_parked=all(state['robots'][name]['station']==cp and not state['robots'][name]['job'] for name,cp in homes.items()))
            report=dict(checks=checks,outbound_tf_displacement_m=distances,max_simultaneously_moving=max_moving)
        elif args.mode in ('watchdog','driver'):
            identity=args.mode.upper()+'-STANDBY'
            # Alternate between two holding stations for consecutive probes.
            destination='LM_33_20' if state['robots']['agv04']['station']=='LM_23_20' else 'LM_23_20'
            task(dict(id=identity,type='standby',robot='agv04',goal=destination))
            wait(lambda:state['jobs'][identity]['state']=='EXECUTING' and odom.get('speed',0)>.25,50,'agv04实际运动后注入进程挂起')
            suspended=owned_adapter_pid('route_dispatcher','executor.sqlite3') if args.mode=='watchdog' else owned_adapter_pid('motion_guard',None)
            before=time.monotonic();os.kill(suspended,signal.SIGSTOP)
            wait(lambda:time.monotonic()-before>1.5 and odom.get('speed',1)<.02 and odom.get('angular',1)<.04,4,'速度租约失效，等待里程计确认停车')
            stopped=dict(odom);pause=time.monotonic()
            while time.monotonic()-pause<.7:spin()
            drift=math.hypot(odom['x']-stopped['x'],odom['y']-stopped['y'])
            os.kill(suspended,signal.SIGCONT);suspended=None
            wait(lambda:state['jobs'][identity]['state'] in ('DONE','FAILED'),160,'恢复执行进程，原任务继续到达等待位')
            checks=dict(stopped_during_process_hang=drift<.05,original_task_resumed=state['jobs'][identity]['state']=='DONE',no_active_reservation_overlap=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in trace))
            report=dict(checks=checks,stationary_drift_m=drift,stopped_observation=stopped)
        elif args.mode=='charge':
            origin=state['robots']['agv04']['station'];initial=state['robots']['agv04']['soc']
            if origin=='CP_24' or initial>=.79:raise RuntimeError('requires remote agv04 with SOC below 79%')
            task(dict(id='REMOTE-CHARGE',type='charge',robot='agv04',goal='CP_24'))
            wait(lambda:state['jobs']['REMOTE-CHARGE']['state'] in ('DONE','FAILED'),360,'从远端等待位前往充电桩并充至80%')
            checks=dict(remote_charge_done=state['jobs']['REMOTE-CHARGE']['state']=='DONE',physically_at_charger=state['robots']['agv04']['station']=='CP_24',soc_reached_target=state['robots']['agv04']['soc']>=.8,
                        remote_stage_not_charging=all(t['state']['robots']['agv04']['soc']<=initial+.005 for t in trace if t['state']['robots']['agv04']['station'] not in ('CP_24','LM_DOCK_24')))
            report=dict(checks=checks,origin=origin,initial_soc=initial,final_soc=state['robots']['agv04']['soc'])
        else:
            parameter(False)
            if state['robots']['agv04']['station']!='LM_23_20':
                task(dict(id='TRAFFIC-STANDBY',type='standby',robot='agv04',goal='LM_23_20'))
                wait(lambda:state['jobs']['TRAFFIC-STANDBY']['state']=='DONE',160,'让出CP_24作为交通避让位')
            if state['robots']['agv01']['station']!='CP_06' or state['robots']['agv02']['station']!='CP_12':raise RuntimeError('agv01/02 must begin at CP_06/12')
            task(dict(id='SWAP-01',type='move',robot='agv01',goal='CP_12'))
            task(dict(id='SWAP-02',type='move',robot='agv02',goal='CP_06'))
            wait(lambda:all(state['jobs'][i]['state'] in ('DONE','FAILED') for i in ('SWAP-01','SWAP-02')),480,'两车交换已占用车位，检测等待环并自动空载避让')
            checks=dict(both_swap_tasks_done=all(state['jobs'][i]['state']=='DONE' for i in ('SWAP-01','SWAP-02')),
                        automatic_yield_observed=any(e['event']=='traffic_yield' for e in events),
                        cycle_actually_reported=any(t['state'].get('traffic',{}).get('deadlocks') for t in trace) or any(e['event']=='traffic_yield' and len(e.get('cycle',[]))>1 for e in events),
                        no_active_reservation_overlap=all(t['state'].get('traffic',{}).get('overlap_cells',0)==0 for t in trace))
            report=dict(checks=checks)
        report['status']='PASS' if all(report['checks'].values()) else 'FAIL'
    except Exception as error:report=dict(status='FAIL',reason=str(error))
    finally:
        if suspended:
            try:os.kill(suspended,signal.SIGCONT)
            except ProcessLookupError:pass
        if args.mode=='traffic':
            try:parameter(True)
            except Exception as e:report['cleanup_error']=str(e);report['status']='FAIL'
        report.update(mode=args.mode,wall_seconds=time.monotonic()-start,state=state,events=events)
        (run/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
        (run/'telemetry.json').write_text(json.dumps(trace,ensure_ascii=False),encoding='utf8')
        status.publish(String(data=json.dumps(dict(status=report['status'],message=args.mode+' 专项验收 '+report['status'],report=str(run/'summary.json')),ensure_ascii=False)))
        rclpy.spin_once(n,timeout_sec=.2);n.destroy_node();rclpy.shutdown()
        print(json.dumps({k:v for k,v in report.items() if k not in ('state','events')},ensure_ascii=False))
    return 0 if report['status']=='PASS' else 1


if __name__=='__main__':raise SystemExit(main())
