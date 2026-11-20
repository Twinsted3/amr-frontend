"""Normalize saved vehicle frames and receive the passive Robokit TCP feed."""

from datetime import datetime, timezone
import ipaddress
import json
import logging
import math
from pathlib import Path
import socket
import struct
import threading
import time


HEADER = struct.Struct('!BBHIH6s')
MAX_FRAME = 2_000_000
TCP_SAMPLE_MODES = ('sample_tcp', 'fork_sample_tcp')
TCP_MODES = ('tcp', *TCP_SAMPLE_MODES)
LOGGER = logging.getLogger(__name__)


def now():
    return datetime.now(timezone.utc).isoformat(timespec='milliseconds')


def number(value):
    if type(value) is int or type(value) is float and math.isfinite(value):
        return value
    return None


def invalid_constant(value):
    raise ValueError(f'JSON 包含无效数值 {value}')


def finite_float(value):
    result = float(value)
    if not math.isfinite(result):
        invalid_constant(value)
    return result


def flag(value):
    if type(value) is bool:
        return value
    if type(value) is int and value in (0, 1):
        return bool(value)
    return None


def source_receive_delta(source, received):
    try:
        origin = datetime.fromisoformat(source.replace('Z', '+00:00'))
        arrival = datetime.fromisoformat(received)
        if origin.tzinfo is not None and arrival.tzinfo is not None:
            return round((arrival - origin).total_seconds(), 3)
    except (AttributeError, TypeError, ValueError, OverflowError):
        pass
    return None


def tcp_address(host, port):
    if not isinstance(host, str):
        raise ValueError('请输入有效的 IPv4 地址')
    try:
        ip = ipaddress.IPv4Address(host.strip())
    except ValueError as error:
        raise ValueError('请输入有效的 IPv4 地址') from error
    if (not (ip.is_private or ip.is_loopback) or ip.is_unspecified or ip.is_multicast
            or type(port) is not int or not 1 <= port <= 65535):
        raise ValueError('请输入现场局域网地址及有效端口')
    return str(ip), port


def normalize(frame):
    raw = frame.get('data')
    if not isinstance(raw, dict) or not isinstance(raw.get('vehicle_id'), str) or not raw['vehicle_id'].strip():
        raise ValueError('车况报文缺少车辆编号或数据区')
    battery = number(raw.get('battery_level'))
    value = {
        'vehicle_id': raw['vehicle_id'], 'received_at': frame.get('received_at'),
        'source_time': raw.get('create_on'), 'map_name': raw.get('current_map'),
        'source_receive_delta_s': source_receive_delta(raw.get('create_on'), frame.get('received_at')),
        'station': raw.get('current_station') or None,
        'battery_percent': round(battery*100, 1) if battery is not None and 0 <= battery <= 1 else None,
        'io': {key: raw.get(key) if isinstance(raw.get(key), list) else None for key in ('DI', 'DO')},
        'alarms': {key: raw.get(key) for key in ('fatals', 'errors', 'warnings', 'notices')},
        'task_status': raw.get('task_status_package'), 'tasklist_status': raw.get('tasklist_status'),
        'fork': raw.get('fork'), 'control_lock': raw.get('current_lock'),
        'move_status': raw.get('move_status_info'),
    }
    for key in ('x', 'y', 'angle', 'yaw', 'vx', 'vy', 'w', 'steer', 'confidence', 'loc_state', 'loadmap_status',
                'reloc_status', 'slam_status', 'block_x', 'block_y', 'block_reason', 'block_id', 'slow_reason',
                'fork_height', 'battery_temp', 'voltage', 'current', 'controller_temp', 'time', 'total_time',
                'odo', 'today_odo', 'requestVoltage', 'requestCurrent'):
        value[key] = number(raw.get(key))
    for key in ('charging', 'blocked', 'slowed', 'emergency', 'soft_emc', 'is_stop', 'brake'):
        value[key] = flag(raw.get(key))
    return value


def receive_exact(sock, size, stop, deadline):
    data = bytearray()
    while len(data) < size:
        if stop.is_set():
            raise InterruptedError
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise TimeoutError('状态报文等待超时')
        sock.settimeout(min(.5, remaining))
        try:
            part = sock.recv(size - len(data))
        except socket.timeout:
            continue
        if not part:
            raise ConnectionError('车辆已关闭状态连接')
        data.extend(part)
    return data


def receive_frame(sock, stop):
    deadline = time.monotonic() + 5
    marker, version, sequence, size, kind, reserved = HEADER.unpack(receive_exact(sock, HEADER.size, stop, deadline))
    if marker != 0x5A or version not in (1, 2) or kind != 19301 or not 0 < size <= MAX_FRAME:
        raise ValueError('状态报文头无效')
    if reserved[2:5] != b'\0\0\0':
        raise ValueError('当前接收器支持无路由区、未压缩的 19301 报文')
    body = receive_exact(sock, size, stop, deadline)
    return {'version': version, 'sequence': sequence, 'message_type': kind,
            'received_at': now(), 'data': json.loads(body.decode('utf-8'),
                                                     parse_constant=invalid_constant, parse_float=finite_float)}


class Telemetry:
    def __init__(self, data_dir: Path | None = None, *, identity_prefix=''):
        self.lock = threading.RLock()
        self.stop = threading.Event()
        self.samples = []
        self.latest = None
        self.mode, self.status = 'stopped', '未连接'
        if data_dir is not None:
            self.samples = [json.loads(line) for line in (data_dir/'history.jsonl').read_text(
                encoding='utf-8-sig').splitlines() if line.strip()]
            latest = json.loads((data_dir/'latest.json').read_text(encoding='utf-8-sig'))
            for frame in [*self.samples, latest]:
                frame['data']['vehicle_id'] = identity_prefix + frame['data']['vehicle_id']
            self.latest = normalize(latest)
            self.mode, self.status = 'sample', '历史样本'
        self.vehicle = self.latest
        self.frame_count = 0
        self.last_seen = None

    def snapshot(self):
        with self.lock:
            age = time.monotonic() - self.last_seen if self.last_seen is not None else None
            return {'mode': self.mode, 'status': self.status, 'vehicle': self.vehicle,
                    'online': self.mode == 'tcp' and self.status == '接收中' and age is not None and age <= 3,
                    'stream_active': self.mode in TCP_MODES and self.status == '接收中' and age is not None and age <= 3,
                    'simulated': self.mode in ('sample', 'replay', *TCP_SAMPLE_MODES),
                    'age_seconds': round(age, 1) if age is not None else None,
                    'frame_count': self.frame_count, 'sample_count': len(self.samples)}

    def select(self, mode, host=None, port=None, expected_id=None):
        if mode in TCP_MODES:
            host, port = tcp_address(host, port)
        if mode not in ('sample', 'replay', 'stopped', *TCP_MODES):
            raise ValueError('未知车况来源')
        if mode in ('sample', 'replay') and self.latest is None:
            raise ValueError('此来源没有历史样本')
        with self.lock:
            self.stop.set()
            stop = self.stop = threading.Event()
            self.mode = mode
            if mode != 'stopped':
                self.last_seen, self.frame_count = None, 0
            self.status = '正在连接模拟发送器' if mode in TCP_SAMPLE_MODES else {
                'tcp': '正在连接', 'replay': '正在回放', 'sample': '历史样本', 'stopped': '已停止',
            }[mode]
            if mode == 'sample':
                self.vehicle = self.latest
                return
            if mode == 'stopped':
                return
            self.vehicle = None
            target = self.read_tcp if mode in TCP_MODES else self.replay
            args = (stop, host, port, expected_id) if mode in TCP_MODES else (stop,)
            threading.Thread(target=target, args=args, daemon=True).start()

    def publish(self, stop, vehicle=None, status=None):
        with self.lock:
            if stop.is_set():
                return
            if vehicle is not None:
                self.vehicle = vehicle
                self.last_seen = time.monotonic()
                self.frame_count += 1
            if status is not None:
                self.status = status

    def replay(self, stop):
        for index,frame in enumerate(self.samples):
            if index and stop.wait(1.):
                return
            self.publish(stop, normalize(frame), '正在回放')
        self.publish(stop, status='回放完成')

    def read_tcp(self, stop, host, port, expected_id):
        while not stop.is_set():
            self.publish(stop, status='正在连接')
            try:
                with socket.create_connection((host, port), timeout=2) as sock:
                    while not stop.is_set():
                        vehicle = normalize(receive_frame(sock, stop))
                        if expected_id is not None and vehicle['vehicle_id'] != expected_id:
                            raise ValueError(f"上报车辆编号为 {vehicle['vehicle_id']}，与登记的 {expected_id} 不一致")
                        self.publish(stop, vehicle, '接收中')
            except (OSError, ValueError, RecursionError) as error:
                if not stop.is_set() and self.mode == 'tcp':
                    LOGGER.warning('车况连接 %s:%s（%s）中断: %s', host, port, expected_id, error)
                self.publish(stop, status=f'连接或解析中断，等待重连。{error}')
                stop.wait(2)
