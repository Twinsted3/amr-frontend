"""Run the laptop console using Python's standard library."""

import argparse
import errno
import json
import os
from http import HTTPStatus
from http.client import HTTPException
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import re
import socket
import sqlite3
import threading
import time
from urllib.parse import quote, urlsplit
import webbrowser

from common.dispatch import Dispatch
from common.maps import export_name
from common.telemetry import Telemetry, invalid_constant
from common.views import DIST, NOT_FOUND, find_page, render_page, web_asset


ROOT = Path(__file__).resolve().parent
MAX_BODY = 12_000_000
MAX_REPLAY = 32_000_000
MAP_CAPABILITIES = {'archive': True, 'versioned_save': True}
PORTS = {'field': 8081, 'sim': 8082}
DB_IDS = {'field': 0x414D5201, 'sim': 0x414D5202, 'lightweight': 0x414D5203}


def claim_database(path, mode):
    """Claim only an empty store or one already owned by this deployment."""
    with sqlite3.connect(path) as db:
        db.execute('BEGIN IMMEDIATE')
        current = db.execute('PRAGMA application_id').fetchone()[0]
        if current == DB_IDS[mode]:
            return
        if current or db.execute('SELECT 1 FROM sqlite_master LIMIT 1').fetchone():
            raise ValueError('数据库属于其他部署或旧版混合控制台，请使用独立数据库')
        db.execute(f'PRAGMA application_id = {DB_IDS[mode]}')


def simulation_route(path):
    return (path == '/api/fleet' or path.startswith('/api/fleet/')
            or path == '/api/telemetry/source')


def open_replay(path):
    with path.open('rb') as source:
        data = source.read(MAX_REPLAY + 1)
    if len(data) > MAX_REPLAY:
        raise ValueError('联测回放文件超过 32 MB')
    document = json.loads(data, parse_constant=invalid_constant)
    if (not isinstance(document, dict) or type(document.get('schema_version')) is not int
            or document['schema_version'] != 1 or document.get('source') != 'LIGHTWEIGHT_BENCHMARK'
            or not isinstance(document.get('frames'), list) or not document['frames']):
        raise ValueError('联测回放文件缺少支持的版本或有效时间帧')
    return data


class ConsoleServer(ThreadingHTTPServer):
    # Windows can otherwise allow multiple Python processes on the same address.
    allow_reuse_address = os.name != 'nt'

    def server_bind(self):
        if os.name == 'nt':
            self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_EXCLUSIVEADDRUSE, 1)
        super().server_bind()


class Handler(BaseHTTPRequestHandler):
    def log_message(self, fmt, *args):
        if args and '" 2' in (fmt % args):
            return
        super().log_message(fmt, *args)

    def allowed(self):
        port = self.server.server_port
        hosts = (f'127.0.0.1:{port}', f'localhost:{port}')
        origin = self.headers.get('Origin')
        return self.headers.get('Host') in hosts and (not origin or origin in tuple(f'http://{host}' for host in hosts))

    def reply(self, data, status=200, media='application/json; charset=utf-8', attachment=None, embedded=False):
        body = data if isinstance(data, bytes) else json.dumps(data, ensure_ascii=False, allow_nan=False).encode()
        self.send_response(status)
        self.send_header('Content-Type', media)
        self.send_header('Content-Length', str(len(body)))
        self.send_header('Cache-Control', 'no-store')
        self.send_header('X-Content-Type-Options', 'nosniff')
        ancestors = "'self'" if embedded else "'none'"
        self.send_header('Content-Security-Policy',
                         f"default-src 'self'; frame-ancestors {ancestors}; style-src 'self'; img-src 'self' data:")
        if attachment:
            self.send_header('Content-Disposition', f"attachment; filename*=UTF-8''{quote(attachment)}")
        try:
            self.end_headers()
            self.wfile.write(body)
        except (BrokenPipeError, ConnectionResetError, ConnectionAbortedError):
            # Page navigation can close a polling request before its response.
            pass

    def do_GET(self):
        if not self.allowed():
            self.reply({'error': '请通过本机地址访问'}, 403)
            return
        path = urlsplit(self.path).path
        dispatch = self.server.dispatch
        try:
            if self.server.fleet is None and simulation_route(path):
                self.reply({'error': '接口不存在'}, 404)
                return
            if path == '/api/state':
                state = {**dispatch.map_snapshot(), 'map_capabilities': MAP_CAPABILITIES,
                         'vehicles': self.server.vehicles.snapshot()}
                if getattr(self.server.fleet, 'lightweight', False):
                    with self.server.fleet.lock:
                        state['running_map_id'] = self.server.fleet.map_id
                if self.server.telemetry:
                    state['telemetry'] = self.server.telemetry.snapshot()
                self.reply(state)
                return
            if path == '/api/health':
                self.reply({'ready': True, 'pid': os.getpid(), 'mode': self.server.mode,
                            'map_capabilities': MAP_CAPABILITIES})
                return
            if path == '/api/fleet/state':
                self.reply(self.server.fleet.snapshot())
                return
            if path == '/api/fleet/replay':
                replay = getattr(self.server, 'fleet_replay', None)
                if replay is None:
                    self.reply({'error': '当前控制台尚未载入联测回放文件'}, 404)
                else:
                    self.reply(replay)
                return
            if path == '/api/fleet/scenario' and getattr(self.server.fleet, 'lightweight', False):
                if self.server.fleet.batches:
                    self.reply({'batches': self.server.fleet.batches})
                else:
                    self.reply({'error': '当前未启用百台联测场景'}, 404)
                return
            if path == '/api/fleet/config':
                self.reply(self.server.fleet.config())
                return
            if path == '/api/fleet/map':
                try:
                    self.reply(self.server.fleet.map())
                except (OSError, HTTPException, ValueError, RecursionError):
                    self.reply({'error': '暂时无法读取仿真地图'}, 503)
                return
            match = re.fullmatch(r'/api/maps/(\d+)(/file)?', path)
            if match:
                with dispatch.lock:
                    value = dispatch.map(int(match[1]), raw=bool(match[2]))
                name = export_name(value['header']['mapName']) if match[2] else None
                self.reply(value, attachment=name)
                return
            editor_map = re.fullmatch(r'/api/maps/([1-9][0-9]{0,17})/edit', path)
            if editor_map:
                with dispatch.lock:
                    document = dispatch.map(int(editor_map[1]), raw=True)
                self.reply({'map': document, 'map_path': document['header']['mapName'],
                            'versioned_save': True, 'can_use': not (self.server.fleet and self.server.fleet.address)})
                return
            editor_assets = {'index.html': 'text/html', 'app.js': 'application/javascript', 'style.css': 'text/css'}
            if path.startswith('/smap-editor/') and path.removeprefix('/smap-editor/') in editor_assets:
                name = path.removeprefix('/smap-editor/')
                content = (DIST/'smap-editor'/name).read_text(encoding='utf-8')
                if name == 'index.html':
                    if self.server.mode == 'field' or getattr(self.server.fleet, 'lightweight', False):
                        content = content.replace('Gazebo 世界坐标', '地图坐标').replace('Gazebo 实体', '地图实体')
                    if getattr(self.server.fleet, 'lightweight', False):
                        content = content.replace('保存并使用', '保存并应用')
                self.reply(content.encode(), media=editor_assets[name]+'; charset=utf-8', embedded=True)
                return
            asset = web_asset(self.server.mode, path)
            if asset:
                file, media = asset
                self.reply(file.read_bytes(), media=media+'; charset=utf-8')
                return
            if path.startswith('/api/'):
                self.reply({'error': '接口不存在'}, 404)
                return
            page, record_id = find_page('/' if path == '/index.html' else path.rstrip('/') or '/', self.server.mode)
            try:
                with dispatch.lock:
                    if page[0] == 'map-detail':
                        dispatch.map(record_id)
                    elif page[0] == 'vehicle-detail' and not self.server.vehicles.exists(record_id):
                        raise ValueError('车辆未登记')
            except ValueError:
                page, record_id = NOT_FOUND, None
            self.reply(render_page(page, record_id, self.server.mode,
                                   lightweight=getattr(self.server.fleet, 'lightweight', False)),
                       404 if page == NOT_FOUND else 200, 'text/html; charset=utf-8')
        except ValueError as error:
            self.reply({'error': str(error)}, 404)

    def do_POST(self):
        received_ns = time.perf_counter_ns()
        if not self.allowed():
            self.reply({'error': '请通过本机地址访问'}, 403)
            return
        if self.headers.get_content_type() != 'application/json':
            self.reply({'error': '请使用 JSON 请求'}, 415)
            return
        path = urlsplit(self.path).path
        dispatch = self.server.dispatch
        try:
            if self.server.fleet is None and simulation_route(path):
                self.reply({'error': '接口不存在'}, 404)
                return
            size = int(self.headers.get('Content-Length', '0'))
            if not 0 < size <= MAX_BODY:
                raise ValueError('请求为空或文件超过 12 MB')
            self.connection.settimeout(10)
            body = json.loads(self.rfile.read(size).decode('utf-8-sig'), parse_constant=invalid_constant)
            if not isinstance(body, dict):
                raise ValueError('请求必须是 JSON 对象')
            if path == '/api/fleet/commands':
                if getattr(self.server.fleet, 'lightweight', False):
                    status, result = self.server.fleet.command(body, received_ns=received_ns)
                else:
                    status, result = self.server.fleet.command(body)
                self.reply(result, status)
                return
            if path == '/api/fleet/config':
                self.reply(self.server.fleet.configure(body.get('url')))
                return
            vehicle_match = re.fullmatch(r'/api/vehicles/(\d+)/(connect|disconnect|remove)', path)
            editor_map = re.fullmatch(r'/api/maps/([1-9][0-9]{0,17})/edit', path)
            delete_map = re.fullmatch(r'/api/maps/([1-9][0-9]{0,17})/archive', path)
            if editor_map:
                use = body.get('use') is True
                if use and getattr(self.server.fleet, 'lightweight', False):
                    fleet = self.server.fleet
                    with fleet.lock:
                        try:
                            fleet.check_idle()
                        except ValueError as error:
                            self.reply({'error': str(error)}, 409)
                            return
                        result = dispatch.save_map_version(int(editor_map[1]), body.get('map'))
                        try:
                            result.update(fleet.apply_map(result['id']))
                        except ValueError as error:
                            self.reply({**result, 'error': f"已保存版本 #{result['id']}，应用失败：{error}"}, 409)
                            return
                elif use and self.server.fleet and self.server.fleet.address:
                    self.reply({'error': '车队换图尚未接通，请先用「保存新版本」保留修改。'}, 409)
                    return
                else:
                    result = dispatch.save_map_version(int(editor_map[1]), body.get('map'), use=use)
            elif path == '/api/field/map-application' and self.server.mode == 'field':
                if type(body.get('id')) is not int:
                    raise ValueError('地图编号无效')
                coordinator = getattr(self.server, 'map_cutover', None)
                if coordinator is None:
                    self.reply({'error': '现场调度与车端地图确认接口尚未接通'}, 409)
                    return
                result = coordinator.apply(body['id'])
            elif delete_map:
                result = dispatch.archive_map(int(delete_map[1]))
            elif vehicle_match:
                result = self.server.vehicles.command(int(vehicle_match[1]), vehicle_match[2], body.get('mode','tcp'))
            elif path == '/api/vehicles':
                result = self.server.vehicles.add(body)
            elif path == '/api/maps':
                result = dispatch.add_map(body.get('document'))
            elif path == '/api/fleet/map-application' and getattr(self.server.fleet, 'lightweight', False):
                if type(body.get('id')) is not int:
                    raise ValueError('地图编号无效')
                try:
                    result = self.server.fleet.apply_map(body['id'])
                except ValueError as error:
                    self.reply({'error': str(error)}, 409)
                    return
            elif path == '/api/map-selection':
                if type(body.get('id')) is not int:
                    raise ValueError('地图编号无效')
                if self.server.fleet and self.server.fleet.address:
                    self.reply({'error': '车队换图尚未接通。当前地图与任务队列保持原状。'}, 409)
                    return
                result = dispatch.select_preview(body['id'])
            elif path == '/api/telemetry/source':
                mode = body.get('mode')
                if mode not in ('sample', 'replay', 'stopped'):
                    raise ValueError('请选择历史样本来源')
                self.server.telemetry.select(mode)
                result = self.server.telemetry.snapshot()
            else:
                self.reply({'error': '接口不存在'}, 404)
                return
            self.reply(result)
        except (ValueError, OverflowError, TimeoutError, RecursionError) as error:
            self.reply({'error': str(error)}, HTTPStatus.BAD_REQUEST)


def main():
    parser = argparse.ArgumentParser(description='AMR 调度控制台')
    parser.add_argument('--mode', choices=PORTS, default='field')
    parser.add_argument('--port', type=int)
    parser.add_argument('--db', type=Path)
    parser.add_argument('--gazebo-url', help='已运行的 ROS/Gazebo 调度接口，例如 http://127.0.0.1:8866')
    parser.add_argument('--lightweight', action='store_true', help='启用控制台内置轻量仿真执行端')
    parser.add_argument('--resume-sim', action='store_true', help='从一致的轻量仿真检查点接续')
    parser.add_argument('--shared-vehicles', type=int, choices=(10, 100), help='启用共享路网的规模场景')
    parser.add_argument('--fleet-benchmark-seed', type=int, help='启用百台跨区叉车联测和可复跑任务种子')
    parser.add_argument('--fleet-replay', type=Path, help='载入百台联测实际记录以供网页回放')
    parser.add_argument('--open-browser', action='store_true', help='启动后打开控制台')
    args = parser.parse_args()
    if args.mode == 'field' and args.gazebo_url is not None:
        parser.error('实车部署不接受仿真服务地址，请明确选择 --mode sim')
    if args.lightweight and (args.mode != 'sim' or args.gazebo_url is not None):
        parser.error('--lightweight 需搭配 --mode sim 且独立于 Gazebo')
    if (args.shared_vehicles or args.resume_sim) and not args.lightweight:
        parser.error('--shared-vehicles 和 --resume-sim 需搭配 --lightweight')
    if args.fleet_benchmark_seed is not None and args.shared_vehicles != 100:
        parser.error('--fleet-benchmark-seed 需搭配 --lightweight --shared-vehicles 100')
    if args.fleet_replay is not None and args.mode != 'sim':
        parser.error('--fleet-replay 需搭配 --mode sim')
    try:
        replay = open_replay(args.fleet_replay) if args.fleet_replay else None
    except (OSError, ValueError) as error:
        parser.error(f'无法载入联测回放：{error}')
    other = 'sim' if args.mode == 'field' else 'field'
    port = PORTS[args.mode] if args.port is None else args.port
    if port == PORTS[other] or not 1 <= port <= 65535:
        parser.error('端口无效或为另一部署的默认端口')
    profile = 'lightweight' if args.lightweight else args.mode
    default_file = (f'forklift-cross-100-{args.fleet_benchmark_seed}.sqlite3' if args.fleet_benchmark_seed is not None
                    else f'shared-{args.shared_vehicles}.sqlite3' if args.shared_vehicles else 'console.sqlite3')
    db_path = (args.db or ROOT/'runtime'/profile/default_file).resolve()
    try:
        server = ConsoleServer(('127.0.0.1', port), Handler)
    except OSError as error:
        if getattr(error, 'winerror', None) in (10013, 10048) or error.errno == errno.EADDRINUSE:
            parser.error(f'端口 {port} 无法独占绑定。请检查占用该端口的进程，关闭旧控制台后重试。')
        raise
    try:
        db_path.parent.mkdir(parents=True, exist_ok=True)
        claim_database(db_path, profile)
        server.mode = args.mode
        server.fleet_replay = replay
        if args.mode == 'sim':
            from sim.fleet import Fleet
            from sim.vehicles import SAMPLE_DIR, SAMPLE_PREFIX, SimVehicles

            server.dispatch = Dispatch(db_path, None if args.lightweight else SAMPLE_DIR, local_executor=False)
            if args.lightweight:
                from sim.lightweight import LightweightFleet
                simulation_db = db_path.with_suffix('.execution.sqlite3') if args.resume_sim else None
                server.fleet = LightweightFleet(server.dispatch, db_path.parent / 'sessions',
                                               args.shared_vehicles, resume_db=simulation_db,
                                               benchmark_seed=args.fleet_benchmark_seed)
            else:
                server.fleet = Fleet(args.gazebo_url, server.dispatch)
            server.telemetry = Telemetry(SAMPLE_DIR, identity_prefix=SAMPLE_PREFIX)
            server.vehicles = SimVehicles(server.dispatch)
        else:
            from field.vehicles import FieldVehicles

            server.dispatch = Dispatch(db_path, None, local_executor=False)
            server.fleet = server.telemetry = None
            server.vehicles = FieldVehicles(server.dispatch)
    except (OSError, sqlite3.Error, ValueError) as error:
        server.server_close()
        parser.error(str(error))
    entry = 'fleet/replay' if replay else 'fleet' if server.fleet else ''
    url = f'http://127.0.0.1:{server.server_port}/{entry}'
    print(f'AMR 控制台 {url}  mode={args.mode}  PID={os.getpid()}  数据库={db_path}', flush=True)
    if args.open_browser:
        threading.Thread(target=webbrowser.open, args=(url,), daemon=True).start()
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        if server.telemetry:
            server.telemetry.stop.set()
        if getattr(server.fleet, 'lightweight', False):
            server.fleet.close()
        server.vehicles.close()
        server.server_close()


if __name__ == '__main__':
    main()
