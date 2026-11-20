"""Drive the original warehouse aisles with odometry while Cartographer maps."""

import argparse
import math
import time

import rclpy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from rclpy.node import Node
from rclpy.qos import qos_profile_sensor_data
from rclpy.signals import SignalHandlerOptions
from rclpy.utilities import remove_ros_args
from sensor_msgs.msg import LaserScan
from warehouse_sim.layout import CHARGER_X, CHARGER_Y, SURVEY_WAYPOINTS


class MappingPatrol(Node):
    def __init__(self, speed, start_index=0):
        super().__init__('warehouse_mapping_patrol')
        self.speed = speed
        self.pose = None
        self.last_odom = 0
        self.front_distance = math.inf
        self.obstacle_since = None
        self.index = start_index
        self.done = False
        self.failure = None
        self.waypoints = SURVEY_WAYPOINTS
        self.publisher = self.create_publisher(Twist, '/agv01/cmd_vel', 1)
        self.create_subscription(Odometry, '/agv01/odom', self.odom, qos_profile_sensor_data)
        self.create_subscription(LaserScan, '/agv01/scan_low', self.scan, qos_profile_sensor_data)
        self.create_timer(.05, self.step)
        self.get_logger().info('Mapping patrol started; run without Nav2 or the route dispatcher.')

    def odom(self, msg):
        p, q = msg.pose.pose.position, msg.pose.pose.orientation
        yaw = math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))
        # The fresh agv01 odom origin is CP_06, oriented north in the world.
        self.pose = (CHARGER_X[0]-p.y, CHARGER_Y+p.x, yaw+math.pi/2)
        self.last_odom = time.monotonic()

    def scan(self, msg):
        values = [value for i, value in enumerate(msg.ranges)
                  if abs(msg.angle_min+i*msg.angle_increment) < .25
                  and math.isfinite(value) and value >= msg.range_min]
        # An isolated GPU lidar pixel can report a short range. A real object
        # across the forklift's path covers several adjacent beams.
        self.front_distance = sorted(values)[2] if len(values) >= 3 else min(values, default=math.inf)

    def stop(self):
        self.publisher.publish(Twist())

    def step(self):
        if self.done:
            self.stop()
            return
        if self.pose is None or time.monotonic()-self.last_odom > 1.5:
            self.stop()
            return
        x, y, yaw = self.pose
        gx, gy = self.waypoints[self.index]
        distance = math.hypot(gx-x, gy-y)
        if distance < .16:
            self.index += 1
            self.stop()
            self.get_logger().info(f'Reached survey waypoint {self.index}/{len(self.waypoints)}')
            if self.index == len(self.waypoints):
                self.done = True
            return
        target = math.atan2(gy-y, gx-x)
        error = math.atan2(math.sin(target-yaw), math.cos(target-yaw))
        command = Twist()
        command.angular.z = max(-.65, min(.65, 1.6*error))
        if abs(error) < .22:
            if self.front_distance < .85:
                self.stop()
                if self.obstacle_since is None:
                    self.obstacle_since = time.monotonic()
                elif time.monotonic()-self.obstacle_since > 1.5:
                    self.failure = 'Persistent obstacle in the survey lane'
                    self.done = True
                return
            self.obstacle_since = None
            command.linear.x = min(self.speed, .8*distance)
        else:
            self.obstacle_since = None
        self.publisher.publish(command)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--speed', type=float, default=.9)
    parser.add_argument('--start-index', type=int, default=0,
                        help='Resume at this zero-based survey waypoint index')
    args = parser.parse_args(remove_ros_args()[1:])
    if not 0 <= args.start_index < len(SURVEY_WAYPOINTS):
        parser.error('--start-index is outside the survey waypoint list')
    rclpy.init(signal_handler_options=SignalHandlerOptions.NO)
    node = MappingPatrol(max(.15, min(1.0, args.speed)), args.start_index)
    started = time.monotonic()
    try:
        while not node.done and time.monotonic()-started < 900:
            rclpy.spin_once(node, timeout_sec=.1)
        node.stop()
        if not node.done:
            raise RuntimeError('Mapping patrol timed out')
        if node.failure:
            raise RuntimeError(node.failure)
        print(f'Mapping patrol complete in {time.monotonic()-started:.1f} seconds', flush=True)
    except KeyboardInterrupt:
        node.stop()
    finally:
        for _ in range(3):
            node.stop()
            rclpy.spin_once(node, timeout_sec=.05)
        node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()
