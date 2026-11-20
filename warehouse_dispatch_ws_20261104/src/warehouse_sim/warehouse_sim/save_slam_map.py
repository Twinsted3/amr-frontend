"""Save Cartographer's occupancy grid aligned to the warehouse world coordinates."""

import argparse
import json
import math
from pathlib import Path
import time
import shutil

import numpy as np
import rclpy
from nav_msgs.msg import OccupancyGrid
from rclpy.node import Node
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from cartographer_ros_msgs.srv import TrajectoryQuery
from rclpy.utilities import remove_ros_args
import yaml
from warehouse_sim.layout import HEIGHT, WIDTH, obstacle_rectangles


def yaw_of(q):
    return math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))


def align_grid(message, map_anchor, spawn, *, include_occupancy=False):
    """Align a known starting base pose and resample onto an axis-aligned grid."""
    tx, ty, yaw = map_anchor
    sx, sy, syaw = spawn
    world_yaw = syaw-yaw
    c, s = math.cos(world_yaw), math.sin(world_yaw)
    world_map_x, world_map_y = sx-c*tx+s*ty, sy-s*tx-c*ty
    origin = message.info.origin
    ox = world_map_x+c*origin.position.x-s*origin.position.y
    oy = world_map_y+s*origin.position.x+c*origin.position.y
    angle = world_yaw+yaw_of(origin.orientation)
    gc, gs = math.cos(angle), math.sin(angle)
    resolution = round(float(message.info.resolution), 6)
    width, height = message.info.width, message.info.height
    corners = [(ox+gc*x-gs*y, oy+gs*x+gc*y)
               for x, y in [(0, 0), (width*resolution, 0),
                            (0, height*resolution), (width*resolution, height*resolution)]]
    min_x = math.floor(min(x for x, _ in corners)/resolution)*resolution
    min_y = math.floor(min(y for _, y in corners)/resolution)*resolution
    cols = math.ceil((max(x for x, _ in corners)-min_x)/resolution)
    rows = math.ceil((max(y for _, y in corners)-min_y)/resolution)
    wx, wy = np.meshgrid(
        min_x+(np.arange(cols)+.5)*resolution,
        min_y+(np.arange(rows)+.5)*resolution)
    dx, dy = wx-ox, wy-oy
    ix = np.floor((gc*dx+gs*dy)/resolution).astype(int)
    iy = np.floor((-gs*dx+gc*dy)/resolution).astype(int)
    valid = (ix >= 0) & (ix < width) & (iy >= 0) & (iy < height)
    source = np.asarray(message.data, dtype=np.int16).reshape(height, width)
    occupancy = np.full((rows, cols), -1, dtype=np.int16)
    occupancy[valid] = source[iy[valid], ix[valid]]
    gray = np.full((rows, cols), 205, dtype=np.uint8)
    gray[(occupancy >= 0) & (occupancy <= 25)] = 254
    gray[occupancy >= 65] = 0
    if include_occupancy:
        return gray, occupancy, resolution, (round(min_x, 6), round(min_y, 6))
    return gray, resolution, (round(min_x, 6), round(min_y, 6))


def navigation_grid(slam_gray, resolution, origin):
    """Keep the measured SLAM map and add known solid fixtures for Nav2."""
    merged = slam_gray.copy()
    rows, cols = merged.shape
    x = origin[0] + (np.arange(cols) + .5) * resolution
    y = origin[1] + (np.arange(rows) + .5) * resolution
    walls = [
        (0, HEIGHT/2, .2, HEIGHT), (WIDTH, HEIGHT/2, .2, HEIGHT),
        (WIDTH/2, 0, WIDTH, .2), (WIDTH/2, HEIGHT, WIDTH, .2),
    ]
    for cx, cy, width, height in obstacle_rectangles() + walls:
        columns = np.flatnonzero((x >= cx-width/2) & (x <= cx+width/2))
        lines = np.flatnonzero((y >= cy-height/2) & (y <= cy+height/2))
        if len(columns) and len(lines):
            merged[np.ix_(lines, columns)] = 0
    return merged


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', default='maps/warehouse_slam', help='Output path without extension')
    parser.add_argument('--robot', default='agv01')
    parser.add_argument('--spawn-x', type=float, default=6.0)
    parser.add_argument('--spawn-y', type=float, default=5.0)
    parser.add_argument('--spawn-yaw', type=float, default=math.pi/2)
    parser.add_argument('--trajectory-id', type=int, default=0)
    parser.add_argument('--tracking-x', type=float, default=0.0)
    parser.add_argument('--tracking-y', type=float, default=-0.093)
    parser.add_argument('--update-smap', type=Path,
                        help='Replace this SMAP background with the aligned SLAM map')
    args = parser.parse_args(remove_ros_args()[1:])
    rclpy.init()
    node = Node('warehouse_save_slam_map')
    received = {}

    def grid_callback(msg):
        received['map'] = msg

    node.create_subscription(OccupancyGrid, f'/{args.robot}/map',
                             grid_callback, QoSProfile(
                                 depth=1, durability=DurabilityPolicy.TRANSIENT_LOCAL,
                                 reliability=ReliabilityPolicy.RELIABLE))
    try:
        client = node.create_client(TrajectoryQuery, f'/{args.robot}/trajectory_query')
        if not client.wait_for_service(timeout_sec=5):
            raise RuntimeError('Cartographer trajectory_query unavailable')
        request = TrajectoryQuery.Request()
        request.trajectory_id = args.trajectory_id
        future = client.call_async(request)
        rclpy.spin_until_future_complete(node, future, timeout_sec=10)
        if not future.done() or not future.result().trajectory:
            raise RuntimeError('No Cartographer trajectory anchor is available')
        first = future.result().trajectory[0].pose
        angle = yaw_of(first.orientation)
        c, s = math.cos(angle), math.sin(angle)
        # Trajectory nodes refer to tracking_frame (IMU), not base_footprint.
        # Anchor the first scan to its known spawn; using final wheel odometry
        # here would introduce the drift accumulated during the entire survey.
        anchor = (first.position.x-c*args.tracking_x+s*args.tracking_y,
                  first.position.y-s*args.tracking_x-c*args.tracking_y, angle)
        deadline = time.monotonic()+15
        while rclpy.ok() and time.monotonic() < deadline and 'map' not in received:
            rclpy.spin_once(node, timeout_sec=.1)
        if 'map' not in received:
            raise RuntimeError('Cartographer occupancy grid unavailable')
        gray, occupancy, resolution, origin = align_grid(
            received['map'], anchor,
            (args.spawn_x, args.spawn_y, args.spawn_yaw), include_occupancy=True)
        output = Path(args.output).resolve()
        output.parent.mkdir(parents=True, exist_ok=True)
        image_path = output.with_suffix('.pgm')
        rows, cols = gray.shape
        image_path.write_bytes(f'P5\n{cols} {rows}\n255\n'.encode()+np.flipud(gray).tobytes())
        probability = np.full_like(gray, 205)
        known = occupancy >= 0
        probability[known] = np.rint((100-occupancy[known])*254/100).astype(np.uint8)
        probability_image = output.with_name(output.name + '_probability').with_suffix('.pgm')
        probability_image.write_bytes(
            f'P5\n{cols} {rows}\n255\n'.encode()+np.flipud(probability).tobytes())
        metadata = {
            'image': image_path.name, 'mode': 'trinary', 'resolution': resolution,
            'origin': [*origin, 0.0], 'negate': 0, 'occupied_thresh': .65, 'free_thresh': .25}
        output.with_suffix('.yaml').write_text(yaml.safe_dump(metadata, sort_keys=False))
        nav_image = output.with_name(output.name + '_navigation').with_suffix('.pgm')
        nav_grid = navigation_grid(gray, resolution, origin)
        nav_image.write_bytes(f'P5\n{cols} {rows}\n255\n'.encode()+np.flipud(nav_grid).tobytes())
        nav_metadata = {**metadata, 'image': nav_image.name}
        nav_image.with_suffix('.yaml').write_text(yaml.safe_dump(nav_metadata, sort_keys=False))
        output.with_suffix('.alignment.json').write_text(json.dumps({
            'method': 'first_optimized_trajectory_node',
            'trajectory_id': args.trajectory_id, 'map_base_anchor': anchor,
            'warehouse_spawn': [args.spawn_x, args.spawn_y, args.spawn_yaw],
            'tracking_offset': [args.tracking_x, args.tracking_y],
        }, indent=2)+'\n')
        if args.update_smap:
            backup = args.update_smap.with_suffix(
                f'.before-slam-{time.strftime("%Y%m%d-%H%M%S")}.smap.bak')
            shutil.copy2(args.update_smap, backup)
            document = json.loads(args.update_smap.read_text(encoding='utf-8'))
            occupied = np.argwhere(gray == 0)
            stride = max(1, math.ceil(len(occupied)/10000))
            document['normalPosList'] = [
                {'x': round(origin[0]+(int(ix)+.5)*resolution, 4),
                 'y': round(origin[1]+(int(iy)+.5)*resolution, 4)}
                for iy, ix in occupied[::stride]]
            document['header'].update({
                'resolution': resolution, 'minPos': {'x': origin[0], 'y': origin[1]},
                'maxPos': {'x': origin[0]+cols*resolution, 'y': origin[1]+rows*resolution}})
            temporary = args.update_smap.with_suffix('.smap.tmp')
            temporary.write_text(json.dumps(document, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
            temporary.replace(args.update_smap)
        print(f'Saved aligned SLAM map: {output.with_suffix(".yaml")}')
        print(f'Saved measured occupancy probabilities for editing: {probability_image}')
        print(f'Saved navigation map with known solid fixtures: {nav_image.with_suffix(".yaml")}')
        print(f'Grid: {cols} x {rows}, resolution {resolution}, origin {origin}')
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()
