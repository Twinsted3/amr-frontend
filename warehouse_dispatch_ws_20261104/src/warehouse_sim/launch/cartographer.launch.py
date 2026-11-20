"""Map the warehouse with agv01 before running AMCL/Nav2 localization."""

import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import SetEnvironmentVariable
from launch_ros.actions import Node


def generate_launch_description():
    config = os.path.join(get_package_share_directory('warehouse_sim'), 'config')
    remaps = [('/tf', 'tf'), ('/tf_static', 'tf_static'),
              ('scan', 'scan_mapping')]
    return LaunchDescription([
        SetEnvironmentVariable('FASTDDS_BUILTIN_TRANSPORTS', 'UDPv4'),
        Node(
            package='cartographer_ros', executable='cartographer_node',
            namespace='agv01', name='cartographer_node', output='screen',
            arguments=['-configuration_directory', config,
                       '-configuration_basename', 'cartographer_2d.lua'],
            parameters=[{'use_sim_time': True}], remappings=remaps,
        ),
        Node(
            package='cartographer_ros', executable='cartographer_occupancy_grid_node',
            namespace='agv01', name='occupancy_grid_node', output='screen',
            arguments=['-resolution', '0.10', '-publish_period_sec', '2.0'],
            parameters=[{'use_sim_time': True}], remappings=remaps,
        ),
    ])
