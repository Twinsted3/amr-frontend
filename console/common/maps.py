"""Read the two SMAP path representations present in the supplied maps."""

import heapq
import math
import re


def point(value):
    if not isinstance(value, dict):
        raise ValueError('点位缺少坐标')
    x, y = value.get('x'), value.get('y')
    if any(type(v) not in (int, float) or not math.isfinite(v) or abs(v) > 1e6 for v in (x, y)):
        raise ValueError('点位坐标无效')
    return [x, y]


def list_field(document, key, limit):
    items = document.get(key, [])
    if not isinstance(items, list) or len(items) > limit:
        raise ValueError(f'{key} 格式或数量无效')
    if any(not isinstance(item, dict) for item in items):
        raise ValueError(f'{key} 条目必须是对象')
    return items


def curve(start, end, a, b):
    return [
        [(1-t)**3*p + 3*(1-t)**2*t*q + 3*(1-t)*t*t*r + t**3*s
         for p, q, r, s in zip(start, a, b, end)]
        for t in (i/24 for i in range(25))
    ]


def parse_map(document):
    if not isinstance(document, dict) or not isinstance(document.get('header'), dict):
        raise ValueError('请选择带 header 的 SMAP 文件')
    name = document['header'].get('mapName')
    if not isinstance(name, str) or not name.strip() or len(name) > 120:
        raise ValueError('地图名称缺失或过长')
    stations = {}
    for entry in list_field(document, 'advancedPointList', 10000):
        key = entry.get('instanceName')
        if not isinstance(key, str) or not key.strip() or len(key) > 120 or key in stations:
            raise ValueError('站点名称缺失、过长或重复')
        stations[key] = point(entry.get('pos'))
    if not stations:
        raise ValueError('地图没有可用站点')
    background = [point(item) for item in list_field(document, 'normalPosList', 250000)]
    edges = []
    for entry in list_field(document, 'advancedCurveList', 20000):
        start, end = entry.get('startPos'), entry.get('endPos')
        if not isinstance(start, dict) or not isinstance(end, dict):
            raise ValueError('曲线路径缺少起终点')
        a, b = start.get('instanceName'), end.get('instanceName')
        if not isinstance(a, str) or not isinstance(b, str) or a not in stations or b not in stations:
            raise ValueError('曲线路径引用未知站点')
        controls = entry.get('controlPos1'), entry.get('controlPos2')
        path = curve(stations[a], stations[b], *map(point, controls)) if all(c is not None for c in controls) else [stations[a], stations[b]]
        edges.append({'from': a, 'to': b, 'points': path, 'motion': 'forward'})
    for entry in list_field(document, 'advancedLineList', 20000):
        line = entry.get('line')
        if not isinstance(line, dict) or entry.get('curveType', 'line') != 'line':
            raise ValueError('advancedLineList 仅支持当前样本中的直线格式')
        start, end = point(line.get('startPos')), point(line.get('endPos'))
        ends = []
        for p in (start, end):
            near = [key for key, pos in stations.items() if math.dist(p, pos) <= .02]
            if len(near) != 1:
                raise ValueError('直线路径端点无法唯一匹配站点')
            ends.append(near[0])
        edges.append({'from': ends[0], 'to': ends[1], 'points': [stations[ends[0]], stations[ends[1]]],
                      'motion': entry.get('direction', 'forward')})
    for edge in edges:
        edge['length'] = sum(math.dist(a, b) for a, b in zip(edge['points'], edge['points'][1:]))
        if edge['from'] == edge['to'] or edge['length'] <= 0:
            raise ValueError('存在零长度路径')
    return {'name': name.strip(), 'stations': stations, 'background': background, 'edges': edges}


def shortest_edges(geometry, start, end):
    stations = geometry['stations']
    if start not in stations or end not in stations:
        raise ValueError('任务引用了未知站点')
    outgoing = {}
    for edge in geometry['edges']:
        outgoing.setdefault(edge['from'], []).append(edge)
    distance = {start: 0.0}
    previous = {}
    queue = [(0.0, start)]
    while queue:
        cost, node = heapq.heappop(queue)
        if cost != distance[node]:
            continue
        if node == end:
            edges = []
            while node != start:
                edge = previous[node]
                edges.append(edge)
                node = edge['from']
            return edges[::-1]
        for edge in outgoing.get(node, []):
            target = edge['to']
            candidate = cost + edge['length']
            if candidate < distance.get(target, math.inf):
                distance[target] = candidate
                previous[target] = edge
                heapq.heappush(queue, (candidate, target))
    raise ValueError(f'{start} 到 {end} 没有可通行的有向路径')


def plan(geometry, stops):
    edges = []
    for a, b in zip(stops, stops[1:]):
        edges.extend(shortest_edges(geometry, a, b))
    points = [geometry['stations'][stops[0]]]
    segments = []
    for edge in edges:
        for p in edge['points'][1:]:
            length = math.dist(points[-1], p)
            if length:
                segments.append({'length': length, 'reverse': edge['motion'] == 'backward'})
                points.append(p)
    return {'points': points, 'segments': segments, 'length': sum(s['length'] for s in segments)}


def export_name(name):
    return re.sub(r'[^\w.-]', '_', name)[:90] + '.smap'
