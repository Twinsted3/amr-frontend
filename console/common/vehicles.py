"""Save vehicle connection profiles and track each independent status feed."""

import sqlite3
from .telemetry import Telemetry, tcp_address


class Vehicles:
    connection_modes = ('tcp',)

    def __init__(self, dispatch):
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

    def address(self, identity, body):
        return tcp_address(body.get('host'), body.get('port'))

    def prepare_sample(self, mode, profile):
        return None

    def add(self, body):
        identity, name = body.get('vehicle_id'), body.get('name')
        if any(not isinstance(value, str) or not 1 <= len(value.strip()) <= 120 for value in (identity, name)):
            raise ValueError('车辆编号和名称均须为 1 至 120 个字符')
        identity = identity.strip()
        host, port = self.address(identity, body)
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
        if operation == 'connect' and mode not in self.connection_modes:
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
                sender = self.prepare_sample(mode, profile)
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
