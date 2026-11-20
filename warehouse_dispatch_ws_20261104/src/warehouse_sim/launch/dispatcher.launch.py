"""Run the fleet route dispatcher after Nav2 has started."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, SetEnvironmentVariable
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from launch_ros.parameter_descriptions import ParameterValue


def generate_launch_description():
    smap = os.path.join(get_package_share_directory('warehouse_sim'), 'maps', 'warehouse.smap')
    return LaunchDescription([
        SetEnvironmentVariable('FASTDDS_BUILTIN_TRANSPORTS', 'UDPv4'),
        DeclareLaunchArgument('robots', default_value='2'),
        DeclareLaunchArgument('initial_soc', default_value='0.55'),
        DeclareLaunchArgument('soc_profile', default_value=''),
        DeclareLaunchArgument('smap', default_value=smap),
        DeclareLaunchArgument('executor_db', default_value=''),
        DeclareLaunchArgument('battery_db', default_value=''),
        DeclareLaunchArgument('require_booking', default_value='false'),
        Node(package='warehouse_sim', executable='motion_guard',
             parameters=[{'robots': ParameterValue(LaunchConfiguration('robots'),value_type=int)}],output='screen'),
        Node(
            package='warehouse_sim', executable='route_dispatcher',
            parameters=[{'use_sim_time': True,
                         'robots': LaunchConfiguration('robots'),
                         'executor_db': ParameterValue(LaunchConfiguration('executor_db'),value_type=str),
                         'smap_path': LaunchConfiguration('smap')}],
            output='screen',
        ),
        Node(
            package='warehouse_sim', executable='charge_manager',
            parameters=[{'use_sim_time': True, 'robots': LaunchConfiguration('robots'),
                         'soc_profile': ParameterValue(LaunchConfiguration('soc_profile'), value_type=str),
                         'battery_db':ParameterValue(LaunchConfiguration('battery_db'),value_type=str),
                         'require_booking':ParameterValue(LaunchConfiguration('require_booking'),value_type=bool),
                         'initial_soc': ParameterValue(LaunchConfiguration('initial_soc'), value_type=float)}],
            output='screen',
        ),
    ])
