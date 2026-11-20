"""Lean Nav2 FollowPath stack for ten forklifts on modest hardware."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, OpaqueFunction, SetEnvironmentVariable, TimerAction
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from launch_ros.descriptions import ParameterFile
from nav2_common.launch import RewrittenYaml


def _start(context):
    count = int(LaunchConfiguration('robots').perform(context))
    if not 1 <= count <= 10:
        raise ValueError('robots must be between 1 and 10')
    share = get_package_share_directory('warehouse_sim')
    map_path = LaunchConfiguration('map').perform(context)
    groups = []
    for index in range(count):
        robot_id = f'agv{index + 1:02d}'
        source_params = os.path.join(share, 'config', f'nav2_{robot_id}.yaml')
        params = ParameterFile(RewrittenYaml(
            source_file=source_params, root_key=robot_id,
            param_rewrites={}, convert_types=True), allow_substs=True)
        remaps = [('/tf', 'tf'), ('/tf_static', 'tf_static')]
        common = {'namespace': robot_id, 'parameters': [params, {'use_sim_time': True}],
                  'remappings': remaps, 'output': 'screen'}
        nodes = [
            Node(package='nav2_map_server', executable='map_server',
                 name='map_server', **{**common, 'parameters': [
                     params, {'use_sim_time': True, 'yaml_filename': map_path}]}),
            Node(package='nav2_amcl', executable='amcl', name='amcl', **common),
            Node(package='nav2_controller', executable='controller_server',
                 name='controller_server', **{**common,'remappings':remaps+[('cmd_vel','cmd_vel_nav')]}),
            TimerAction(period=2.0, actions=[Node(
                 package='nav2_lifecycle_manager', executable='lifecycle_manager',
                 name='lifecycle_manager', namespace=robot_id, output='screen',
                 parameters=[{'use_sim_time': True, 'autostart': True,
                              'node_names': ['map_server', 'amcl', 'controller_server']}])]),
        ]
        groups.append(TimerAction(period=3.0 * index, actions=nodes))
    return groups


def generate_launch_description():
    share = get_package_share_directory('warehouse_sim')
    nav_map = os.path.join(share, 'maps', 'warehouse_slam_navigation.yaml')
    slam_map = os.path.join(share, 'maps', 'warehouse_slam.yaml')
    default_map = next((path for path in (nav_map, slam_map) if os.path.isfile(path)),
                       os.path.join(share, 'maps', 'warehouse_baseline.yaml'))
    return LaunchDescription([
        SetEnvironmentVariable('FASTDDS_BUILTIN_TRANSPORTS', 'UDPv4'),
        DeclareLaunchArgument('robots', default_value='2'),
        DeclareLaunchArgument('map', default_value=default_map,
                              description='Nav2 map YAML; use an aligned Cartographer map when available'),
        OpaqueFunction(function=_start),
    ])
