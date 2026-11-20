from glob import glob
import os
from setuptools import find_packages, setup

package_name = 'warehouse_sim'

setup(
    name=package_name,
    version='0.1.0',
    packages=find_packages(),
    data_files=[
        ('share/ament_index/resource_index/packages', ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        ('share/' + package_name + '/launch', glob('launch/*.launch.py')),
        ('share/' + package_name + '/web', glob('web/*.html')),
        ('share/' + package_name + '/worlds', glob('worlds/*.sdf')),
        ('share/' + package_name + '/config',
         glob('config/*.yaml') + glob('config/*.lua') + glob('config/*.config')),
        ('share/' + package_name + '/maps/nav_graphs', glob('maps/nav_graphs/*.yaml')),
        ('share/' + package_name + '/maps',
         glob('maps/*.yaml') + glob('maps/*.pgm') + glob('maps/*.smap') + glob('maps/*.pbstream')),
    ] + [('share/' + package_name + '/' + directory,
          [os.path.join(directory, name) for name in files])
         for directory, _, files in os.walk('models') if files],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Warehouse Simulation',
    maintainer_email='maintainer@example.com',
    description='Warehouse simulation and multi-robot route execution',
    license='Apache-2.0',
    entry_points={
        'console_scripts': [
            'odom_tf = warehouse_sim.odom_tf:main',
            'dispatch_dashboard = warehouse_sim.dispatch_dashboard:main',
            'fleet_scheduler = warehouse_sim.fleet_scheduler:main',
            'sim_actions = warehouse_sim.sim_actions:main',
            'motion_guard = warehouse_sim.motion_guard:main',
            'route_dispatcher = warehouse_sim.route_dispatcher:main',
            'send_task = warehouse_sim.send_task:main',
            'save_slam_map = warehouse_sim.save_slam_map:main',
            'mapping_patrol = warehouse_sim.mapping_patrol:main',
            'charge_manager = warehouse_sim.charge_manager:main',
        ],
    },
)
