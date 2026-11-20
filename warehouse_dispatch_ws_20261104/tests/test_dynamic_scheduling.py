"""Decision correctness tests, not physical-motion or 100-AMR acceptance."""
import copy
import itertools
import random
import tempfile
import unittest
from pathlib import Path
from warehouse_sim.assignment import match_jobs
from warehouse_sim.fleet_core import Fleet, Job
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.scheduling_policy import DEFAULT_POLICY, validate_policy, update_weights, priority

ROOT=Path(__file__).parents[1]

class SolverTests(unittest.TestCase):
    def test_all_twelve_candidates_used_when_first_ten_are_identical(self):
        bids=[dict(robot=str(i),cost=i) for i in range(12)]
        allocation=match_jobs([dict(id=str(i),bids=bids) for i in range(12)])
        self.assertEqual(len(allocation),12)
        self.assertEqual(len(set(allocation.values())),12)

    def test_destination_capacity_and_fifo_against_exhaustive_oracle(self):
        rng=random.Random(11)
        for _ in range(60):
            jobs=[dict(id=str(i),resource=rng.choice([None,'bay']),
                       bids=[dict(robot=r,cost=rng.randint(0,30)) for r in 'ABC' if rng.random()>.2]) for i in range(4)]
            options=[[None]+[b['robot'] for b in j['bids']] for j in jobs]
            feasible=[]
            for choice in itertools.product(*options):
                robots=[r for r in choice if r is not None]
                resources=[j['resource'] for j,r in zip(jobs,choice) if r is not None and j['resource']]
                if len(set(robots))!=len(robots) or len(set(resources))!=len(resources):continue
                ids=tuple(i for i,r in enumerate(choice) if r is not None)
                cost=sum(next(b['cost'] for b in jobs[i]['bids'] if b['robot']==r) for i,r in enumerate(choice) if r is not None)
                feasible.append((-len(robots),ids,cost))
            result=match_jobs(jobs)
            ids=tuple(i for i,j in enumerate(jobs) if j['id'] in result)
            cost=sum(next(b['cost'] for b in j['bids'] if b['robot']==result[j['id']]) for j in jobs if j['id'] in result)
            self.assertEqual((-len(result),ids,cost),min(feasible))

    def test_duplicate_candidate_rejected(self):
        with self.assertRaises(ValueError):
            match_jobs([dict(id='j',bids=[dict(robot='a',cost=1),dict(robot='a',cost=2)])])

class DynamicPolicyTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):cls.graph=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
    def setUp(self):
        self.f=Fleet(self.graph,['a','b'])
        self.f.update('a','CP_06',.8,0);self.f.update('b','CP_12',.8,0)
    def policy(self,**changes):
        self.f.operation(dict(operation='set_policy',expected_revision=self.f.policy_revision,
                              policy={**self.f.policy,**changes}),0)
    def task(self,id='j',**changes):
        return self.f.submit(dict(id=id,type='standby',goal='LM_DOCK_06',**changes),0)
    def test_congestion_changes_vehicle_choice(self):
        self.policy(mode='distance');j=self.task()
        self.assertEqual(self.f.bids(j,0)[0]['robot'],'a')
        path=self.graph.route('CP_06',j.goals[0]);self.f.edge_wait_s[path[0],path[1]]=120
        self.policy(mode='balanced')
        self.assertEqual(self.f.bids(j,0)[0]['robot'],'b')
    def test_battery_margin_changes_choice_even_above_low_threshold(self):
        self.f.update('a','CP_06',.30,0)
        self.policy(mode='distance');j=self.task()
        self.assertEqual(self.f.bids(j,0)[0]['robot'],'a')
        self.policy(mode='balanced')
        self.assertEqual(self.f.bids(j,0)[0]['robot'],'b')
    def test_hard_energy_reserve_includes_route_to_charger(self):
        self.policy(mode='distance',energy_per_m=.002)
        self.f.update('a','CP_06',.21,0)
        j=self.f.submit(dict(id='j',type='standby',goal='LM_63_49'),0)
        self.assertNotIn('a',[b['robot'] for b in self.f.bids(j,0)])
        self.assertIn('充电点',j.exclusions['a'])
    def test_overdue_normal_precedes_new_urgent_without_preempting(self):
        self.policy(normal_wait_s=30.)
        old=self.task('old');urgent=self.f.submit(dict(id='urgent',type='standby',goal='LM_DOCK_12',priority=100),31)
        self.f.robots['b'].blocked=True;self.f.update('a','CP_06',.8,31)
        self.f.tick(31)
        self.assertEqual(old.robot,'a');self.assertEqual(urgent.state,'QUEUED')
    def test_critical_charge_precedes_overdue_order(self):
        charge=Job('c','charge',['CP_06'],100,30)
        old=Job('j','move',['LM_DOCK_06'],0,0)
        p={**DEFAULT_POLICY,'normal_wait_s':30.}
        self.assertLess(priority(charge,31,p,.09)[0],priority(old,31,p)[0])
    def test_weights_respond_smoothly_and_return_to_base(self):
        p=validate_policy(DEFAULT_POLICY);base=dict(p['weights'])
        weights,_=update_weights(p,base,1.,1.)
        self.assertGreater(weights['energy'],base['energy']);self.assertLess(weights['energy'],4.)
        restored,_=update_weights(p,weights,0.,0.)
        self.assertLess(restored['energy'],weights['energy'])
    def test_allocation_has_auditable_objective_and_keeps_original_policy(self):
        j=self.task();self.f.tick(0);saved=copy.deepcopy(j.allocation)
        b=saved['chosen']
        self.assertAlmostEqual(b['cost'],sum(b['weights'][k]*v for k,v in b['components_s'].items()))
        self.policy(mode='distance')
        self.assertEqual(j.allocation,saved);self.assertEqual(j.state,'EXECUTING')
    def test_policy_conflict_and_invalid_parameters_cannot_change_state(self):
        self.policy(mode='distance');saved=copy.deepcopy(self.f.policy)
        with self.assertRaises(ValueError):self.f.operation(dict(operation='set_policy',expected_revision=1,policy={**saved,'mode':'balanced'}),0)
        with self.assertRaises(ValueError):self.policy(reserve_soc=float('nan'))
        self.assertEqual(self.f.policy,saved)
    def test_policy_survives_restart_and_same_request_retry(self):
        with tempfile.TemporaryDirectory() as tmp:
            path=Path(tmp)/'state'
            s=DurableDispatch(self.f,path,'warehouse')
            request=dict(operation='set_policy',expected_revision=1,policy={**self.f.policy,'mode':'balanced'})
            s.request(request,0);s.request(request,1);self.assertEqual(self.f.policy_revision,2);s.close()
            other=Fleet(self.graph,['a','b']);s=DurableDispatch(other,path,'warehouse')
            self.assertEqual(other.policy['mode'],'balanced');self.assertEqual(other.policy_revision,2);s.close()
    def test_restart_accepts_pre_policy_snapshot(self):
        with tempfile.TemporaryDirectory() as tmp:
            s=DurableDispatch(self.f,Path(tmp)/'state','warehouse')
            old=s.state();old['fleet'].pop('scheduling')
            s.restore(old,1)
            self.assertEqual(self.f.policy['mode'],'adaptive');s.close()

if __name__=='__main__':unittest.main()
