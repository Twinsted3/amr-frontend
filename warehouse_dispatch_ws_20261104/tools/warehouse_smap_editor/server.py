#!/usr/bin/env python3
"""Local HTTP server for the SMAP/Open-RMF route editor."""

from __future__ import annotations

import argparse
from io import BytesIO
import json
import shutil
import sys
import threading
import webbrowser
from datetime import datetime
from http import HTTPStatus
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlparse

import numpy as np
from PIL import Image
import yaml

from smap_rmf import MapValidationError, smap_to_rmf, topology_summary, validate_smap


HERE = Path(__file__).resolve().parent
WORKSPACE = HERE.parents[1]
sys.path.insert(0, str(WORKSPACE / "src" / "warehouse_sim"))
from warehouse_sim.route_graph import RouteError, RouteGraph
from warehouse_sim.layout import obstacle_rectangles
DEFAULT_SMAP = WORKSPACE / "src" / "warehouse_sim" / "maps" / "warehouse.smap"
DEFAULT_RMF = WORKSPACE / "src" / "warehouse_sim" / "maps" / "warehouse.building.yaml"


def slam_background(app):
    if app.smap_path != DEFAULT_SMAP:
        return None
    image_path = app.smap_path.parent / 'warehouse_slam_probability.pgm'
    yaml_path = app.smap_path.parent / 'warehouse_slam.yaml'
    if not image_path.is_file() or not yaml_path.is_file():
        return None
    info = yaml.safe_load(yaml_path.read_text(encoding='utf-8'))
    with Image.open(image_path) as source:
        width, height = source.size
    return {
        'url': '/api/slam-probability.png', 'origin': info['origin'][:2],
        'resolution': info['resolution'], 'width': width, 'height': height,
    }


class EditorHandler(SimpleHTTPRequestHandler):
    server_version = "SmapRmfEditor/1.0"

    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(HERE / "web"), **kwargs)

    @property
    def app(self):
        return self.server.app

    def log_message(self, fmt, *args):
        sys.stdout.write(f"[{self.log_date_time_string()}] {fmt % args}\n")

    def _json(self, value, status=HTTPStatus.OK):
        payload = json.dumps(value, ensure_ascii=False).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(payload)))
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        self.wfile.write(payload)

    def _read_json(self):
        try:
            length = int(self.headers.get("Content-Length", "0"))
        except ValueError as error:
            raise MapValidationError("无效的 Content-Length") from error
        if length <= 0 or length > 50 * 1024 * 1024:
            raise MapValidationError("请求体为空或超过 50 MB")
        try:
            return json.loads(self.rfile.read(length).decode("utf-8"))
        except (UnicodeDecodeError, json.JSONDecodeError) as error:
            raise MapValidationError(f"JSON 解析失败: {error}") from error

    def do_GET(self):
        route = urlparse(self.path).path
        if route == "/api/slam-probability.png":
            try:
                background = slam_background(self.app)
                if background is None:
                    self.send_error(HTTPStatus.NOT_FOUND)
                    return
                image_path = self.app.smap_path.parent / 'warehouse_slam_probability.pgm'
                gray = np.asarray(Image.open(image_path).convert('L'), dtype=np.uint8)
                probability = (254-gray.astype(np.float32))*100/254
                rgba = np.empty((*gray.shape, 4), dtype=np.uint8)
                rgba[:, :, :3] = (205, 218, 230)
                rgba[:, :, 3] = np.clip((probability-40)*11, 0, 230).astype(np.uint8)
                output = BytesIO()
                Image.fromarray(rgba, 'RGBA').save(output, format='PNG')
                payload = output.getvalue()
                self.send_response(HTTPStatus.OK)
                self.send_header('Content-Type', 'image/png')
                self.send_header('Content-Length', str(len(payload)))
                self.send_header('Cache-Control', 'no-store')
                self.end_headers()
                self.wfile.write(payload)
            except Exception as error:
                self.send_error(HTTPStatus.INTERNAL_SERVER_ERROR, str(error))
            return
        if route == "/api/map":
            try:
                document = json.loads(self.app.smap_path.read_text(encoding="utf-8"))
                self._json({
                    "map": document,
                    "summary": topology_summary(document),
                    "map_path": str(self.app.smap_path),
                    "rmf_path": str(self.app.rmf_path),
                    "slam_background": slam_background(self.app),
                    "warehouse_obstacles": [
                        {"x": x, "y": y, "width": width, "height": height}
                        for x, y, width, height in obstacle_rectangles()
                    ] if self.app.smap_path == DEFAULT_SMAP else [],
                })
            except Exception as error:
                self._json({"error": str(error)}, HTTPStatus.INTERNAL_SERVER_ERROR)
            return
        if route == "/api/status":
            self._json({
                "ok": True,
                "map_exists": self.app.smap_path.exists(),
                "rmf_exists": self.app.rmf_path.exists(),
            })
            return
        super().do_GET()

    def do_POST(self):
        route = urlparse(self.path).path
        if route != "/api/save":
            self._json({"error": "not found"}, HTTPStatus.NOT_FOUND)
            return
        try:
            request = self._read_json()
            document = request.get("map") if isinstance(request, dict) else None
            if not isinstance(document, dict):
                raise MapValidationError("请求中缺少 map 对象")
            validate_smap(document)
            try:
                RouteGraph(document=document)
            except RouteError as error:
                raise MapValidationError(f"路线不可执行：{error}") from error

            timestamp = datetime.now().strftime("%Y%m%d-%H%M%S-%f")
            backup_dir = self.app.smap_path.parent / ".smap_editor_backups"
            backup_dir.mkdir(parents=True, exist_ok=True)
            backup = backup_dir / f"{self.app.smap_path.stem}-{timestamp}.smap"
            rmf_backup = backup_dir / f"{self.app.rmf_path.stem}-{timestamp}.yaml"
            if self.app.smap_path.exists():
                shutil.copy2(self.app.smap_path, backup)
            if self.app.rmf_path.exists():
                shutil.copy2(self.app.rmf_path, rmf_backup)

            from smap_rmf import atomic_json

            atomic_json(self.app.smap_path, document)
            rmf_result = smap_to_rmf(document, self.app.rmf_path)
            self._json({
                "ok": True,
                "summary": topology_summary(document),
                "rmf": rmf_result,
                "backup": str(backup),
                "rmf_backup": str(rmf_backup),
            })
        except MapValidationError as error:
            self._json({"error": str(error)}, HTTPStatus.BAD_REQUEST)
        except Exception as error:
            self._json({"error": f"保存失败: {error}"}, HTTPStatus.INTERNAL_SERVER_ERROR)


class EditorServer(ThreadingHTTPServer):
    daemon_threads = True

    def __init__(self, address, handler, app):
        self.app = app
        super().__init__(address, handler)


def parse_args():
    parser = argparse.ArgumentParser(description="Edit RoboShop SMAP stations and paths in a browser")
    parser.add_argument("--map", dest="smap_path", type=Path, default=DEFAULT_SMAP)
    parser.add_argument("--rmf", dest="rmf_path", type=Path, default=DEFAULT_RMF)
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=8765)
    parser.add_argument("--no-browser", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    args.smap_path = args.smap_path.resolve()
    args.rmf_path = args.rmf_path.resolve()
    if not args.smap_path.is_file():
        print(f"SMAP 文件不存在: {args.smap_path}", file=sys.stderr)
        return 2
    if not args.rmf_path.is_file():
        print(f"RMF building 文件不存在: {args.rmf_path}", file=sys.stderr)
        return 2
    try:
        validate_smap(json.loads(args.smap_path.read_text(encoding="utf-8")))
    except Exception as error:
        print(f"SMAP 校验失败: {error}", file=sys.stderr)
        return 2

    server = EditorServer((args.host, args.port), EditorHandler, args)
    url = f"http://{args.host}:{server.server_port}/"
    print("SMAP / Open-RMF 路网编辑器已启动")
    print(f"地址: {url}")
    print(f"SMAP: {args.smap_path}")
    print(f"RMF:  {args.rmf_path}")
    print("按 Ctrl+C 停止")
    if not args.no_browser:
        threading.Timer(0.4, lambda: webbrowser.open(url)).start()
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n已停止")
    finally:
        server.server_close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
