#!/usr/bin/env python3
"""Explicit simulation-only AMCL initialization; never teleports the model."""
import argparse,json,math,subprocess,time
from pathlib import Path
import rclpy
from rclpy.node import Node
from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('robot',choices=[f'agv{i:02d}' for i in range(1,5)]);a=p.parse_args()
    rclpy.init();n=Node('explicit_sim_relocalization');odom={}
    sub=n.create_subscription(Odometry,f'/{a.robot}/odom',lambda m:odom.update(at=time.monotonic(),linear=math.hypot(m.twist.twist.linear.x,m.twist.twist.linear.y),angular=abs(m.twist.twist.angular.z)),10)
    end=time.monotonic()+3
    while time.monotonic()<end:rclpy.spin_once(n,timeout_sec=.1)
    if not odom or time.monotonic()-odom['at']>1 or odom['linear']>.02 or odom['angular']>.04:raise RuntimeError('vehicle must be observed stopped')
    result=subprocess.run(['gz','topic','-e','-t','/world/warehouse/dynamic_pose/info','-n','1','--json-output'],capture_output=True,text=True,timeout=8,check=True)
    value=json.loads(result.stdout);pose=next(x for x in value['pose'] if x.get('name')==a.robot)
    pub=n.create_publisher(PoseWithCovarianceStamped,f'/{a.robot}/initialpose',10)
    end=time.monotonic()+4
    while not pub.get_subscription_count() and time.monotonic()<end:rclpy.spin_once(n,timeout_sec=.1)
    if not pub.get_subscription_count():raise RuntimeError('AMCL initialpose subscriber missing')
    msg=PoseWithCovarianceStamped();msg.header.frame_id='map'
    for key in ('x','y'):setattr(msg.pose.pose.position,key,pose['position'].get(key,0.))
    for key in ('x','y','z','w'):setattr(msg.pose.pose.orientation,key,pose['orientation'].get(key,0.))
    msg.pose.covariance[0]=msg.pose.covariance[7]=.01;msg.pose.covariance[35]=.01
    pub.publish(msg)
    for i in range(10):rclpy.spin_once(n,timeout_sec=.1)
    out=Path('artifacts/stall_incident_20261102');out.mkdir(parents=True,exist_ok=True)
    (out/(a.robot+'_explicit_sim_initialpose.json')).write_text(json.dumps(dict(robot=a.robot,gazebo_pose=pose,operation='One explicit simulation localization initialization; model position and business results unchanged'),indent=2))
    print('Published explicit simulation initialpose; wait for AMCL quality and TF before checked recovery')
    n.destroy_node();rclpy.shutdown()

if __name__=='__main__':main()
