"""Save vehicle connection profiles and track each independent status feed."""

import sqlite3
import ipaddress
import re
from pathlib import Path
from sample_vehicle import SampleVehicle

from telemetry import TCP_MODES, Telemetry, tcp_address

SAMPLE_FILES = {
    'sample_tcp': 'history.jsonl',
    'fork_sample_tcp': 'history-huocha.jsonl',
}
SAMPLE_PREFIX = 'SIM-'


class Vehicles:
    def __init__(self, dispatch, *, mode=None):
        self.mode = mode
        self.db = dispatch.db
        self.lock = dispatch.lock
        self.feeds = {}
        self.senders = {}
        with self.lock, self.db:
            self.db.execute('''
                CREATE TABLE IF NOT EXISTS vehicles (
                    id INTEGER PRIMARY KEY,
                    vehicle_id TEXT NOT NULL UNIQUE,
                    name TEXT NOT NULL,
                    host TEXT NOT NULL,
                    port INTEGER NOT NULL,
                    UNIQUE(host, port)
                )
            ''')
            self.db.execute('CREATE TABLE IF NOT EXISTS vehicle_sequence (id INTEGER PRIMARY KEY CHECK(id=1), last_id INTEGER NOT NULL)')
            self.db.execute('INSERT OR IGNORE INTO vehicle_sequence SELECT 1, COALESCE(MAX(id),0) FROM vehicles')

    @staticmethod
    def profile(row):
        return dict(zip(('id', 'vehicle_id', 'name', 'host', 'port'), row))

    def add(self, body):
        identity, name = body.get('vehicle_id'), body.get('name')
        if any(not isinstance(value, str) or not 1 <= len(value.strip()) <= 120 for value in (identity, name)):
            raise ValueError('车辆编号和名称均须为 1 至 120 个字符')
        identity = identity.strip()
        if self.mode == 'sim':
            if identity != SAMPLE_PREFIX + 'DEMO-FORKLIFT':
                raise ValueError('请使用样本车辆编号 SIM-DEMO-FORKLIFT')
            host, port = '127.0.0.1', 0
        else:
            host, port = tcp_address(body.get('host'), body.get('port'))
            if self.mode == 'field' and (identity.upper().startswith(SAMPLE_PREFIX)
                                        or re.fullmatch(r'agv\d+', identity, re.IGNORECASE)
                                        or ipaddress.IPv4Address(host).is_loopback):
                raise ValueError('请使用现场车辆编号及车端局域网地址')
        try:
            with self.lock, self.db:
                row = (identity.strip(), name.strip(), host, port)
                self.db.execute('UPDATE vehicle_sequence SET last_id=last_id+1 WHERE id=1')
                vehicle = self.db.execute('SELECT last_id FROM vehicle_sequence WHERE id=1').fetchone()[0]
                self.db.execute('INSERT INTO vehicles(id,vehicle_id,name,host,port) VALUES(?,?,?,?,?)', (vehicle, *row))
                return self.profile((vehicle, *row))
        except sqlite3.IntegrityError as error:
            raise ValueError('车辆编号或连接地址已登记') from error

    def command(self, vehicle, operation, mode='tcp'):
        if operation == 'connect':
            modes = {'field': ('tcp',), 'sim': tuple(SAMPLE_FILES)}.get(self.mode, TCP_MODES)
            if mode not in modes:
                raise ValueError('当前部署不支持该连接方式')
        with self.lock:
            row = self.db.execute('SELECT id,vehicle_id,name,host,port FROM vehicles WHERE id=?', (vehicle,)).fetchone()
            if row is None:
                if operation == 'remove':
                    return {'id': vehicle, 'removed': True}
                raise ValueError('车辆未登记')
            if operation == 'remove':
                with self.db:
                    self.db.execute('DELETE FROM vehicles WHERE id=?', (vehicle,))
                feed = self.feeds.pop(vehicle, None)
                if feed is not None:
                    feed.select('stopped')
                sender=self.senders.pop(vehicle,None)
                if sender:sender.close()
                return {'id': vehicle, 'removed': True}
            profile = self.profile(row)
            feed = self.feeds.get(vehicle)
            if feed is None:
                feed = self.feeds[vehicle] = Telemetry()
            if operation == 'connect':
                sender = None
                if mode in SAMPLE_FILES:
                    filename = SAMPLE_FILES[mode]
                    try:
                        prefix = SAMPLE_PREFIX if self.mode == 'sim' else ''
                        sender = SampleVehicle(Path(__file__).parent / 'samples' / filename, identity_prefix=prefix)
                    except OSError as error:
                        raise ValueError(f'无法启动历史数据模拟，请检查样本文件 {filename} 和本机监听端口') from error
                    if sender.vehicle_id!=profile['vehicle_id']:
                        sender.close()
                        raise ValueError(f'历史样本车辆编号为 {sender.vehicle_id}，请登记相同编号，不能冒充其他车辆')
                feed.select('stopped')
                old=self.senders.pop(vehicle,None)
                if old:old.close()
                if sender:
                    self.senders[vehicle]=sender.start()
                    feed.select(mode, '127.0.0.1', sender.port, profile['vehicle_id'])
                else:feed.select('tcp', profile['host'], profile['port'], profile['vehicle_id'])
            else:
                feed.select('stopped')
                sender=self.senders.pop(vehicle,None)
                if sender:sender.close()
            return {**profile, 'telemetry': feed.snapshot()}

    def snapshot(self):
        with self.lock:
            rows = self.db.execute('SELECT id,vehicle_id,name,host,port FROM vehicles ORDER BY id').fetchall()
            return [{**self.profile(row), 'telemetry': self.feeds[row[0]].snapshot() if row[0] in self.feeds else None}
                    for row in rows]

    def exists(self, vehicle):
        with self.lock:
            return self.db.execute('SELECT 1 FROM vehicles WHERE id=?', (vehicle,)).fetchone() is not None

    def close(self):
        with self.lock:
            for feed in self.feeds.values():
                feed.stop.set()
            for sender in self.senders.values():sender.close()
            self.senders.clear()
