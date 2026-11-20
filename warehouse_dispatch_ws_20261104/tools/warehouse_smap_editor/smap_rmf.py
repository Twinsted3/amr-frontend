#!/usr/bin/env python3
"""Validation and Open-RMF conversion helpers for RoboShop SMAP maps."""

from __future__ import annotations

import copy
import json
import math
import os
import tempfile
from pathlib import Path
from typing import Any

import yaml


RMF_SCALE = 1.0
RMF_OFFSET_X = 0.0
RMF_OFFSET_Y = 0.0


class MapValidationError(ValueError):
    pass


def smap_to_rmf_xy(x: float, y: float) -> tuple[float, float]:
    return x * RMF_SCALE + RMF_OFFSET_X, y * RMF_SCALE + RMF_OFFSET_Y


def rmf_to_smap_xy(x: float, y: float) -> tuple[float, float]:
    return (x - RMF_OFFSET_X) / RMF_SCALE, (y - RMF_OFFSET_Y) / RMF_SCALE


def atomic_json(path: Path, value: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as stream:
            json.dump(value, stream, ensure_ascii=False, indent=2)
            stream.write("\n")
        os.replace(temporary, path)
    except Exception:
        try:
            os.unlink(temporary)
        except FileNotFoundError:
            pass
        raise


def atomic_yaml(path: Path, value: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as stream:
            yaml.safe_dump(value, stream, allow_unicode=True, sort_keys=False)
        os.replace(temporary, path)
    except Exception:
        try:
            os.unlink(temporary)
        except FileNotFoundError:
            pass
        raise


def _number(value: Any, label: str) -> float:
    if isinstance(value, bool) or not isinstance(value, (int, float)) or not math.isfinite(value):
        raise MapValidationError(f"{label} 必须是有限数字")
    return float(value)


def validate_smap(document: dict[str, Any]) -> dict[str, Any]:
    """Validate and normalize endpoint coordinates without discarding vendor fields."""
    if not isinstance(document, dict):
        raise MapValidationError("SMAP 顶层必须是 JSON 对象")
    for key in ("header", "normalPosList", "advancedPointList", "advancedCurveList"):
        if key not in document:
            raise MapValidationError(f"SMAP 缺少 {key}")
    points = document["advancedPointList"]
    curves = document["advancedCurveList"]
    if not isinstance(points, list) or not isinstance(curves, list):
        raise MapValidationError("advancedPointList 和 advancedCurveList 必须是数组")

    by_name: dict[str, dict[str, Any]] = {}
    for index, point in enumerate(points):
        if not isinstance(point, dict):
            raise MapValidationError(f"站点 #{index + 1} 不是对象")
        name = point.get("instanceName")
        if not isinstance(name, str) or not name.strip():
            raise MapValidationError(f"站点 #{index + 1} 名称为空")
        if name in by_name:
            raise MapValidationError(f"站点名称重复: {name}")
        pos = point.get("pos")
        if not isinstance(pos, dict):
            raise MapValidationError(f"站点 {name} 缺少 pos")
        pos["x"] = round(_number(pos.get("x"), f"{name}.x"), 6)
        pos["y"] = round(_number(pos.get("y"), f"{name}.y"), 6)
        if "dir" in point:
            point["dir"] = _number(point["dir"], f"{name}.dir")
        by_name[name] = point

    seen_curves: set[tuple[str, str]] = set()
    for index, curve in enumerate(curves):
        if not isinstance(curve, dict):
            raise MapValidationError(f"路径 #{index + 1} 不是对象")
        start = curve.get("startPos", {}).get("instanceName")
        end = curve.get("endPos", {}).get("instanceName")
        if start not in by_name or end not in by_name:
            raise MapValidationError(f"路径 #{index + 1} 引用了不存在的站点: {start} -> {end}")
        if start == end:
            raise MapValidationError(f"路径不能首尾相同: {start}")
        if (start, end) in seen_curves:
            raise MapValidationError(f"重复的有向路径: {start} -> {end}")
        seen_curves.add((start, end))
        curve["instanceName"] = f"{start}-{end}"
        curve.setdefault("className", "DegenerateBezier")
        curve["startPos"] = {
            "instanceName": start,
            "pos": copy.deepcopy(by_name[start]["pos"]),
        }
        curve["endPos"] = {
            "instanceName": end,
            "pos": copy.deepcopy(by_name[end]["pos"]),
        }
        sx, sy = by_name[start]["pos"]["x"], by_name[start]["pos"]["y"]
        ex, ey = by_name[end]["pos"]["x"], by_name[end]["pos"]["y"]
        curve.setdefault("controlPos1", {"x": sx + (ex - sx) / 3, "y": sy + (ey - sy) / 3})
        curve.setdefault("controlPos2", {"x": sx + 2 * (ex - sx) / 3, "y": sy + 2 * (ey - sy) / 3})
        for key in ("controlPos1", "controlPos2"):
            curve[key]["x"] = round(_number(curve[key].get("x"), f"{curve['instanceName']}.{key}.x"), 6)
            curve[key]["y"] = round(_number(curve[key].get("y"), f"{curve['instanceName']}.{key}.y"), 6)
    return document


def _bezier(curve: dict[str, Any], t: float) -> tuple[float, float]:
    p0 = curve["startPos"]["pos"]
    p1 = curve["controlPos1"]
    p2 = curve["controlPos2"]
    p3 = curve["endPos"]["pos"]
    u = 1.0 - t
    x = u**3 * p0["x"] + 3 * u * u * t * p1["x"] + 3 * u * t * t * p2["x"] + t**3 * p3["x"]
    y = u**3 * p0["y"] + 3 * u * u * t * p1["y"] + 3 * u * t * t * p2["y"] + t**3 * p3["y"]
    return x, y


def _curve_groups(curves: list[dict[str, Any]]) -> list[tuple[dict[str, Any], bool]]:
    directed = {
        (c["startPos"]["instanceName"], c["endPos"]["instanceName"]): c for c in curves
    }
    consumed: set[tuple[str, str]] = set()
    groups: list[tuple[dict[str, Any], bool]] = []
    for direction, curve in directed.items():
        if direction in consumed:
            continue
        reverse = (direction[1], direction[0])
        both = reverse in directed
        consumed.add(direction)
        if both:
            consumed.add(reverse)
        groups.append((curve, both))
    return groups


def _remap_geometry(level: dict[str, Any], first_index: int) -> tuple[list[list[Any]], dict[int, int]]:
    old_vertices = level.get("vertices", [])
    referenced: set[int] = set()
    for key in ("walls", "doors", "measurements"):
        for item in level.get(key, []):
            if isinstance(item, list) and len(item) >= 2:
                referenced.update((item[0], item[1]))
    for floor in level.get("floors", []):
        referenced.update(floor.get("vertices", []))
    geometry = []
    remap = {}
    for old_index in sorted(referenced):
        if 0 <= old_index < len(old_vertices):
            remap[old_index] = first_index + len(geometry)
            geometry.append(copy.deepcopy(old_vertices[old_index]))
    return geometry, remap


def _apply_index_remap(level: dict[str, Any], remap: dict[int, int]) -> None:
    for key in ("walls", "doors", "measurements"):
        for item in level.get(key, []):
            item[0] = remap[item[0]]
            item[1] = remap[item[1]]
    for floor in level.get("floors", []):
        floor["vertices"] = [remap[i] for i in floor.get("vertices", [])]


def smap_to_rmf(document: dict[str, Any], building_path: Path) -> dict[str, int]:
    """Replace the RMF navigation topology while preserving walls, floors and layers."""
    validate_smap(document)
    building = yaml.safe_load(building_path.read_text(encoding="utf-8"))
    level_name = next(iter(building["levels"]))
    level = building["levels"][level_name]
    route_vertices: list[list[Any]] = []
    station_index: dict[str, int] = {}

    for point in document["advancedPointList"]:
        x, y = smap_to_rmf_xy(point["pos"]["x"], point["pos"]["y"])
        attributes: dict[str, Any] = {}
        if point.get("className") == "ChargePoint":
            attributes["is_charger"] = [4, True]
        station_index[point["instanceName"]] = len(route_vertices)
        route_vertices.append([round(x, 6), round(y, 6), 0, point["instanceName"], attributes])

    lanes: list[list[Any]] = []
    for curve, bidirectional in _curve_groups(document["advancedCurveList"]):
        start_name = curve["startPos"]["instanceName"]
        end_name = curve["endPos"]["instanceName"]
        chain = [station_index[start_name]]
        p0 = curve["startPos"]["pos"]
        p3 = curve["endPos"]["pos"]
        straight_c1 = (p0["x"] + (p3["x"] - p0["x"]) / 3, p0["y"] + (p3["y"] - p0["y"]) / 3)
        straight_c2 = (p0["x"] + 2 * (p3["x"] - p0["x"]) / 3, p0["y"] + 2 * (p3["y"] - p0["y"]) / 3)
        curved = max(
            math.hypot(curve["controlPos1"]["x"] - straight_c1[0], curve["controlPos1"]["y"] - straight_c1[1]),
            math.hypot(curve["controlPos2"]["x"] - straight_c2[0], curve["controlPos2"]["y"] - straight_c2[1]),
        ) > 0.02
        if curved:
            for t in (1 / 3, 2 / 3):
                sx, sy = _bezier(curve, t)
                x, y = smap_to_rmf_xy(sx, sy)
                chain.append(len(route_vertices))
                route_vertices.append([round(x, 6), round(y, 6), 0, "", {}])
        chain.append(station_index[end_name])
        attributes = {
            "bidirectional": [4, bool(bidirectional)],
            "graph_idx": [2, 0],
            "speed_limit": [3, 0.7],
        }
        for a, b in zip(chain, chain[1:]):
            lanes.append([a, b, copy.deepcopy(attributes)])

    geometry, remap = _remap_geometry(level, len(route_vertices))
    _apply_index_remap(level, remap)
    level["vertices"] = route_vertices + geometry
    level["lanes"] = lanes
    building.setdefault("graphs", {}).setdefault(0, {})["name"] = "default_smap_routes"
    atomic_yaml(building_path, building)
    _write_nav_graph(building, building_path.parent / "nav_graphs" / "0.yaml")
    _write_direction_layer(building, building_path.parent / "route_directions.png")
    return {
        "stations": len(station_index),
        "directed_paths": len(document["advancedCurveList"]),
        "rmf_lanes": len(lanes),
    }


def _write_nav_graph(building: dict[str, Any], output_path: Path) -> None:
    """Generate the graph YAML consumed by RMF fleet adapters without ROS tools."""
    level_name = next(iter(building["levels"]))
    level = building["levels"][level_name]
    source_vertices = level.get("vertices", [])
    source_lanes = level.get("lanes", [])
    # Keep named stations even when the user has not connected them yet. This
    # makes newly placed stations visible to RMF tooling while they are being
    # laid out, instead of silently dropping isolated vertices.
    used = sorted(
        {index for lane in source_lanes for index in lane[:2]}
        | {index for index, item in enumerate(source_vertices) if len(item) > 3 and str(item[3]).strip()}
    )
    compact = {old: new for new, old in enumerate(used)}
    graph_vertices = []
    for old_index in used:
        item = source_vertices[old_index]
        attributes = item[4] if len(item) > 4 else {}
        vertex_attributes = {"name": item[3] if len(item) > 3 else ""}
        if bool(_typed_value(attributes, "is_charger", False)):
            vertex_attributes["is_charger"] = True
        graph_vertices.append([float(item[0]), float(item[1]), vertex_attributes])

    graph_lanes = []
    for lane in source_lanes:
        a, b = compact[lane[0]], compact[lane[1]]
        attributes = lane[2] if len(lane) > 2 else {}
        lane_attributes = {}
        speed_limit = _typed_value(attributes, "speed_limit", None)
        if speed_limit is not None:
            lane_attributes["speed_limit"] = float(speed_limit)
        graph_lanes.append([a, b, copy.deepcopy(lane_attributes)])
        if bool(_typed_value(attributes, "bidirectional", False)):
            graph_lanes.append([b, a, copy.deepcopy(lane_attributes)])

    graph = {
        "building_name": building.get("name", "wide_task_demo"),
        "doors": {},
        "levels": {level_name: {"lanes": graph_lanes, "vertices": graph_vertices}},
        "lifts": {},
        "offset": [0, 0],
    }
    atomic_yaml(output_path, graph)


def _write_direction_layer(building: dict[str, Any], output_path: Path) -> None:
    """Refresh the arrow overlay shown inside Traffic Editor."""
    try:
        from PIL import Image, ImageDraw
    except ImportError:
        return
    level = building["levels"][next(iter(building["levels"]))]
    width_m = float(level.get("x_meters", 66.0))
    height_m = float(level.get("y_meters", 33.0))
    pixels_per_meter = 10.0
    image = Image.new("L", (round(width_m * pixels_per_meter), round(height_m * pixels_per_meter)), 255)
    painter = ImageDraw.Draw(image)
    vertices = level.get("vertices", [])

    def pixel(x: float, y: float) -> tuple[int, int]:
        return round(x * pixels_per_meter), round((height_m - y) * pixels_per_meter)

    def arrow(x: float, y: float, ux: float, uy: float, side: float) -> None:
        right_x, right_y = uy, -ux
        x += right_x * side
        y += right_y * side
        length = 1.4
        sx, sy = x - ux * length / 2, y - uy * length / 2
        tx, ty = x + ux * length / 2, y + uy * length / 2
        lx, ly = tx - ux * 0.52 - uy * 0.40, ty - uy * 0.52 + ux * 0.40
        rx, ry = tx - ux * 0.52 + uy * 0.40, ty - uy * 0.52 - ux * 0.40
        painter.line((pixel(sx, sy), pixel(tx, ty)), fill=0, width=2)
        painter.line((pixel(lx, ly), pixel(tx, ty), pixel(rx, ry)), fill=0, width=2)

    for lane in level.get("lanes", []):
        a, b = vertices[lane[0]], vertices[lane[1]]
        dx, dy = float(b[0]) - float(a[0]), float(b[1]) - float(a[1])
        distance = math.hypot(dx, dy)
        if distance < 1e-9:
            continue
        ux, uy = dx / distance, dy / distance
        x, y = (float(a[0]) + float(b[0])) / 2, (float(a[1]) + float(b[1])) / 2
        bidirectional = bool(_typed_value(lane[2] if len(lane) > 2 else {}, "bidirectional", False))
        if bidirectional:
            arrow(x, y, ux, uy, 2.55)
            arrow(x, y, -ux, -uy, -2.55)
        else:
            arrow(x, y, ux, uy, 2.55)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    image.save(output_path)


def _typed_value(attributes: dict[str, Any], key: str, default: Any) -> Any:
    value = attributes.get(key, default)
    return value[1] if isinstance(value, list) and len(value) > 1 else value


def rmf_to_smap(building_path: Path, smap_path: Path) -> dict[str, int]:
    """Import Traffic Editor vertices/lanes as straight SMAP paths."""
    document = json.loads(smap_path.read_text(encoding="utf-8"))
    building = yaml.safe_load(building_path.read_text(encoding="utf-8"))
    level = building["levels"][next(iter(building["levels"]))]
    vertices = level.get("vertices", [])
    lanes = level.get("lanes", [])
    used = sorted(
        {index for lane in lanes for index in lane[:2]}
        | {index for index, item in enumerate(vertices) if len(item) > 3 and str(item[3]).strip()}
    )
    old_points = {p["instanceName"]: p for p in document.get("advancedPointList", [])}
    assigned: dict[int, str] = {}
    used_names: set[str] = set()
    auto_counter = 1

    for index in used:
        raw_name = str(vertices[index][3]).strip() if len(vertices[index]) > 3 else ""
        name = raw_name
        while not name or name in used_names:
            name = f"LM_AUTO_{auto_counter:03d}"
            auto_counter += 1
        assigned[index] = name
        used_names.add(name)

    points = []
    for index in used:
        vertex = vertices[index]
        name = assigned[index]
        x, y = rmf_to_smap_xy(float(vertex[0]), float(vertex[1]))
        old = copy.deepcopy(old_points.get(name, {}))
        old["className"] = old.get("className", "ChargePoint" if _typed_value(vertex[4] if len(vertex) > 4 else {}, "is_charger", False) else "LocationMark")
        old["instanceName"] = name
        old["pos"] = {"x": round(x, 6), "y": round(y, 6)}
        old.setdefault("dir", 0.0)
        old.setdefault("property", [{"key": "spin", "type": "bool", "value": "ZmFsc2U=", "boolValue": False}])
        old.setdefault("ignoreDir", True)
        points.append(old)

    curves = []
    for lane in lanes:
        a, b = lane[:2]
        attributes = lane[2] if len(lane) > 2 else {}
        directions = [(a, b)]
        if bool(_typed_value(attributes, "bidirectional", False)):
            directions.append((b, a))
        for start_index, end_index in directions:
            start_name, end_name = assigned[start_index], assigned[end_index]
            sx, sy = rmf_to_smap_xy(float(vertices[start_index][0]), float(vertices[start_index][1]))
            ex, ey = rmf_to_smap_xy(float(vertices[end_index][0]), float(vertices[end_index][1]))
            curves.append({
                "className": "DegenerateBezier",
                "instanceName": f"{start_name}-{end_name}",
                "startPos": {"instanceName": start_name, "pos": {"x": round(sx, 6), "y": round(sy, 6)}},
                "endPos": {"instanceName": end_name, "pos": {"x": round(ex, 6), "y": round(ey, 6)}},
                "controlPos1": {"x": round(sx + (ex - sx) / 3, 6), "y": round(sy + (ey - sy) / 3, 6)},
                "controlPos2": {"x": round(sx + 2 * (ex - sx) / 3, 6), "y": round(sy + 2 * (ey - sy) / 3, 6)},
                "property": [
                    {"key": "direction", "type": "int", "value": "MA==", "int32Value": 0},
                    {"key": "movestyle", "type": "int", "value": "MA==", "int32Value": 0},
                ],
            })

    document["advancedPointList"] = points
    document["advancedCurveList"] = curves
    validate_smap(document)
    atomic_json(smap_path, document)
    return {"stations": len(points), "directed_paths": len(curves), "rmf_lanes": len(lanes)}


def topology_summary(document: dict[str, Any]) -> dict[str, int]:
    points = document.get("advancedPointList", [])
    curves = document.get("advancedCurveList", [])
    pairs = {(c["startPos"]["instanceName"], c["endPos"]["instanceName"]) for c in curves}
    two_way = sum(1 for a, b in pairs if a < b and (b, a) in pairs)
    return {
        "stations": len(points),
        "directed_paths": len(curves),
        "two_way_paths": two_way,
        "one_way_paths": len(curves) - two_way * 2,
    }
