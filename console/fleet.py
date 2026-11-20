"""Connect the console to the existing ROS/Gazebo dispatch dashboard API."""

from http.client import HTTPConnection, HTTPException
import ipaddress
import json
import threading
import uuid
from urllib.parse import urlsplit

from telemetry import finite_float, invalid_constant


SOURCE = 'LIVE_ROS_GAZEBO_AMCL'
MAX_RESPONSE = 12_000_000
OPERATIONS = ('submit_batch', 'pause', 'resume', 'cancel', 'hold_dispatch', 'recover_execution', 'update',
              'enable_vehicle', 'disable_vehicle', 'remove_vehicle', 'request_charge')


class Fleet:
    def __init__(self, url, dispatch=None):
        self.lock = threading.RLock()
        self.storage = dispatch
        self.connection_id = uuid.uuid4().hex
        self.address = None
        if dispatch is not None:
            with dispatch.lock, dispatch.db:
                dispatch.db.execute('CREATE TABLE IF NOT EXISTS connections (id INTEGER PRIMARY KEY CHECK(id=1), url TEXT NOT NULL)')
                stored = dispatch.db.execute('SELECT url FROM connections WHERE id=1').fetchone()
                if url is None and stored:
                    url = stored[0]
        self.configure(url)

    def configure(self, url):
        address = None
        canonical = ''
        if url == '':
            url = None
        if url is not None:
            if not isinstance(url, str):
                raise ValueError('仿真地址应为文本')
            parts = urlsplit(url)
            try:
                ip = ipaddress.IPv4Address(parts.hostname)
                port = parts.port
            except ValueError as error:
                raise ValueError('请填写仿真机的 IPv4 地址和端口') from error
            if (parts.scheme != 'http' or not port or parts.path not in ('', '/') or
                    parts.username or parts.password or parts.query or parts.fragment or
                    not (ip.is_private or ip.is_loopback) or ip.is_unspecified or ip.is_multicast):
                raise ValueError('仿真地址应为 http://<局域网 IPv4>:<端口>')
            address = str(ip), port
            canonical = f'http://{ip}:{port}'
        with self.lock:
            if self.storage:
                with self.storage.lock, self.storage.db:
                    self.storage.db.execute('INSERT OR REPLACE INTO connections(id,url) VALUES(1,?)', (canonical,))
            if address != self.address:
                self.connection_id = uuid.uuid4().hex
            self.address = address
            return self.config()

    def config(self):
        with self.lock:
            url = f'http://{self.address[0]}:{self.address[1]}' if self.address else ''
            return {'url': url, 'connection': self.connection_id}

    def call(self, path, data=None):
        if self.address is None:
            raise ConnectionError('请在车队运行页面填写仿真地址并连接')
        connection = HTTPConnection(*self.address, timeout=2 if data is None else 11)
        try:
            method = 'GET' if data is None else 'POST'
            body = None if data is None else json.dumps(data, ensure_ascii=False, allow_nan=False).encode()
            headers = {'Accept': 'application/json'}
            if body is not None:
                headers['Content-Type'] = 'application/json'
            connection.request(method, path, body, headers)
            response = connection.getresponse()
            content = response.read(MAX_RESPONSE + 1)
            if len(content) > MAX_RESPONSE:
                raise ValueError('仿真接口响应过大')
            value = json.loads(content, parse_float=finite_float, parse_constant=invalid_constant)
            if not isinstance(value, dict):
                raise ValueError('仿真接口返回格式不正确')
            return response.status, value
        finally:
            connection.close()

    def snapshot(self):
        with self.lock:
            return self.read_snapshot()

    def read_snapshot(self):
        try:
            status, value = self.call('/api/state')
            if status != 200 or value.get('source') != SOURCE or not isinstance(value.get('state'), dict):
                raise ValueError('地址未提供 ROS/Gazebo 调度状态')
            state = value['state']
            age = value.get('age_s')
            fresh = bool(state) and type(age) in (int, float) and 0 <= age <= 3
            adapter = state.get('execution_adapter') or {}
            durability = state.get('durability') or {}
            if not isinstance(adapter, dict) or not isinstance(durability, dict):
                raise ValueError('仿真执行端状态格式不正确')
            session = adapter.get('session')
            ready = (fresh and value.get('commands_ready') is True and isinstance(session, str) and bool(session)
                     and durability.get('adapters_ready') is True and not durability.get('storage_fault')
                     and not durability.get('fenced'))
            return {**value, **self.config(), 'connected': True, 'fresh': fresh, 'can_command': ready, 'session': session,
                    'map_name': adapter.get('map_name')}
        except (OSError, HTTPException, ValueError, RecursionError):
            message = ('仿真接口无法连接或返回无效状态' if self.address
                       else '请先填写仿真服务地址并点击保存并连接')
            return {**self.config(), 'connected': False, 'fresh': False, 'can_command': False, 'error': message}

    def map(self):
        with self.lock:
            status, value = self.call('/api/map')
            value = {**value, 'connection': self.connection_id}
        if status != 200 or not isinstance(value.get('stations'), dict) or not isinstance(value.get('paths'), list):
            raise ValueError('仿真地图未就绪')
        return value

    def command(self, body):
        with self.lock:
            return self.send_command(body)

    def send_command(self, body):
        request = body.get('request')
        if not isinstance(request, dict) or ('operation' in request and request['operation'] not in OPERATIONS):
            return 400, {'error': '仿真指令不受支持'}
        if len(json.dumps(request, ensure_ascii=False).encode()) > 16384:
            return 400, {'error': '仿真指令超过 16 KiB'}
        current = self.snapshot()
        if not current['can_command']:
            return 503, {'error': '调度或执行端尚未就绪，本次未提交'}
        if body.get('session') != current['session']:
            return 409, {'error': '仿真会话已变化，本次未提交。请核对当前地图和任务'}
        if body.get('connection') != self.connection_id:
            return 409, {'error': '连接配置已变化，请刷新车队状态后重新操作'}
        try:
            return self.call('/api/tasks', request)
        except (OSError, HTTPException, ValueError, RecursionError):
            return 202, {'status': 'UNKNOWN', 'error': '未取得调度确认。请先查队列，再用原任务编号重试'}
