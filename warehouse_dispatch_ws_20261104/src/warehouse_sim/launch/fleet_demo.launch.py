"""Factory scene + existing route executor + business task scheduler."""
import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from launch_ros.parameter_descriptions import ParameterValue
from launch.conditions import IfCondition


def generate_launch_description():
    share = get_package_share_directory('warehouse_sim')
    robots, gui = LaunchConfiguration('robots'), LaunchConfiguration('gui')
    return LaunchDescription([
        DeclareLaunchArgument('robots', default_value='2'),
        DeclareLaunchArgument('initial_soc', default_value='0.55'),
        DeclareLaunchArgument('soc_profile', default_value=''),
        DeclareLaunchArgument('gui', default_value='true'),
        DeclareLaunchArgument('demo_controls', default_value='false'),
        DeclareLaunchArgument('auto_return', default_value='false'),
        DeclareLaunchArgument('durable_db', default_value=''),
        DeclareLaunchArgument('executor_db', default_value=''),
        DeclareLaunchArgument('actions_db', default_value='runtime/actions.sqlite3'),
        DeclareLaunchArgument('battery_db', default_value=''),
        DeclareLaunchArgument('feedback_handling', default_value='false'),
        DeclareLaunchArgument('respawn_scheduler', default_value='false'),
        IncludeLaunchDescription(PythonLaunchDescriptionSource(os.path.join(share, 'launch', 'demo.launch.py')),
                                 launch_arguments={'robots': robots, 'gui': gui, 'initial_soc': LaunchConfiguration('initial_soc'), 'soc_profile': LaunchConfiguration('soc_profile'),'executor_db':LaunchConfiguration('executor_db'),'battery_db':LaunchConfiguration('battery_db'),'require_booking':LaunchConfiguration('feedback_handling')}.items()),
        Node(package='warehouse_sim',executable='sim_actions',output='screen',condition=IfCondition(LaunchConfiguration('feedback_handling')),
             parameters=[{'use_sim_time':True,'robots':ParameterValue(robots,value_type=int),'database':ParameterValue(LaunchConfiguration('actions_db'),value_type=str)}]),
        Node(package='warehouse_sim', executable='fleet_scheduler', output='screen',respawn=LaunchConfiguration('respawn_scheduler'),respawn_delay=2.,
             parameters=[{'use_sim_time': True, 'robots': ParameterValue(robots, value_type=int),
                          'demo_controls': ParameterValue(LaunchConfiguration('demo_controls'), value_type=bool),
                          'durable_db': ParameterValue(LaunchConfiguration('durable_db'), value_type=str),
                          'feedback_handling': ParameterValue(LaunchConfiguration('feedback_handling'), value_type=bool),
                          'auto_return': ParameterValue(LaunchConfiguration('auto_return'), value_type=bool)}]),
        Node(package='warehouse_sim', executable='dispatch_dashboard', output='screen',
             parameters=[{'robots': ParameterValue(robots, value_type=int)}]),
    ])
