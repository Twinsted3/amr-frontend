"""Read the same live map->base TF chain used by Nav2, per robot namespace."""
import math
from rclpy.time import Time
from tf2_ros import Buffer, TransformListener, TransformException
from geometry_msgs.msg import PoseWithCovarianceStamped
from rclpy.qos import QoSProfile, DurabilityPolicy, ReliabilityPolicy
from warehouse_sim.localization_health import covariance_quality,finite_pose


class PoseTracker:
    def __init__(self, node, names):
        self.node = node
        self.quality={name:dict(ok=False,reason='waiting for AMCL covariance') for name in names}
        qos=QoSProfile(depth=1,durability=DurabilityPolicy.TRANSIENT_LOCAL,reliability=ReliabilityPolicy.RELIABLE)
        self.quality_subs=[node.create_subscription(PoseWithCovarianceStamped,f'/{name}/amcl_pose',lambda m,n=name:self.quality.update({n:covariance_quality(m.pose.covariance)}),qos) for name in names]
        self.buffers = {name: Buffer() for name in names}
        self.listeners = [TransformListener(self.buffers[name], node, tf_topic=f'/{name}/tf',
                                            tf_static_topic=f'/{name}/tf_static') for name in names]

    def read(self, name):
        if not self.quality[name]['ok']:return None
        try:
            t = self.buffers[name].lookup_transform('map', name+'_base_footprint', Time())
        except TransformException:
            return None
        stamp = t.header.stamp.sec+t.header.stamp.nanosec/1e9
        age = self.node.get_clock().now().nanoseconds/1e9-stamp
        if not -.5 <= age <= .5:
            return None
        p,q = t.transform.translation,t.transform.rotation
        if not finite_pose((p.x,p.y,p.z),(q.x,q.y,q.z,q.w)):return None
        yaw = math.atan2(2*(q.w*q.z+q.x*q.y), 1-2*(q.y*q.y+q.z*q.z))
        return (p.x,p.y,yaw), age
