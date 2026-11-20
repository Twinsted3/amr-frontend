"""Run Nav2 with individual AMCL and controllers for one to ten forklifts."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import (
    DeclareLaunchArgument, IncludeLaunchDescription, OpaqueFunction,
    SetEnvironmentVariable, TimerAction,
)
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration


def _start(context):
    count = int(LaunchConfiguration('robots').perform(context))
    if not 1 <= count <= 10:
        raise ValueError('robots must be between 1 and 10')
    share = get_package_share_directory('warehouse_sim')
    bringup = os.path.join(get_package_share_directory('nav2_bringup'), 'launch', 'bringup_launch.py')
    map_path = LaunchConfiguration('map').perform(context)
    actions = []
    for index in range(count):
        robot_id = f'agv{index + 1:02d}'
        params = os.path.join(share, 'config', f'nav2_{robot_id}.yaml')
        include = IncludeLaunchDescription(
            PythonLaunchDescriptionSource(bringup),
            launch_arguments={
                'namespace': robot_id,
                'map': map_path,
                'params_file': params,
                'use_sim_time': 'true',
                'use_composition': 'True',
                'use_keepout_zones': 'False',
                'use_speed_zones': 'False',
                'autostart': 'True',
            }.items(),
        )
        # Start each robot's nodes in separate processes to avoid component-load
        # service timeouts when Gazebo is simulating all ten lidar sensors.
        actions.append(TimerAction(period=4.0 * index, actions=[include]))
    return actions


def generate_launch_description():
    share = get_package_share_directory('warehouse_sim')
    nav_map = os.path.join(share, 'maps', 'warehouse_slam_navigation.yaml')
    slam_map = os.path.join(share, 'maps', 'warehouse_slam.yaml')
    default_map = next((path for path in (nav_map, slam_map) if os.path.isfile(path)),
                       os.path.join(share, 'maps', 'warehouse_baseline.yaml'))
    return LaunchDescription([
        SetEnvironmentVariable('FASTDDS_BUILTIN_TRANSPORTS', 'UDPv4'),
        DeclareLaunchArgument('robots', default_value='1'),
        DeclareLaunchArgument('map', default_value=default_map,
                              description='Nav2 map YAML; replace with the Cartographer map after alignment'),
        OpaqueFunction(function=_start),
    ])
