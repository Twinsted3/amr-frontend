"""Continue only the untraversed part of a stopped vehicle's previous route."""
import math

def latest_executions(records):
    latest={};rejected={}
    for r in records:
        c=r['body']
        if any(c.get(k) for k in ('cancel','pause','resume')):continue
        if (r.get('result') or {}).get('event')=='rejected':rejected[c['robot']]=r
        else:latest[c['robot']]=r
    # A refused second command must not replace the real running/failed owner.
    return {**rejected,**latest}

def restore_reservation(graph,record,saved):
    result=record.get('result') or {};body=record['body']
    if saved.get('task_id') != body['task_id']:
        saved = {}
    nodes=saved.get('nodes',[]) or result.get('route',[])
    started=result.get('motion_started') is not False
    if not nodes and started:raise ValueError('missing failed reservation; restore observed reservation before starting executor')
    points=saved.get('points') or graph.path_points(nodes)
    geometry = dict(nodes=nodes,points=points,motion_started=started)
    if 'segment_goal' in saved:
        for field in ('segment_goal', 'at_checkpoint', 'start_footprint', 'end_footprint'):
            if field in saved:
                geometry[field] = saved[field]
    return geometry

def remaining_route(graph,nodes,pose,tolerance=.65,points=None):
    points=points or graph.path_points(nodes)
    if not points:raise ValueError('missing previous reserved path')
    nearest=min(range(len(points)),key=lambda i:math.hypot(points[i][0]-pose[0],points[i][1]-pose[1]))
    if math.hypot(points[nearest][0]-pose[0],points[nearest][1]-pose[1])>tolerance:
        raise ValueError('vehicle is outside its previous reserved path; manual inspection required')
    remaining=[]
    for node in nodes:
        p=graph.stations[node]['pos']
        index=min(range(len(points)),key=lambda i:math.hypot(points[i][0]-p['x'],points[i][1]-p['y']))
        if index>=nearest:remaining.append(node)
    return remaining or nodes[-1:], [pose]+points[nearest:]
