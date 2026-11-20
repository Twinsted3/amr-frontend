"""Station IO adapter: actual Gazebo fork joint feedback + simulated cargo ledger.

Cargo identity/ownership is logical station IO, not a pallet contact/mass model.
The supply fixture creates one labelled cargo per transport at its pickup point.
Neither elapsed time nor a scheduler request can complete a handling operation.
"""
import json
import math
from pathlib import Path
import time
import uuid

import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from std_msgs.msg import String, Float64
from sensor_msgs.msg import JointState
from nav_msgs.msg import Odometry
from ament_index_python.packages import get_package_share_directory
from warehouse_sim.execution_store import ExecutionStore
from warehouse_sim.pose_tracker import PoseTracker
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.domain_owner import DomainOwner


class SimActions(Node):
    def __init__(self):
        super().__init__('sim_actions')
        self.declare_parameter('robots', 4)
        self.declare_parameter('database', 'runtime/actions.sqlite3')
        self.names=[f'agv{i:02d}' for i in range(1,int(self.get_parameter('robots').value)+1)]
        self.store=ExecutionStore(self.get_parameter('database').value)
        self.owner=DomainOwner('actions')
        self.path=Path(get_package_share_directory('warehouse_sim'))/'maps/warehouse.smap'
        self.graph=RouteGraph(self.path)
        self.map_sha='warehouse'
        self.session=uuid.uuid4().hex
        self.tracker=PoseTracker(self,self.names)
        self.joints,self.speeds,self.active={},{},{}
        self.loads=self.store.metadata('loads',{})
        self.cargo=self.store.metadata('cargo',{})
        self.targets={n:None for n in self.names}
        self.outputs={n:self.create_publisher(Float64,f'/{n}/fork_position',1) for n in self.names}
        self.status=self.create_publisher(String,'/warehouse/status',20)
        qos=QoSProfile(depth=1,durability=DurabilityPolicy.TRANSIENT_LOCAL,reliability=ReliabilityPolicy.RELIABLE)
        self.state=self.create_publisher(String,'/warehouse/actions_state',qos)
        self.create_subscription(String,'/warehouse/actions',self.request,20)
        self.subs=[]
        for n in self.names:
            self.subs += [self.create_subscription(JointState,f'/{n}/joint_states',lambda m,n=n:self.joint(n,m),10),
                          self.create_subscription(Odometry,f'/{n}/odom',lambda m,n=n:self.odom(n,m),10)]
        self.create_timer(.1,self.tick)

    def joint(self,name,msg):
        joint=name+'_fork_elevator_joint'
        if joint in msg.name:
            index=msg.name.index(joint)
            if index < len(msg.position) and math.isfinite(msg.position[index]):
                self.joints[name]=(time.monotonic(),msg.position[index])

    def odom(self,name,msg):
        v=msg.twist.twist
        self.speeds[name]=(time.monotonic(),math.hypot(v.linear.x,v.linear.y),abs(v.angular.z))

    def emit(self,event,command,**kw):
        value=dict(event=event,robot=command['robot'],task_id=command['task_id'],command_id=command['command_id'],**kw)
        self.status.publish(String(data=json.dumps(value)))
        return value

    def ready(self,name,station):
        now=time.monotonic();reading=self.tracker.read(name);speed=self.speeds.get(name)
        target=self.graph.stations[station]['pos']
        return bool(reading and speed and now-speed[0]<1. and speed[1]<.04 and speed[2]<.08 and math.hypot(reading[0][0]-target['x'],reading[0][1]-target['y'])<=.65)

    def request(self,msg):
        c={}
        fresh=False
        try:
            c=json.loads(msg.data);n=c['robot'];station=c['goal'];action=c['action'];cargo=c['cargo_id']
            if station not in self.graph.stations or not isinstance(cargo,str) or not cargo:
                raise ValueError('invalid handling command')
            if c.get('map_name') != self.map_sha:raise ValueError('handling map mismatch')
            if action=='stock' and n=='station':
                self.stock(c)
                return
            if n not in self.names or action not in ('pickup','dropoff','cancel'):
                raise ValueError('invalid handling command')
            old,fresh=self.store.accept(c)
            if not fresh:
                if old['result']:self.status.publish(String(data=json.dumps(old['result'])))
                else:self.emit('handling_accepted',c,state=old['state'],duplicate=True)
                return
            if action=='cancel':
                current=self.active.get(n)
                if current and current['command']['task_id']!=c['task_id']:raise ValueError('cancel generation mismatch')
                if current:
                    self.active.pop(n)
                    self.store.transition(current['command']['command_id'],'CANCELLED')
                joint=self.joints.get(n)
                if joint:self.targets[n]=joint[1]
                event=dict(event='cancelled',robot=n,task_id=c['task_id'],command_id=c['command_id'],loaded=bool(self.loads.get(n)),cargo_id=cargo)
                self.store.transition(c['command_id'],'SUCCEEDED',event)
                self.status.publish(String(data=json.dumps(event)))
                return
            if n in self.active:raise ValueError('handling already active')
            if action=='pickup' and self.loads.get(n):raise ValueError('robot already loaded')
            if action=='dropoff' and self.loads.get(n)!=cargo:raise ValueError('cargo ownership mismatch')
            if action=='pickup' and cargo in self.cargo and self.cargo[cargo] != dict(location=station,origin=station):
                raise ValueError('cargo is not at the confirmed pickup station')
            # Persist ACTIVE before issuing any fork command. Ownership changes
            # only in the atomic terminal transition after measured joint arrival.
            self.store.transition(c['command_id'],'ACTIVE')
            self.active[n]=dict(command=c,started=time.monotonic(),settled=None)
            self.emit('handling_accepted',c)
        except (ValueError,KeyError,TypeError) as e:
            if fresh and c.get('command_id') and self.store.get(c['command_id']) and self.store.get(c['command_id'])['state']=='ACCEPTED':
                event=self.emit('handling_failed',c,reason=str(e));self.store.transition(c['command_id'],'FAILED',event)
            elif c.get('robot') and c.get('task_id') and c.get('command_id'):
                self.emit('handling_command_rejected',c,reason=str(e))
            self.get_logger().error(str(e))

    def stock(self, command):
        record, fresh = self.store.accept(command)
        if not fresh:
            if record['result']:
                self.status.publish(String(data=json.dumps(record['result'])))
            return
        identity, station = command['cargo_id'], command['goal']
        expected = dict(location=station,origin=station)
        previous = command.get('previous_source')
        recorded = self.cargo.get(identity)
        if (identity in self.loads.values() or (recorded and recorded != expected and
                (not previous or recorded != dict(location=previous,origin=previous)))):
            self.store.transition(command['command_id'],'FAILED')
            return
        cargo = {**self.cargo,identity:expected}
        event = dict(event='cargo_at_source', robot='station', station=station, cargo_id=identity,
                     task_id=command['task_id'], command_id=command['command_id'])
        self.store.transition(command['command_id'],'SUCCEEDED',event,dict(cargo=cargo))
        self.cargo = cargo
        self.status.publish(String(data=json.dumps(event)))

    def tick(self):
        now=time.monotonic()
        for n,a in list(self.active.items()):
            c=a['command'];joint=self.joints.get(n)
            good=self.ready(n,c['goal']) and joint and now-joint[0]<1.
            if now-a['started']>25 or (not good and now-a['started']>3):
                reading=self.tracker.read(n);speed=self.speeds.get(n)
                event=dict(event='handling_failed',robot=n,task_id=c['task_id'],command_id=c['command_id'],reason='station/stopped/joint feedback timeout',diagnostics=dict(joint=joint,pose=reading,speed=speed,age=now-a['started'],target=self.targets[n]))
                self.store.transition(c['command_id'],'FAILED',event)
                self.status.publish(String(data=json.dumps(event)));self.active.pop(n)
                if joint:self.targets[n]=joint[1]
                continue
            if not good:continue
            target=.22 if c['action']=='pickup' else .0
            self.targets[n]=target
            if abs(joint[1]-target)<.015:
                a['settled']=a['settled'] or now
                if now-a['settled']>.3:
                    loaded=c['action']=='pickup'
                    loads=dict(self.loads);cargo=dict(self.cargo)
                    if loaded:loads[n]=c['cargo_id'];cargo[c['cargo_id']]=dict(location=n,origin=c['goal'])
                    else:loads.pop(n,None);cargo[c['cargo_id']]=dict(location=c['goal'],delivered=True)
                    event=dict(event='handling_done',robot=n,task_id=c['task_id'],command_id=c['command_id'],station=c['goal'],cargo_id=c['cargo_id'],loaded=loaded,joint_position=joint[1])
                    self.store.transition(c['command_id'],'SUCCEEDED',event,dict(loads=loads,cargo=cargo))
                    self.loads,self.cargo=loads,cargo
                    self.status.publish(String(data=json.dumps(event)));self.active.pop(n)
            else:a['settled']=None
        for n,p in self.outputs.items():
            if self.targets[n] is None:
                if n not in self.joints:continue
                self.targets[n]=self.joints[n][1]
            # Interrupted actions hold the last observed height rather than
            # completing a lift silently after process restart.
            if n not in self.active and any(r['state']=='INTERRUPTED' and r['body']['robot']==n for r in self.store.records()) and n in self.joints:
                self.targets[n]=self.joints[n][1]
            p.publish(Float64(data=float(self.targets[n])))
        self.state.publish(String(data=json.dumps(dict(session=self.session,database_id=self.store.database_id,map_name=self.map_sha,records=self.store.records(),loads=self.loads,cargo=self.cargo,joints={n:v[1] for n,v in self.joints.items()}))))


def main():
    rclpy.init();node=SimActions()
    try:rclpy.spin(node)
    except KeyboardInterrupt:pass
    finally:
        node.store.close();node.destroy_node()
        node.owner.close()
        if rclpy.ok():rclpy.shutdown()
