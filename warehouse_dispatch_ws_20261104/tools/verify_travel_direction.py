#!/usr/bin/env python3
"""Observe signed Gazebo wheel odometry while tasks run; no motion is injected."""
import json,time
from pathlib import Path
import rclpy
from nav_msgs.msg import Odometry
from rclpy.node import Node

def main():
    rclpy.init();n=Node('observe_signed_travel');samples=[]
    def receive(name,msg):
        v=msg.twist.twist.linear.x
        if abs(v)>.04:samples.append(dict(robot=name,linear_x=v))
    subs=[n.create_subscription(Odometry,f'/agv{i:02d}/odom',lambda m,name=f'agv{i:02d}':receive(name,m),20) for i in range(1,5)]
    end=time.monotonic()+15
    while time.monotonic()<end:rclpy.spin_once(n,timeout_sec=.1)
    result=dict(status='PASS' if len(samples)>=20 and all(s['linear_x']>0 for s in samples) else 'INCONCLUSIVE' if len(samples)<20 else 'FAIL',source='Gazebo DiffDrive signed base-X wheel odometry; model forks are negative base-X',moving_samples=len(samples),reverse_samples=sum(s['linear_x']<0 for s in samples),samples=samples)
    dest=Path('simulation_runs/signed_travel_direction.json');dest.parent.mkdir(exist_ok=True);dest.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k!='samples'}));n.destroy_node();rclpy.shutdown()

if __name__=='__main__':main()
