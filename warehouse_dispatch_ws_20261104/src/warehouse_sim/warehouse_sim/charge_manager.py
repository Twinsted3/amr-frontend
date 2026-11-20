"""Simulated battery state and occupancy for the four physical charging bays."""

import json
import math
import time
import rclpy
from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from sensor_msgs.msg import BatteryState
from std_msgs.msg import String
from warehouse_sim.layout import CHARGER_X, CHARGER_Y
from warehouse_sim.pose_tracker import PoseTracker
from warehouse_sim.execution_store import ExecutionStore
from warehouse_sim.domain_owner import DomainOwner


class ChargeManager(Node):
    def __init__(self):
        super().__init__('warehouse_charge_manager')
        self.declare_parameter('robots', 2)
        self.declare_parameter('initial_soc', .55)
        self.declare_parameter('soc_profile', '')
        self.declare_parameter('require_booking',False)
        self.declare_parameter('battery_db','')
        self.robot_ids = [f'agv{i:02d}' for i in range(1, int(self.get_parameter('robots').value)+1)]
        self.poses, self.speed = {}, {}
        self.tracker=PoseTracker(self,self.robot_ids)
        self.odom_at={};self.bookings={};self.booking_at=-1e30
        database=self.get_parameter('battery_db').value
        self.store=ExecutionStore(database) if database else None
        self.owner=DomainOwner('battery') if database else None
        initial = float(self.get_parameter('initial_soc').value)
        if not 0 <= initial <= 1:
            raise ValueError('initial_soc must be in [0,1]')
        self.levels = {name: min(1., initial+.025*i) for i, name in enumerate(self.robot_ids)}
        profile = self.get_parameter('soc_profile').value
        if profile:
            values = [float(v) for v in profile.split(',')]
            if len(values) != len(self.robot_ids) or any(not 0 <= v <= 1 for v in values):
                raise ValueError('soc_profile must have one [0,1] value per robot')
            self.levels = dict(zip(self.robot_ids, values))
        if self.store:
            saved=self.store.metadata('levels')
            if saved is not None:
                if set(saved)!=set(self.levels) or any(not 0<=v<=1 for v in saved.values()):raise ValueError('battery database roster/state mismatch')
                self.levels=saved
        self.battery_publishers = {
            name: self.create_publisher(BatteryState, f'/{name}/battery_state', 10)
            for name in self.robot_ids}
        self.station_publisher = self.create_publisher(String, '/warehouse/chargers', 10)
        qos = QoSProfile(depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL,
                         reliability=ReliabilityPolicy.RELIABLE)
        self.create_subscription(String,'/dispatch/state',self.booking,qos)
        self.pose_subs, self.odom_subs = [], []
        for name in self.robot_ids:
            self.pose_subs.append(self.create_subscription(
                PoseWithCovarianceStamped, f'/{name}/amcl_pose',
                lambda msg, name=name: self.on_pose(name, msg), qos))
            self.odom_subs.append(self.create_subscription(
                Odometry, f'/{name}/odom', lambda msg, name=name: self.on_odom(name, msg), 10))
        self.last_time = self.get_clock().now().nanoseconds/1e9
        self.create_timer(1.0, self.update)

    def on_pose(self, name, msg):
        p, q = msg.pose.pose.position, msg.pose.pose.orientation
        yaw = math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))
        self.poses[name] = (p.x, p.y, yaw)

    def on_odom(self, name, msg):
        self.speed[name] = abs(msg.twist.twist.linear.x)+abs(msg.twist.twist.angular.z)
        self.odom_at[name]=time.monotonic()

    def booking(self,msg):
        self.bookings=json.loads(msg.data).get('chargers',{});self.booking_at=time.monotonic()

    def update(self):
        now = self.get_clock().now().nanoseconds/1e9
        dt = max(0, min(2.0, now-self.last_time))
        self.last_time = now
        stations = {f'CP_{int(x):02d}': None for x in CHARGER_X}
        for name in self.robot_ids:
            station = None
            reading=self.tracker.read(name)
            if reading and time.monotonic()-self.odom_at.get(name,-1e30)<2 and self.speed.get(name, 1) < .04:
                px, py, yaw = reading[0]
                for x in CHARGER_X:
                    angle = math.atan2(math.sin(yaw-math.pi/2), math.cos(yaw-math.pi/2))
                    if math.hypot(px-x, py-CHARGER_Y) < .65 and abs(angle) < .4:
                        cp=f'CP_{int(x):02d}'
                        stations[cp] = name
                        if not self.get_parameter('require_booking').value or (time.monotonic()-self.booking_at<2 and self.bookings.get(cp)==name):station=cp
                        break
            rate = .003 if station else -(.00003+.00012*self.speed.get(name, 0))
            self.levels[name] = min(1., max(0., self.levels[name]+rate*dt))
            battery = BatteryState()
            battery.header.stamp = self.get_clock().now().to_msg()
            battery.percentage = self.levels[name]
            battery.voltage = 44.+10.*battery.percentage
            battery.current = (20.0 if battery.percentage < 1 else 0.0) if station else -2.0
            battery.capacity = battery.design_capacity = 200.
            battery.charge = 200.*battery.percentage
            battery.present = True
            battery.power_supply_status = (
                BatteryState.POWER_SUPPLY_STATUS_FULL if battery.percentage >= 1 else
                BatteryState.POWER_SUPPLY_STATUS_CHARGING if station else
                BatteryState.POWER_SUPPLY_STATUS_DISCHARGING)
            battery.power_supply_technology = BatteryState.POWER_SUPPLY_TECHNOLOGY_LIFE
            self.battery_publishers[name].publish(battery)
        message = String()
        message.data = json.dumps(stations)
        self.station_publisher.publish(message)
        if self.store:self.store.save_metadata(dict(levels=self.levels))


def main():
    rclpy.init()
    node = ChargeManager()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        if node.store:node.store.close()
        if node.owner:node.owner.close()
        node.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()
