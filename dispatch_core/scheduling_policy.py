"""Rolling policy: second-equivalent objectives, separate hard feasibility.

Optimality is limited to the current allocation window and estimated costs.
Policy changes never preempt an accepted vehicle execution.
"""
import math

BUSINESS_PRIORITIES = (-100, 0, 100)


def valid_business_priority(value):
    return not isinstance(value, bool) and value in BUSINESS_PRIORITIES


DEFAULT_POLICY = dict(mode='adaptive', normal_wait_s=300., empty_speed_mps=.6,
                      loaded_speed_mps=.4, reserve_soc=.05, energy_per_m=.0005,
                      target_soc=.5, battery_penalty_s=300., occupied_wait_s=15.,
                      handling_s=4., weights=dict(travel=1., congestion=1., energy=1.))

VEHICLE_PERFORMANCE_BOUNDS = {
    'empty_speed_mps': (.05, 3.), 'loaded_speed_mps': (.05, 3.),
    'empty_soc_per_m': (.000001, .01), 'loaded_soc_per_m': (.000001, .01),
    'handling_s': (0., 300.),
}


def validate_vehicle_performance(value):
    if not isinstance(value, dict) or value.keys() - VEHICLE_PERFORMANCE_BOUNDS.keys():
        raise ValueError('车辆性能参数包含未知字段')
    for key, number in value.items():
        low, high = VEHICLE_PERFORMANCE_BOUNDS[key]
        if type(number) not in (int, float) or not low <= number <= high:
            raise ValueError(f'车辆性能参数超出范围：{key}')
    return dict(value)

def validate_policy(value):
    if not isinstance(value,dict) or set(value)!=set(DEFAULT_POLICY):
        raise ValueError('调度策略字段不完整或含未知字段')
    if value['mode'] not in ('adaptive','balanced','distance'):
        raise ValueError('调度模式不受支持')
    bounds=dict(normal_wait_s=(30,3600),empty_speed_mps=(.05,2),loaded_speed_mps=(.05,2),
                reserve_soc=(.01,.3),energy_per_m=(.000001,.01),target_soc=(.1,.95),
                battery_penalty_s=(0,3600),occupied_wait_s=(1,300),handling_s=(0,300))
    for key,(low,high) in bounds.items():
        v=value[key]
        if isinstance(v,bool) or not isinstance(v,(int,float)) or not math.isfinite(v) or not low<=v<=high:
            raise ValueError(f'无效策略参数：{key}')
    if value['target_soc']<value['reserve_soc']:raise ValueError('电量目标不得低于保留电量')
    weights=value['weights']
    if not isinstance(weights,dict) or set(weights)!={'travel','congestion','energy'}:
        raise ValueError('权重须包含行驶、等待和电量风险')
    if any(isinstance(v,bool) or not isinstance(v,(int,float)) or not math.isfinite(v) or not 0<=v<=10 for v in weights.values()) or sum(weights.values())<=0:
        raise ValueError('权重须为 0 至 10 的有限数且不能全零')
    return {**value,'weights':dict(weights)}

def priority(job,now,policy,robot_soc=None):
    age=max(0.,now-job.created)
    if job.kind=='charge' and robot_soc is not None and robot_soc<.10:return 0,'极低电量充电'
    if job.kind!='return' and age>=policy['normal_wait_s']:return 1,'等待已超过优先处理阈值'
    if job.priority>=100:return 2,'紧急任务'
    if job.kind=='return':return 5,'空闲返程'
    if job.priority == -100:return 4,'低优先级任务'
    return 3,'普通任务'

def update_weights(policy,previous,low_ratio,waiting_ratio):
    if policy['mode']=='distance':
        return dict(travel=1.,congestion=0.,energy=0.),['按路程分配，保留电量和资源约束']
    target=dict(policy['weights']);reasons=['均衡考虑预计行驶、道路等待与电量余量']
    if policy['mode']=='adaptive':
        if waiting_ratio>=.2:
            target['congestion']*=1+3*min(1.,waiting_ratio)
            reasons.append('道路等待车辆增多，提高拥堵代价')
        if low_ratio>=.2:
            target['energy']*=1+3*min(1.,low_ratio)
            reasons.append('可调度车辆电量偏低，提高电量余量代价')
        if previous:target={k:round(.75*previous[k]+.25*v,6) for k,v in target.items()}
    return target,reasons

def components(policy,empty_m,loaded_m,wait_s,predicted_soc,handling=False):
    travel=empty_m/policy['empty_speed_mps']+loaded_m/policy['loaded_speed_mps']
    if handling:travel+=policy['handling_s']
    return dict(travel=travel,congestion=max(0.,wait_s),
                energy=max(0.,policy['target_soc']-predicted_soc)*policy['battery_penalty_s'])
