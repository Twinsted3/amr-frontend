"""AMCL uncertainty gate, independent of TF publication freshness."""
import math

def covariance_quality(values):
    if len(values)!=36:return dict(ok=False,reason='missing AMCL covariance')
    x,y,yaw=(float(values[i]) for i in (0,7,35))
    xy,yx=float(values[1]),float(values[6])
    if any(not math.isfinite(v) or v < -1e-8 for v in (x,y,yaw)) or not math.isfinite(xy) or not math.isfinite(yx) or abs(xy-yx)>1e-6 or x*y-xy*xy < -1e-8:
        return dict(ok=False,reason='invalid AMCL covariance')
    # AMCL particle moments can yield -1e-13 instead of zero after subtraction.
    x,y,yaw=max(0.,x),max(0.,y),max(0.,yaw)
    ok=max(x,y)<=.5 and yaw<=.25
    return dict(ok=ok,reason='OK' if ok else 'AMCL uncertainty too high; relocalization required',x_variance=x,y_variance=y,yaw_variance=yaw)

def finite_pose(position,orientation):
    values=[float(v) for v in (*position,*orientation)]
    if not all(math.isfinite(v) for v in values):return False
    norm=sum(float(v)**2 for v in orientation)
    return abs(norm-1.)<=.02
