#!/usr/bin/env python3
"""CLI controls with confirmation from the live scheduler state."""
import argparse
import json
import time
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from std_msgs.msg import String


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('operation',choices=['hold','release','fault','clear-fault'])
    p.add_argument('robot',nargs='?')
    a=p.parse_args()
    if a.operation in ('fault','clear-fault') and not a.robot:p.error('robot required')
    rclpy.init();n=Node('fleet_control_cli');latest={};errors=[];ack=[];sent_at=float('inf')
    q=QoSProfile(depth=1,durability=DurabilityPolicy.TRANSIENT_LOCAL,reliability=ReliabilityPolicy.RELIABLE)
    def receive(m):latest.clear();latest.update(json.loads(m.data))
    def event(m):
        e=json.loads(m.data)
        if e.get('wall_monotonic',0)<sent_at:return
        if e.get('event')=='request_rejected':errors.append(e)
        expected={'hold':'dispatch_hold','release':'dispatch_hold','fault':'robot_fault','clear-fault':'robot_fault_cleared'}[a.operation]
        if e.get('event')==expected and (a.operation in ('hold','release') or e.get('robot')==a.robot):ack.append(e)
    subs=[n.create_subscription(String,'/dispatch/state',receive,q),n.create_subscription(String,'/dispatch/events',event,10)]
    pub=n.create_publisher(String,'/dispatch/tasks',10)
    end=time.monotonic()+8
    while time.monotonic()<end and (not latest or not pub.get_subscription_count()):rclpy.spin_once(n,timeout_sec=.1)
    if not latest:p.exit(1,'No scheduler state.\n')
    if a.operation in ('hold','release'):
        request=dict(operation='hold_dispatch',enabled=a.operation=='hold')
        predicate=lambda:latest.get('dispatch_paused')==(a.operation=='hold')
    else:
        if a.robot not in latest.get('robots',{}):p.error('unknown robot')
        request=dict(operation='fault_idle' if a.operation=='fault' else 'clear_idle_fault',robot=a.robot)
        predicate=lambda:latest['robots'][a.robot]['blocked']==(a.operation=='fault')
    sent_at=time.monotonic()
    pub.publish(String(data=json.dumps(request)))
    success=False;end=time.monotonic()+8
    while time.monotonic()<end:
        rclpy.spin_once(n,timeout_sec=.1)
        if errors:break
        if predicate() and ack:success=True;break
    print(json.dumps(dict(status='CONFIRMED' if success else 'FAILED',request=request,errors=errors),ensure_ascii=False))
    n.destroy_node();rclpy.shutdown()
    return 0 if success else 1


if __name__=='__main__':raise SystemExit(main())
