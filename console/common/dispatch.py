"""Persistent maps and the local path-task executor."""

import json
import math
import sqlite3
import threading

from .maps import parse_map, plan
from .telemetry import now


ACTIVE = {'accepted', 'running', 'paused'}
TERMINAL = {'done', 'failed', 'cancelled'}


def event(task, state, message):
    task['state'] = state
    task['updated_at'] = now()
    task['events'].append({'at': task['updated_at'], 'state': state, 'message': message})


class Dispatch:
    def __init__(self, db_path, data_dir, *, local_executor=True):
        self.lock = threading.RLock()
        self.db = sqlite3.connect(db_path, check_same_thread=False)
        self.db.executescript('''
            CREATE TABLE IF NOT EXISTS maps (
                id INTEGER PRIMARY KEY, name TEXT NOT NULL, raw TEXT NOT NULL, geometry TEXT NOT NULL
            );
            CREATE TABLE IF NOT EXISTS archived_maps (id INTEGER PRIMARY KEY);
            CREATE TABLE IF NOT EXISTS tasks (id INTEGER PRIMARY KEY, body TEXT NOT NULL);
            CREATE TABLE IF NOT EXISTS state (id INTEGER PRIMARY KEY CHECK (id=1), body TEXT NOT NULL);
        ''')
        with self.db:
            if data_dir is not None and not self.db.execute('SELECT 1 FROM maps LIMIT 1').fetchone():
                for name in ('workshop.smap', 'default.smap'):
                    self.add_map(json.loads((data_dir/name).read_text(encoding='utf-8-sig')))
            row = self.db.execute('SELECT body FROM state WHERE id=1').fetchone()
            if row is None:
                first = self.db.execute('SELECT MIN(id) FROM maps').fetchone()[0]
                state = self.initial_pose(first) if local_executor else {'map_id': first}
                self.store_state(state)
            elif local_executor:
                state = json.loads(row[0])
                state['auto'] = False
                if state['active']:
                    task = self.task(state['active'])
                    event(task, 'paused', '服务已重启，任务等待继续')
                    self.store_task(task)
                self.store_state(state)

    def _insert_map(self, raw, geometry):
        result = self.db.execute('INSERT INTO maps(name,raw,geometry) VALUES(?,?,?)',
                                 (geometry['name'], json.dumps(raw, ensure_ascii=False, allow_nan=False),
                                  json.dumps(geometry, ensure_ascii=False, allow_nan=False)))
        return {'id': result.lastrowid, 'name': geometry['name']}

    def add_map(self, raw):
        geometry = parse_map(raw)
        with self.lock, self.db:
            result = self._insert_map(raw, geometry)
            row = self.db.execute('SELECT body FROM state WHERE id=1').fetchone()
            if row:
                state = json.loads(row[0])
                if state['map_id'] is None:
                    state['map_id'] = result['id']
                    self.store_state(state)
            return result

    def save_map_version(self, source_id, document, use=False):
        geometry = parse_map(document)
        document = {**document, 'header': {**document['header'], 'mapName': geometry['name']}}
        with self.lock, self.db:
            source = self.map(source_id, raw=True)
            comparable = {**document, 'header': {**document['header'], 'mapName': source['header']['mapName']}}
            if comparable == source:
                raise ValueError('地图没有改动，无需创建新版本')
            if self.db.execute('SELECT 1 FROM maps WHERE lower(trim(name))=lower(?) AND id NOT IN (SELECT id FROM archived_maps)',
                               (geometry['name'],)).fetchone():
                raise ValueError('地图名称已存在，请为新版本另取名称')
            result = self._insert_map(document, geometry)
            if use:
                state = self.state()
                state['preview_map_id'] = result['id']
                self.store_state(state)
        return {**result, 'summary': {'stations': len(geometry['stations']),
                                      'directed_paths': len(geometry['edges'])}}

    def archive_map(self, map_id):
        with self.lock, self.db:
            self.map(map_id)
            state = self.state()
            if map_id == state.get('preview_map_id', state['map_id']) or state.get('vehicle_id') and map_id == state['map_id']:
                raise ValueError('当前使用的地图或本地运行地图不能删除')
            self.db.execute('INSERT INTO archived_maps(id) VALUES(?)', (map_id,))
        return {'id': map_id}

    def map(self, map_id, raw=False):
        column = 'raw' if raw else 'geometry'
        row = self.db.execute(f'SELECT {column} FROM maps WHERE id=? AND id NOT IN (SELECT id FROM archived_maps)', (map_id,)).fetchone()
        if row is None:
            raise ValueError('地图不存在')
        return json.loads(row[0])

    def initial_pose(self, map_id):
        geometry = self.map(map_id)
        station = geometry['edges'][0]['from'] if geometry['edges'] else next(iter(geometry['stations']))
        return {'map_id': map_id, 'station': station, 'position': geometry['stations'][station],
                'heading': 0, 'active': None, 'auto': False, 'vehicle_id': 'SIM-01'}

    def state(self):
        return json.loads(self.db.execute('SELECT body FROM state WHERE id=1').fetchone()[0])

    def store_state(self, state):
        self.db.execute('INSERT OR REPLACE INTO state(id,body) VALUES(1,?)', (json.dumps(state),))

    def set_map(self, map_id):
        with self.lock, self.db:
            if self.state()['active']:
                raise ValueError('请先完成或取消当前任务，再切换地图')
            state = self.initial_pose(map_id)
            self.store_state(state)
            return state

    def select_preview(self, map_id):
        with self.lock, self.db:
            self.map(map_id)
            state = self.state()
            state['preview_map_id'] = map_id
            self.store_state(state)
            return {'preview_map_id': map_id}

    def set_station(self, station):
        with self.lock, self.db:
            state = self.state()
            if state['active']:
                raise ValueError('任务占用车辆，无法设置仿真位置')
            stations = self.map(state['map_id'])['stations']
            if not isinstance(station, str) or station not in stations:
                raise ValueError('请选择当前地图的站点')
            state.update(station=station, position=stations[station])
            self.store_state(state)
            return state

    def task(self, task_id):
        row = self.db.execute('SELECT body FROM tasks WHERE id=?', (task_id,)).fetchone()
        if row is None:
            raise ValueError('任务不存在')
        return json.loads(row[0])

    def store_task(self, task):
        self.db.execute('UPDATE tasks SET body=? WHERE id=?', (json.dumps(task, ensure_ascii=False), task['id']))

    def create(self, body):
        name, stops = body.get('name'), body.get('stops')
        priority = body.get('priority', 'normal')
        if not isinstance(name, str) or not name.strip() or len(name) > 100:
            raise ValueError('请填写 1 至 100 字的任务名称')
        if not isinstance(stops, list) or not 2 <= len(stops) <= 32 or any(not isinstance(s, str) for s in stops):
            raise ValueError('请选择起终点和可选必经点，最多 32 个点')
        if any(a == b for a, b in zip(stops, stops[1:])) or priority not in ('normal', 'urgent'):
            raise ValueError('相邻站点不可重复，优先级须为普通或紧急')
        with self.lock, self.db:
            state = self.state()
            if type(body.get('map_id')) is not int or body['map_id'] != state['map_id']:
                raise ValueError('地图已切换，请重新选择任务点位')
            geometry = self.map(state['map_id'])
            plan(geometry, stops)
            task = {'name': name.strip(), 'map_id': state['map_id'], 'map_name': geometry['name'],
                    'stops': stops, 'priority': priority, 'events': [], 'created_at': now(), 'progress': 0,
                    'distance': 0, 'route': None, 'vehicle_id': None, 'execution_id': None}
            task['id'] = self.db.execute('INSERT INTO tasks(body) VALUES(?)', ('{}',)).lastrowid
            event(task, 'created', '任务已登记')
            self.store_task(task)
            return task

    def start(self, state, task):
        if task['map_id'] != state['map_id']:
            raise ValueError('请先切回该任务所用地图')
        if state['station'] is None:
            raise ValueError('请在车辆状态页面将仿真车放到一个已知站点')
        geometry = self.map(state['map_id'])
        task['route'] = plan(geometry, [state['station'], *task['stops']])
        task['vehicle_id'] = state['vehicle_id']
        task['execution_id'] = f"LOCAL-{task['id']:06d}"
        task['distance'] = 0
        state['active'] = task['id']
        event(task, 'accepted', '本地执行端已接收路径')

    def command(self, task_id, action):
        with self.lock, self.db:
            state, task = self.state(), self.task(task_id)
            current = task['state']
            if action == 'dispatch':
                if current in ACTIVE or current == 'queued' or current in TERMINAL:
                    return task
                if task['map_id'] != state['map_id']:
                    raise ValueError('请先切回该任务所用地图')
                if not state['active'] and state['station'] is None:
                    raise ValueError('请在车辆状态页面将仿真车放到一个已知站点')
                event(task, 'queued', '已提交给本地调度队列')
            elif action == 'pause' and current in ('accepted', 'running'):
                event(task, 'paused', '已暂停本地执行')
            elif action == 'resume' and current == 'paused':
                event(task, 'running', '已继续本地执行')
            elif action == 'cancel' and current not in TERMINAL:
                event(task, 'cancelled', '任务已取消')
                if state['active'] == task_id:
                    state['active'] = None
            else:
                raise ValueError('当前任务状态不支持此操作')
            self.store_task(task)
            self.store_state(state)
            return task

    def set_auto(self, enabled):
        if type(enabled) is not bool:
            raise ValueError('调度开关值无效')
        with self.lock, self.db:
            state = self.state()
            state['auto'] = enabled
            self.store_state(state)
            return state

    def tick(self, dt):
        with self.lock, self.db:
            state = self.state()
            if state['active'] is None:
                if state['station'] is None:
                    return
                candidates = []
                for row in self.db.execute('SELECT body FROM tasks ORDER BY id'):
                    task = json.loads(row[0])
                    eligible = task['state'] == 'queued' or state['auto'] and task['state'] == 'created'
                    if eligible and task['map_id'] == state['map_id']:
                        candidates.append(task)
                if not candidates:
                    return
                task = min(candidates, key=lambda t: (t['priority'] != 'urgent', t['id']))
                try:
                    self.start(state, task)
                except ValueError as error:
                    event(task, 'failed', str(error))
            else:
                task = self.task(state['active'])
                if task['state'] == 'paused':
                    return
                if task['state'] == 'accepted':
                    event(task, 'running', '仿真车开始执行')
                self.advance(state, task, dt)
            self.store_task(task)
            self.store_state(state)

    def advance(self, state, task, dt):
        route = task['route']
        task['distance'] = min(route['length'], task['distance'] + .9*dt)
        if task['distance'] >= route['length']:
            state.update(active=None, station=task['stops'][-1], position=route['points'][-1])
            task['progress'] = 100
            event(task, 'done', '已到达终点')
            return
        task['progress'] = round(100*task['distance']/route['length'], 1)
        remaining = task['distance']
        for a, b, segment in zip(route['points'], route['points'][1:], route['segments']):
            length = segment['length']
            if remaining <= length:
                ratio = remaining/length
                heading = math.atan2(b[1]-a[1], b[0]-a[0])
                if segment['reverse']:
                    heading += math.pi
                state.update(station=None, heading=heading, position=[a[i]+ratio*(b[i]-a[i]) for i in range(2)])
                return
            remaining -= length

    def map_snapshot(self):
        with self.lock:
            state = self.state()
            maps = [{'id': row[0], 'name': row[1]} for row in self.db.execute(
                'SELECT id,name FROM maps WHERE id NOT IN (SELECT id FROM archived_maps) ORDER BY id')]
            return {'maps': maps, 'preview_map_id': state.get('preview_map_id', state['map_id'])}

    def snapshot(self):
        with self.lock:
            state = self.state()
            tasks = [json.loads(row[0]) for row in self.db.execute(
                'SELECT body FROM tasks WHERE id=? OR id IN (SELECT id FROM tasks ORDER BY id DESC LIMIT 200) ORDER BY id DESC',
                (state['active'],))]
            for task in tasks:
                if task['id'] != state['active']:
                    task.pop('route', None)
            return {**self.map_snapshot(), 'sim': state, 'tasks': tasks}
