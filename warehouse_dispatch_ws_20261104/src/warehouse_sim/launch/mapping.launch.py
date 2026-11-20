"""Fresh single-robot Gazebo world and Cartographer, with an optional survey."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription, TimerAction
from launch.conditions import IfCondition
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    launch_dir = os.path.join(get_package_share_directory('warehouse_sim'), 'launch')
    return LaunchDescription([
        DeclareLaunchArgument('gui', default_value='true'),
        DeclareLaunchArgument('auto_patrol', default_value='true'),
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launch_dir, 'warehouse.launch.py')),
            launch_arguments={'robots': '1', 'gui': LaunchConfiguration('gui'),
                              'mapping_mode': 'true'}.items()),
        TimerAction(period=6.0, actions=[IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launch_dir, 'cartographer.launch.py')))]),
        TimerAction(period=12.0, actions=[Node(
            package='warehouse_sim', executable='mapping_patrol',
            condition=IfCondition(LaunchConfiguration('auto_patrol')), output='screen')]),
    ])
