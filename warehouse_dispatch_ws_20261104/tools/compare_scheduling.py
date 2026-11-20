"""Deterministic decision comparisons on the warehouse graph, not Gazebo QA.

Both choices are evaluated under the same adaptive objective. Lower model cost
is not proof of physical throughput, actual energy savings or production KPIs.
"""
import json
from pathlib import Path
import sys

ROOT=Path(__file__).resolve().parents[1]
sys.path[:0]=[str(ROOT/'.dispatch-deps'),str(ROOT/'src/warehouse_sim')]
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.assignment import match_jobs

def run():
    graph=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
    results=[]
    for scenario in ('normal','low_margin','congestion'):
        fleet=Fleet(graph,['a','b'])
        fleet.update('a','CP_06',.30 if scenario=='low_margin' else .8,0)
        fleet.update('b','CP_12',.8,0)
        job=fleet.submit(dict(id=scenario,type='standby',goal='LM_DOCK_06'),0)
        if scenario=='congestion':
            route=graph.route('CP_06',job.goals[0])
            fleet.edge_wait_s[route[0],route[1]]=120.
            fleet.waiting_robots={'a'}
        fleet.operation(dict(operation='set_policy',expected_revision=fleet.policy_revision,
                             policy={**fleet.policy,'mode':'distance'}),0)
        baseline=fleet.bids(job,0)[0]['robot']
        fleet.operation(dict(operation='set_policy',expected_revision=fleet.policy_revision,
                             policy={**fleet.policy,'mode':'adaptive'}),0)
        candidates=fleet.bids(job,0);chosen=candidates[0]
        baseline_cost=next(b['cost'] for b in candidates if b['robot']==baseline)
        results.append(dict(scenario=scenario,distance_choice=baseline,adaptive_choice=chosen['robot'],
                            baseline_evaluated_under_adaptive_cost=baseline_cost,
                            adaptive_model_cost=chosen['cost'],candidates=candidates,
                            weights=fleet.policy_state['weights']))
    bids=[dict(robot=str(i),cost=i) for i in range(12)]
    allocated=match_jobs([dict(id=str(i),bids=bids) for i in range(12)])
    return dict(scope='algorithm decisions only; no physical or 100-AMR performance claim',
                scenarios=results,twelve_jobs_assigned=len(allocated),
                checks=dict(full_candidate_coverage=len(allocated)==12,
                            normal_uses_nearby=results[0]['adaptive_choice']=='a',
                            low_margin_changes_vehicle=results[1]['adaptive_choice']=='b',
                            congestion_changes_vehicle=results[2]['adaptive_choice']=='b',
                            no_worse_model_cost=all(r['adaptive_model_cost']<=r['baseline_evaluated_under_adaptive_cost'] for r in results)))

if __name__=='__main__':
    result=run()
    dest=ROOT/'artifacts/dynamic_scheduling_20261111/decision_comparison.json'
    dest.parent.mkdir(parents=True,exist_ok=True)
    dest.write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf8')
    print(json.dumps(result,ensure_ascii=False,indent=2))
    raise SystemExit(0 if all(result['checks'].values()) else 1)
