"""Send an ordered station task to the warehouse route dispatcher."""

import argparse
import json
import time

import rclpy
from rclpy.node import Node
from std_msgs.msg import String
from rclpy.utilities import remove_ros_args


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('robot', help='agv01..agv10')
    parser.add_argument('goals', nargs='+',
                        help='One or more SMAP stations to visit in order')
    parser.add_argument('--recover', action='store_true',
                        help='Recover a failed robot after verifying it is stopped at a station')
    args = parser.parse_args(remove_ros_args()[1:])
    rclpy.init()
    node = Node('warehouse_send_task')
    publisher = node.create_publisher(String, '/warehouse/task', 10)
    deadline = time.monotonic() + 5.0
    while publisher.get_subscription_count() == 0 and time.monotonic() < deadline:
        rclpy.spin_once(node, timeout_sec=0.1)
    message = String()
    if publisher.get_subscription_count() == 0:
        node.destroy_node()
        rclpy.shutdown()
        parser.exit(1, 'No warehouse route dispatcher found.\n')
    task = {'robot': args.robot, 'recover': args.recover}
    if len(args.goals) == 1:
        task['goal'] = args.goals[0]
    else:
        task['goals'] = args.goals
    message.data = json.dumps(task)
    publisher.publish(message)
    rclpy.spin_once(node, timeout_sec=0.2)
    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
