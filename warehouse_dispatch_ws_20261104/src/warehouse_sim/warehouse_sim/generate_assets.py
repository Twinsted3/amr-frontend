#!/usr/bin/env python3
"""Generate the detailed warehouse, route graph, maps, textures and ROS configuration."""
import json
import math
from pathlib import Path
import xml.etree.ElementTree as ET
import yaml
from warehouse_sim.layout import CHARGER_X, CHARGER_Y, FOOTPRINT, SPAWN_POSES, WIDTH, HEIGHT, REVISION
from warehouse_sim.scene_builder import (
    ROOT, CONFIG_DIR, MAP_DIR, WORLD, SMAP, RMF, BASELINE_YAML,
    build_routes, build_world, build_baseline_map, build_rmf_shell,
)


def build_nav2_params():
    """Adapt the installed Kilted Nav2 defaults for our large differential forklifts."""
    base_file = Path('/opt/ros/kilted/share/nav2_bringup/params/nav2_params.yaml')
    if not base_file.exists():
        print('Nav2 defaults unavailable; skipping generated Nav2 params')
        return
    source = yaml.safe_load(base_file.read_text(encoding='utf-8'))
    CONFIG_DIR.mkdir(parents=True, exist_ok=True)
    footprint = json.dumps(FOOTPRINT)
    for index, (x, spawn_y, spawn_yaw) in enumerate(SPAWN_POSES, 1):
        robot_id = f'agv{index:02d}'
        params = json.loads(json.dumps(source))
        amcl = params['amcl']['ros__parameters']
        amcl.update({
            'alpha1': 0.005, 'alpha2': 0.005, 'alpha3': 0.005, 'alpha4': 0.005, 'alpha5': 0.005,
            'base_frame_id': robot_id + '_base_footprint',
            'odom_frame_id': robot_id + '_odom',
            'global_frame_id': 'map',
            'set_initial_pose': True,
            'initial_pose': {'x': x, 'y': spawn_y, 'z': 0.0, 'yaw': spawn_yaw},
            'min_particles': 300,
            'max_particles': 1200,
            'scan_topic': 'scan_mapping',
            'max_beams': 120, 'z_hit': .8, 'z_rand': .2,
        })
        for section in ('bt_navigator', 'behavior_server', 'waypoint_follower'):
            q = params.get(section, {}).get('ros__parameters', {})
            if 'robot_base_frame' in q:
                q['robot_base_frame'] = robot_id + '_base_footprint'
        controller = params['controller_server']['ros__parameters']
        controller['controller_frequency'] = 10.0
        # A single delayed costmap update must not abort an otherwise valid route.
        controller['failure_tolerance'] = 2.0
        controller['enable_stamped_cmd_vel'] = False
        controller['progress_checker']['movement_time_allowance'] = 25.0
        controller['FollowPath'] = {
            'plugin': 'nav2_regulated_pure_pursuit_controller::RegulatedPurePursuitController',
            'desired_linear_vel': 0.6,
            'lookahead_dist': 0.65,
            'min_lookahead_dist': 0.45,
            'max_lookahead_dist': 0.9,
            'lookahead_time': 1.5,
            'use_velocity_scaled_lookahead_dist': True,
            'use_collision_detection': True,
            'max_allowed_time_to_collision_up_to_carrot': 1.0,
            'allow_reversing': False,
            'use_rotate_to_heading': True,
            'rotate_to_heading_angular_vel': 0.5,
            'transform_tolerance': 0.2,
        }
        for section in ('local_costmap', 'global_costmap'):
            q = params[section][section]['ros__parameters']
            q['robot_base_frame'] = robot_id + '_base_footprint'
            q['footprint'] = footprint
            q.pop('robot_radius', None)
            q['initial_transform_timeout'] = 10.0
            q['transform_tolerance'] = 0.5
            q['plugins'] = ['obstacle_layer', 'inflation_layer'] if section == 'local_costmap' else [
                'static_layer', 'obstacle_layer', 'inflation_layer']
            if section == 'local_costmap':
                q['global_frame'] = robot_id + '_odom'
                q['width'], q['height'] = 7, 7
            q['obstacle_layer'] = {
                'plugin': 'nav2_costmap_2d::ObstacleLayer',
                'enabled': True,
                'observation_sources': 'scan scan_low scan_mapping',
                'scan': {
                    'topic': 'scan', 'data_type': 'LaserScan', 'marking': True, 'clearing': True,
                    'inf_is_valid': True,
                    'max_obstacle_height': 3.0, 'raytrace_max_range': 8.0,
                    'raytrace_min_range': 0.0, 'obstacle_max_range': 7.0,
                    'obstacle_min_range': 0.0,
                },
                'scan_low': {
                    'topic': 'scan_low', 'data_type': 'LaserScan', 'marking': True, 'clearing': True,
                    'inf_is_valid': True,
                    'max_obstacle_height': 1.0, 'raytrace_max_range': 8.0,
                    'raytrace_min_range': 0.08, 'obstacle_max_range': 7.0,
                    'obstacle_min_range': 0.08,
                },
                'scan_mapping': {
                    'topic': 'scan_mapping', 'data_type': 'LaserScan', 'marking': True, 'clearing': True,
                    'inf_is_valid': True,
                    'max_obstacle_height': 1.5, 'raytrace_max_range': 8.0,
                    'raytrace_min_range': 0.0, 'obstacle_max_range': 7.0,
                    'obstacle_min_range': 0.0,
                },
            }
            q['inflation_layer']['inflation_radius'] = 0.85
            q['inflation_layer']['cost_scaling_factor'] = 2.0
            q.pop('filters', None)
        params['velocity_smoother']['ros__parameters'].update({
            'enable_stamped_cmd_vel': False,
            'max_velocity': [0.7, 0.0, 0.8],
            'min_velocity': [-0.25, 0.0, -0.8],
            'max_accel': [0.5, 0.0, 1.0],
            'max_decel': [-0.5, 0.0, -1.0],
        })
        def rewrite_frames(value):
            if isinstance(value, dict):
                for key, item in value.items():
                    if key in ('base_frame', 'base_frame_id', 'robot_base_frame') and item in (
                            'base_link', 'base_footprint'):
                        value[key] = robot_id + '_base_footprint'
                    elif key in ('odom_frame', 'odom_frame_id', 'fixed_frame', 'local_frame') and item == 'odom':
                        value[key] = robot_id + '_odom'
                    else:
                        rewrite_frames(item)
            elif isinstance(value, list):
                for item in value:
                    rewrite_frames(item)
        rewrite_frames(params)
        params['collision_monitor']['ros__parameters']['scan']['max_height'] = 3.0
        for section in ('collision_monitor', 'behavior_server', 'docking_server'):
            params[section]['ros__parameters']['enable_stamped_cmd_vel'] = False
        (CONFIG_DIR / f'nav2_{robot_id}.yaml').write_text(
            yaml.safe_dump(params, sort_keys=False), encoding='utf-8')


def build_gui_config():
    source = Path('/opt/ros/kilted/opt/gz_sim_vendor/share/gz/gz-sim9/gui/gui.config')
    if source.exists():
        text = source.read_text(encoding='utf-8')
        text = text.replace('<camera_pose>-6 0 6 0 0.5 0</camera_pose>',
                            '<camera_pose>36 -22 36 0 0.72 1.5707963</camera_pose>')
        text = text.replace('show_again="true"', 'show_again="false"')
        text = text.replace('<dialog_on_exit>true</dialog_on_exit>',
                            '<dialog_on_exit>false</dialog_on_exit>')
        # Give the warehouse the full viewport; inspectors remain available in the plugin menu.
        fragment = ET.fromstring('<configuration>'+text.split('?>', 1)[-1]+'</configuration>')
        for plugin in list(fragment.findall('plugin')):
            if plugin.get('filename') in ('ComponentInspector', 'EntityTree'):
                fragment.remove(plugin)
        (CONFIG_DIR / 'warehouse_gui.config').write_text(
            '<?xml version="1.0"?>\n'+''.join(
                ET.tostring(item, encoding='unicode') for item in fragment), encoding='utf-8')


def main():
    MAP_DIR.mkdir(parents=True, exist_ok=True)
    points, edges, curves, by_name = build_routes()
    build_world()
    scan = build_baseline_map()
    if not SMAP.exists():
        document = {
            'header': {'mapType': '2D-Map', 'mapName': REVISION, 'minPos': {'x': 0, 'y': 0},
                       'maxPos': {'x': WIDTH, 'y': HEIGHT}, 'resolution': 0.1, 'version': '1.0.6'},
            'normalPosList': scan, 'advancedPointList': points, 'advancedCurveList': curves,
        }
        SMAP.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    if not RMF.exists():
        build_rmf_shell()
    build_nav2_params()
    build_gui_config()
    print(f'World: {WORLD}')
    print(f'SMAP: {SMAP} ({len(points)} stations, {len(curves)} directed routes)')
    print(f'Baseline map: {BASELINE_YAML}')


if __name__ == '__main__':
    main()
