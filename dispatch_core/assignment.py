"""Bounded, same-priority min-cost matching; no vehicle-side side effects."""
import math
import networkx as nx

SOLVER = 'networkx_min_cost_max_flow'

def match_jobs(jobs,window=32,max_candidates=None):
    """Maximize assignments, prefer older feasible jobs, then minimize bid cost.

    jobs are already ordered by dispatch priority/age. Resource nodes give CP
    endpoints capacity one. The residual flow reroutes an earlier tentative
    choice when it would unnecessarily strand a more constrained job.
    """
    if len(jobs)>window:raise ValueError('assignment window exceeded')
    if len({j['id'] for j in jobs})!=len(jobs):raise ValueError('duplicate job id in assignment window')
    if window>32:raise ValueError('assignment window exceeded')
    if max_candidates is not None and (type(max_candidates) is not int or max_candidates<1):
        raise ValueError('invalid candidate limit')
    if not jobs:return {}
    rows=[];maximum=0
    for job in jobs:
        seen=set();bids=[]
        for bid in job['bids']:
            robot,cost=bid['robot'],bid['cost']
            if robot in seen:raise ValueError('duplicate candidate vehicle')
            seen.add(robot)
            if isinstance(cost,bool) or not isinstance(cost,(int,float)) or not math.isfinite(cost) or not 0<=cost<=1e9:
                raise ValueError('bid cost must be finite, nonnegative and <=1e9')
            encoded=round(cost*1000000);maximum=max(maximum,encoded)
            bids.append((robot,encoded))
        rows.append(sorted(bids,key=lambda b:(b[1],b[0]))[:max_candidates])
    # Integer costs avoid float residual errors. FIFO selection dominates the
    # entire bid-cost sum; max_flow_min_cost maximizes cardinality first.
    scale=len(jobs)*maximum+1
    source,sink=('source',),('sink',)
    graph=nx.DiGraph();graph.add_nodes_from((source,sink))
    for index,j in enumerate(jobs):
        task=('job',j['id']);resource=j.get('resource')
        parent=source
        if resource:
            parent=('resource',resource)
            graph.add_edge(source,parent,capacity=1,weight=0)
        graph.add_edge(parent,task,capacity=1,weight=-(1<<(len(jobs)-index-1))*scale)
        for robot,cost in rows[index]:
            graph.add_edge(task,('robot',robot),capacity=1,weight=cost)
            graph.add_edge(('robot',robot),sink,capacity=1,weight=0)
    flow=nx.max_flow_min_cost(graph,source,sink)
    return {j['id']:robot for j,bids in zip(jobs,rows) for robot,_ in bids
            if flow.get(('job',j['id']),{}).get(('robot',robot),0)}
