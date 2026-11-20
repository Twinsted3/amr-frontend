"""Start the new Gazebo warehouse and one to ten namespaced forklifts."""

import os

from ament_index_python.packages import get_package_share_directory, get_package_prefix
from launch import LaunchDescription
from launch.actions import (
    DeclareLaunchArgument, IncludeLaunchDescription, OpaqueFunction,
    SetEnvironmentVariable, TimerAction,
)
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
import xacro


from warehouse_sim.layout import SPAWN_POSES


def _make_nodes(context):
    count = int(LaunchConfiguration('robots').perform(context))
    if not 1 <= count <= 10:
        raise ValueError('robots must be between 1 and 10')
    gui = LaunchConfiguration('gui').perform(context).lower() in ('true', '1', 'yes')
    mapping_mode = LaunchConfiguration('mapping_mode').perform(context).lower() in ('true', '1', 'yes')
    world_path = os.path.join(get_package_share_directory('warehouse_sim'), 'worlds', 'warehouse.sdf')
    xacro_path = os.path.join(get_package_share_directory('forklift_description'),
                              'urdf', 'forklift_0719.urdf.xacro')
    gz_launch = os.path.join(get_package_share_directory('ros_gz_sim'), 'launch', 'gz_sim.launch.py')
    gui_config = os.path.join(get_package_share_directory('warehouse_sim'), 'config', 'warehouse_gui.config')
    gz_args = f'-r --gui-config {gui_config} {world_path}' if gui else f'-r -s {world_path}'
    bridge_arguments = ['/world/warehouse/clock@rosgraph_msgs/msg/Clock[gz.msgs.Clock']
    bridge_remaps = [('/world/warehouse/clock', '/clock')]
    actions = [
        SetEnvironmentVariable('GZ_SIM_SYSTEM_PLUGIN_PATH',
            os.path.join(get_package_prefix('warehouse_safety'),'lib')+os.pathsep+os.environ.get('GZ_SIM_SYSTEM_PLUGIN_PATH','')),
        SetEnvironmentVariable('GZ_SIM_RESOURCE_PATH',
            os.path.join(get_package_share_directory('warehouse_sim'), 'models')+
            os.pathsep+os.environ.get('GZ_SIM_RESOURCE_PATH', '')),
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(gz_launch),
            launch_arguments={'gz_args': gz_args}.items(),
        ),
    ]
    for index in range(count):
        robot_id = f'agv{index + 1:02d}'
        description = xacro.process_file(
            xacro_path,
            mappings={
                'namespace': robot_id + '_', 'robot_id': robot_id,
                'lidar_samples': '360' if count == 1 else '180',
                'lidar_rate': '10' if count == 1 else '5',
                'odom_rate': '50' if count == 1 else '20',
                'mapping_lidar': 'true',
                'survey_lidar_samples': '720' if mapping_mode else '360',
                'survey_lidar_rate': '10' if mapping_mode else '5',
            },
        ).toxml()
        bridge_arguments.extend([
            f'/{robot_id}/cmd_vel@geometry_msgs/msg/Twist]gz.msgs.Twist',
            f'/{robot_id}/fork_position@std_msgs/msg/Float64]gz.msgs.Double',
            f'/{robot_id}/scan@sensor_msgs/msg/LaserScan[gz.msgs.LaserScan',
            f'/{robot_id}/scan_low@sensor_msgs/msg/LaserScan[gz.msgs.LaserScan',
            f'/{robot_id}/imu@sensor_msgs/msg/Imu[gz.msgs.IMU',
            f'/{robot_id}/odom@nav_msgs/msg/Odometry[gz.msgs.Odometry',
            f'/model/{robot_id}/tf@tf2_msgs/msg/TFMessage[gz.msgs.Pose_V',
            f'/world/warehouse/model/{robot_id}/joint_state@sensor_msgs/msg/JointState[gz.msgs.Model',
        ])
        bridge_arguments.append(
            f'/{robot_id}/scan_mapping@sensor_msgs/msg/LaserScan[gz.msgs.LaserScan')
        bridge_remaps.extend([
            (f'/model/{robot_id}/tf', f'/{robot_id}/tf'),
            (f'/world/warehouse/model/{robot_id}/joint_state', f'/{robot_id}/joint_states'),
        ])
        tf_remaps = [('/tf', 'tf'), ('/tf_static', 'tf_static')]
        actions.extend([
            Node(
                package='robot_state_publisher', executable='robot_state_publisher',
                namespace=robot_id, name='robot_state_publisher',
                parameters=[{'robot_description': description, 'use_sim_time': True}],
                remappings=tf_remaps, output='screen',
            ),
            TimerAction(
                period=3.0 + 1.0 * index,
                actions=[Node(
                    package='ros_gz_sim', executable='create',
                    name=f'spawn_{robot_id}',
                    arguments=[
                        '-world', 'warehouse', '-string', description, '-name', robot_id,
                        '-x', str(SPAWN_POSES[index][0]), '-y', str(SPAWN_POSES[index][1]), '-z', '0.03',
                        '-Y', str(SPAWN_POSES[index][2]),
                    ],
                    output='screen',
                )],
            ),
        ])
    actions.append(Node(
        package='ros_gz_bridge', executable='parameter_bridge',
        name='warehouse_bridge', arguments=bridge_arguments,
        remappings=bridge_remaps, output='screen',
    ))
    return actions


def generate_launch_description():
    return LaunchDescription([
        SetEnvironmentVariable('FASTDDS_BUILTIN_TRANSPORTS', 'UDPv4'),
        DeclareLaunchArgument('robots', default_value='2', description='Number of forklifts (1..10)'),
        DeclareLaunchArgument('gui', default_value='false', description='Show Gazebo GUI'),
        DeclareLaunchArgument('mapping_mode', default_value='false',
                              description='Use 720 samples at 10 Hz for the survey lidar'),
        OpaqueFunction(function=_make_nodes),
    ])
