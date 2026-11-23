"""Interactive local dashboard backed by live ROS and correlated acknowledgements."""
import json
import math
import threading
import time
import queue
from datetime import datetime, timezone
from collections import deque
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from std_msgs.msg import String
from ament_index_python.packages import get_package_share_directory
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.layout import obstacle_rectangles
from warehouse_sim.web_requests import validate_request


class Dashboard(Node):
    def __init__(self):
        super().__init__('dispatch_dashboard')
        self.declare_parameter('robots', 4)
        self.declare_parameter('port', 8866)
        share = Path(get_package_share_directory('warehouse_sim'))
        self.page = (share/'web/dashboard.html').read_bytes()
        graph = RouteGraph(share/'maps/warehouse.smap')
        self.map = dict(width=72, height=52, stations=graph.stations,
                        paths=[dict(start=a, end=b, points=graph.path_points([a,b])) for a,b in graph.edges],
                        obstacles=obstacle_rectangles())
        self.latest, self.updated, self.scenario = {}, 0., {}
        self.events = deque(maxlen=150)
        self.lock = threading.Lock()
        self.requests = queue.Queue(maxsize=32)
        self.pending = {}
        self.tracks = {}
        self.track_at = 0.
        self.task_pub = self.create_publisher(String, '/dispatch/tasks', 20)
        self.create_timer(.05, self.publish_requests)
        q = QoSProfile(depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL, reliability=ReliabilityPolicy.RELIABLE)
        self.subs = [self.create_subscription(String, '/dispatch/state', self.state, q),
                     self.create_subscription(String, '/dispatch/events', self.event, 100),
                     self.create_subscription(String, '/warehouse/status', self.event, 100),
                     self.create_subscription(String, '/demo/status', self.demo, q)]
        owner = self
        class Handler(BaseHTTPRequestHandler):
            def reply(self, status, value):
                body=json.dumps(value,ensure_ascii=False).encode('utf-8')
                self.send_response(status)
                self.send_header('Content-Type','application/json; charset=utf-8')
                self.send_header('Content-Length',str(len(body)))
                self.send_header('Cache-Control','no-store')
                self.end_headers();self.wfile.write(body)

            def do_POST(self):
                if self.path!='/api/tasks':
                    return self.reply(404,dict(error='接口不存在'))
                origin=self.headers.get('Origin')
                if origin and origin not in ('http://'+self.headers.get('Host',''),'https://'+self.headers.get('Host','')):
                    return self.reply(403,dict(error='拒绝跨站提交'))
                if self.headers.get('Content-Type','').split(';')[0]!='application/json':
                    return self.reply(415,dict(error='需要application/json'))
                request=None
                try:
                    size=int(self.headers.get('Content-Length','0'))
                    if not 0<size<=262144:raise ValueError('请求长度无效')
                    self.connection.settimeout(5)
                    request=validate_request(json.loads(self.rfile.read(size)),owner.map['stations'])
                    waiter=dict(ready=threading.Event(),result=None,deadline=time.monotonic()+8)
                    with owner.lock:
                        if time.monotonic()-owner.updated>3 or not owner.latest:
                            return self.reply(503,dict(error='调度状态未就绪或已过期'))
                        if len(owner.pending)>=32:return self.reply(429,dict(error='请求过多，请稍后'))
                        owner.pending[request['request_id']]=waiter
                    owner.requests.put_nowait((request,waiter))
                    if not waiter['ready'].wait(9):
                        return self.reply(202,dict(status='UNKNOWN',request_id=request['request_id'],id=request.get('id'),error='未收到调度确认；先查询队列，同编号重试，勿换编号重复下单'))
                    event=waiter['result']
                    return self.reply(200 if event['event']=='request_accepted' else 409,event)
                except (ValueError,TypeError,queue.Full) as error:
                    return self.reply(400,dict(error=str(error)))
                finally:
                    if request:
                        with owner.lock:owner.pending.pop(request['request_id'],None)

            def do_GET(self):
                if self.path in ('/', '/index.html'):
                    body, mime = owner.page, 'text/html; charset=utf-8'
                elif self.path == '/api/map':
                    body, mime = json.dumps(owner.map).encode(), 'application/json'
                elif self.path == '/api/state':
                    with owner.lock:
                        body = json.dumps(dict(state=owner.latest, events=list(owner.events),
                                               scenario=owner.scenario, age_s=time.monotonic()-owner.updated,
                                               tracks=owner.tracks, commands_ready=owner.task_pub.get_subscription_count()>0, source='LIVE_ROS_GAZEBO_AMCL')).encode()
                    mime = 'application/json'
                else:
                    self.send_error(404)
                    return
                self.send_response(200)
                self.send_header('Content-Type', mime)
                self.send_header('Cache-Control', 'no-store')
                self.send_header('Content-Length', str(len(body)))
                self.end_headers()
                self.wfile.write(body)
            def log_message(self, *args):
                pass
        self.server = ThreadingHTTPServer(('0.0.0.0', int(self.get_parameter('port').value)), Handler)
        self.thread = threading.Thread(target=self.server.serve_forever, daemon=True)
        self.thread.start()
        self.get_logger().info('Interactive simulation dashboard on http://0.0.0.0:8866')

    def publish_requests(self):
        while not self.requests.empty():
            request,waiter=self.requests.get_nowait()
            if time.monotonic()>waiter['deadline']:continue
            if self.task_pub.get_subscription_count()==0:
                waiter['result']=dict(event='request_rejected',reason='调度订阅未建立',request_id=request['request_id'])
                waiter['ready'].set();continue
            self.task_pub.publish(String(data=json.dumps(request,ensure_ascii=False)))

    def state(self, msg):
        with self.lock:
            self.latest, self.updated = json.loads(msg.data), time.monotonic()
            if self.updated-self.track_at>=.5:
                self.track_at=self.updated
                for name,robot in self.latest.get('robots',{}).items():
                    job=robot.get('job');pose=self.latest.get('telemetry',{}).get(name,{}).get('pose')
                    if job and pose:
                        points=self.tracks.setdefault(job,[])
                        if not points or math.hypot(pose[0]-points[-1][0],pose[1]-points[-1][1])>.08:
                            points.append(pose[:2]);del points[:-800]
                while len(self.tracks)>32:self.tracks.pop(next(iter(self.tracks)))

    def event(self, msg):
        with self.lock:
            event=json.loads(msg.data)
            self.events.append(dict(event, received_at=time.monotonic(),received_wall=datetime.now(timezone.utc).isoformat(timespec='milliseconds')))
            waiter=self.pending.get(event.get('request_id'))
            if waiter and event.get('event') in ('request_accepted','request_rejected'):
                waiter['result']=event;waiter['ready'].set()

    def demo(self, msg):
        with self.lock:
            self.scenario = json.loads(msg.data)


def main():
    rclpy.init()
    n = Dashboard()
    try:
        rclpy.spin(n)
    except KeyboardInterrupt:
        pass
    finally:
        n.server.shutdown()
        n.server.server_close()
        n.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()
