"""Validation at the interactive dashboard boundary; ROS-independent."""
import uuid

from warehouse_sim.scheduling_policy import valid_business_priority

MAX_BATCH_TASKS = 100

def validate_request(value, stations):
    if not isinstance(value, dict):
        raise ValueError('请求必须是JSON对象')
    req = dict(value)
    if req.get('operation')=='submit_batch':
        items=req.get('tasks')
        if not isinstance(items,list) or not 1<=len(items)<=MAX_BATCH_TASKS:raise ValueError(f'批量任务须为1至{MAX_BATCH_TASKS}项')
        normalized=[]
        for item in items:
            if not isinstance(item,dict) or 'operation' in item:raise ValueError('批量只接受任务，不接受控制操作')
            task=validate_request(item,stations);task.pop('request_id',None);normalized.append(task)
        if len({t['id'] for t in normalized})!=len(normalized):raise ValueError('批内任务编号不能重复')
        req['tasks']=normalized
    elif 'operation' in req:
        vehicle_operations = ('enable_vehicle', 'disable_vehicle', 'remove_vehicle', 'request_charge', 'set_vehicle_profile')
        if req['operation'] not in ('pause','resume','cancel','hold_dispatch','set_weights','set_policy','recover_execution','update', *vehicle_operations):
            raise ValueError('网页不支持该操作')
        if req['operation'] in vehicle_operations:
            robot = req.get('robot')
            if not isinstance(robot, str) or not 1 <= len(robot) <= 120:
                raise ValueError('请指定车辆编号')
        if req['operation'] == 'request_charge':
            identity = req.get('id')
            if not isinstance(identity, str) or not 1 <= len(identity) <= 120:
                raise ValueError('请指定充电任务编号')
            goal = req.get('goal')
            if goal is not None and (not isinstance(goal, str) or not goal.startswith('CP_') or goal not in stations):
                raise ValueError('请从当前地图选择有效的充电位，或使用自动选择')
        if req['operation'] == 'update':
            task = req.get('task')
            if not isinstance(task, dict) or 'operation' in task or task.get('id') != req.get('id'):
                raise ValueError('编辑参数须包含相同编号的任务')
            task = validate_request(task, stations)
            task.pop('request_id', None)
            req['task'] = task
    else:
        if req.get('type') not in ('transport','move','standby'):
            raise ValueError('请选择搬运、移动或待命任务')
        if req.get('robot'):
            raise ValueError('网页任务由调度自动选车，不指定机器人')
        goals = [req.get('pickup'),req.get('dropoff')] if req['type']=='transport' else [req.get('goal')]
        if any(not isinstance(g, str) or g not in stations for g in goals):
            raise ValueError('请选择有效站点')
        if len(goals)==2 and goals[0]==goals[1]:
            raise ValueError('起点与终点不能相同')
        if not isinstance(req.get('id'),str) or not 1<=len(req['id'])<=120:
            raise ValueError('任务编号需为1至120个字符')
        if not valid_business_priority(req.get('priority', 0)):
            raise ValueError('优先级须为高、中或低')
    req['request_id'] = uuid.uuid4().hex
    return req
