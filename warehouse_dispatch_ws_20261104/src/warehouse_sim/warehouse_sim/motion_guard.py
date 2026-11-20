"""Simulation velocity gate: route executor lease AND recent Nav2 command.

This process uses wall time, including while /clock is paused. It is a simulation
watchdog, not a replacement for a physical emergency stop.
"""
import json
import time
import rclpy
from rclpy.node import Node
from rclpy.clock import Clock, ClockType
from geometry_msgs.msg import Twist
from std_msgs.msg import String
from warehouse_sim.domain_owner import DomainOwner


class MotionGuard(Node):
    def __init__(self):
        super().__init__('motion_guard')
        self.declare_parameter('robots', 4)
        self.owner=DomainOwner('motion_guard')
        self.names = [f'agv{i:02d}' for i in range(1, int(self.get_parameter('robots').value)+1)]
        self.allowed, self.lease_at, self.commands = set(), -1e30, {}
        self.pubs = {n:self.create_publisher(Twist, f'/{n}/cmd_vel', 1) for n in self.names}
        self.create_subscription(String, '/warehouse/motion_lease', self.lease, 10)
        self.subs = [self.create_subscription(Twist, f'/{n}/cmd_vel_nav', lambda m,n=n:self.command(n,m), 1) for n in self.names]
        self.create_timer(.05, self.tick, clock=Clock(clock_type=ClockType.STEADY_TIME))

    def lease(self, msg):
        try:
            value = json.loads(msg.data)
            self.allowed = set(value['robots']) & set(self.names)
            self.lease_at = time.monotonic()
        except (ValueError, KeyError, TypeError):
            self.allowed = set()

    def command(self, name, msg):
        self.commands[name] = (time.monotonic(), msg)

    def tick(self):
        now = time.monotonic()
        for name,pub in self.pubs.items():
            at, command = self.commands.get(name, (-1e30, Twist()))
            pub.publish(command if name in self.allowed and now-self.lease_at < .8 and now-at < .5 else Twist())


def main():
    rclpy.init(); node=MotionGuard()
    try:rclpy.spin(node)
    except KeyboardInterrupt:pass
    finally:
        node.allowed=set();node.tick();node.destroy_node()
        node.owner.close()
        if rclpy.ok():rclpy.shutdown()
