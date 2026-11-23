"""Bounded, same-priority min-cost matching; no vehicle-side side effects."""
import math
from collections import Counter
from heapq import heappop, heappush
import time
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


def match_job_resources(jobs, *, budget_s=.035, max_branches=24):
    """Bounded optimization of a window with several exclusive resources per job."""
    counts = Counter(resource for job in jobs for resource in job.get('resources', ()))
    # Retain the most contested resource of each job in the flow relaxation.
    primary = [dict(job, resource=max(job.get('resources', ()), key=lambda key: counts[key], default=None))
               for job in jobs]
    order = {job['id']: index for index, job in enumerate(jobs)}
    by_id = {job['id']: job for job in jobs}
    deadline = time.perf_counter() + budget_s

    def score(selected):
        return (-len(selected), tuple(sorted(order[job] for job in selected)),
                sum(costs[job, robot] for job, robot in selected.items()))

    def repair(selected):
        feasible, claimed, conflict = {}, {}, None
        for identity in sorted(selected, key=order.__getitem__):
            resources = by_id[identity].get('resources', ())
            shared = next((claimed[resource] for resource in resources if resource in claimed), None)
            if shared is not None:
                if conflict is None:
                    conflict = (shared, identity)
                continue
            feasible[identity] = selected[identity]
            claimed.update(dict.fromkeys(resources, identity))
        return feasible, conflict

    initial = match_jobs(primary)
    best, conflict = repair(initial)
    if conflict is None:
        return initial, True
    costs = {(job['id'], bid['robot']): round(bid['cost'] * 1e6) for job in jobs for bid in job['bids']}
    seen = {frozenset()}
    pending = [(score(initial), 0, frozenset(), conflict)]
    explored = 0
    while pending:
        bound, _, excluded, conflicts = heappop(pending)
        if bound >= score(best):
            continue
        for identity in conflicts:
            branch = excluded | {identity}
            if branch in seen:
                continue
            if explored >= max_branches or time.perf_counter() >= deadline:
                return best, False
            seen.add(branch)
            explored += 1
            result = match_jobs([job for job in primary if job['id'] not in branch])
            bound = score(result)
            if bound >= score(best):
                continue
            feasible, conflict = repair(result)
            if score(feasible) < score(best):
                best = feasible
            if conflict is not None:
                heappush(pending, (bound, explored, branch, conflict))
    return best, True
