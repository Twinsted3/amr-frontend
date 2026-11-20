"""One command: warehouse, ten forklifts, Nav2 route control and dispatcher."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription, TimerAction
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration


def generate_launch_description():
    share = get_package_share_directory('warehouse_sim')
    launches = os.path.join(share, 'launch')
    nav_map = os.path.join(share, 'maps', 'warehouse_slam_navigation.yaml')
    slam_map = os.path.join(share, 'maps', 'warehouse_slam.yaml')
    default_map = next((path for path in (nav_map, slam_map) if os.path.isfile(path)),
                       os.path.join(share, 'maps', 'warehouse_baseline.yaml'))
    robots, gui, map_file = (LaunchConfiguration(key) for key in ('robots', 'gui', 'map'))

    def include(name, arguments):
        return IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launches, name)),
            launch_arguments=arguments.items())

    return LaunchDescription([
        DeclareLaunchArgument('robots', default_value='2'),
        DeclareLaunchArgument('initial_soc', default_value='0.55'),
        DeclareLaunchArgument('soc_profile', default_value=''),
        DeclareLaunchArgument('executor_db', default_value=''),
        DeclareLaunchArgument('battery_db', default_value=''),
        DeclareLaunchArgument('require_booking', default_value='false'),
        DeclareLaunchArgument('gui', default_value='true'),
        DeclareLaunchArgument('map', default_value=default_map),
        include('warehouse.launch.py', {'robots': robots, 'gui': gui}),
        TimerAction(period=15.0, actions=[
            include('navigation.launch.py', {'robots': robots, 'map': map_file}),
            include('dispatcher.launch.py', {'robots': robots, 'initial_soc': LaunchConfiguration('initial_soc'), 'soc_profile': LaunchConfiguration('soc_profile'), 'executor_db': LaunchConfiguration('executor_db'),'battery_db':LaunchConfiguration('battery_db'),'require_booking':LaunchConfiguration('require_booking')}),
        ]),
    ])
