#!/usr/bin/env python3
"""Publish a correlated business task and wait for its scheduler acknowledgement."""
import argparse
import json
import time
import uuid
import rclpy
from rclpy.node import Node
from std_msgs.msg import String


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('request', help='JSON object, e.g. {"id":"m1","type":"move","goal":"AP_PICK_01"}')
    p.add_argument('--timeout', type=float, default=8.)
    args = p.parse_args()
    try:req = json.loads(args.request)
    except ValueError as error:p.error(str(error))
    if not isinstance(req,dict):p.error('request must be a JSON object')
    req['request_id']=uuid.uuid4().hex
    rclpy.init()
    node = Node('submit_business_job')
    publisher = node.create_publisher(String, '/dispatch/tasks', 10)
    results = []
    def receive(m):
        event = json.loads(m.data)
        if event.get('request_id') == req['request_id'] and event.get('event') in ('request_accepted','request_rejected'):
            results.append(event)
    sub = node.create_subscription(String, '/dispatch/events', receive, 10)
    deadline, sent = time.monotonic()+args.timeout, False
    while time.monotonic() < deadline and not results:
        rclpy.spin_once(node, timeout_sec=.1)
        if not sent and publisher.get_subscription_count() > 0 and sub.get_publisher_count() > 0:
            publisher.publish(String(data=json.dumps(req)))
            sent = True
    for event in results:
        print(json.dumps(event, ensure_ascii=False))
    node.destroy_node()
    rclpy.shutdown()
    if not results:
        p.exit(1, 'No acknowledgement; query /dispatch/state before retrying the same id.\n')
    if results[0]['event'] == 'request_rejected':
        p.exit(1, 'Task rejected.\n')


if __name__ == '__main__':
    main()
