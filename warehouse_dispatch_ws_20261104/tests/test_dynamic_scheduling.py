"""Decision correctness tests, not physical-motion or 100-AMR acceptance."""
import copy
import itertools
import random
import tempfile
import unittest
from pathlib import Path
from warehouse_sim.assignment import match_job_resources, match_jobs
from warehouse_sim.fleet_core import Fleet, Job
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.scheduling_policy import DEFAULT_POLICY, validate_policy, update_weights, priority

ROOT=Path(__file__).parents[1]

class SolverTests(unittest.TestCase):
    def test_paired_workstations_match_exhaustive_oracle(self):
        rng = random.Random(68)
        for _ in range(40):
            jobs = [dict(id=str(i), resources=rng.sample('WXYZ', rng.randint(1, 2)),
                         bids=[dict(robot=r, cost=rng.randint(0, 20)) for r in 'abc' if rng.random() < .8])
                    for i in range(5)]
            alternatives = [[None, *(bid['robot'] for bid in job['bids'])] for job in jobs]
            costs = {(i, bid['robot']): bid['cost'] for i, job in enumerate(jobs) for bid in job['bids']}
            def score(plan):
                indices = tuple(i for i, name in enumerate(plan) if name is not None)
                return -len(indices), indices, sum(costs[i, plan[i]] for i in indices)
            valid = []
            for plan in itertools.product(*alternatives):
                used = [name for name in plan if name is not None]
                occupied = [resource for name, job in zip(plan, jobs) if name is not None
                            for resource in job['resources']]
                if len(set(used)) == len(used) and len(set(occupied)) == len(occupied):
                    valid.append(score(plan))
            chosen, optimal = match_job_resources(jobs, budget_s=1., max_branches=256)
            self.assertTrue(optimal)
            self.assertEqual(score([chosen.get(job['id']) for job in jobs]), min(valid))

    def test_limit_returns_feasible_plan_with_no_duplicate_station(self):
        jobs = [dict(id=name, resources=stations, bids=[dict(robot=name, cost=0)])
                for name, stations in (('a', ('X', 'Y')), ('b', ('Y', 'Z')), ('c', ('Z', 'X')))]
        selected, complete = match_job_resources(jobs, max_branches=0)
        self.assertFalse(complete)
        self.assertEqual(len(selected), 1)

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

    def test_closed_edge_refreshes_bid_paths_and_uses_declared_vehicle_energy(self):
        self.policy(mode='distance')
        job = self.task()
        self.assertEqual(self.f.bids(job, 0)[0]['robot'], 'a')
        self.f.set_dispatch_closures({('CP_06', 'LM_DOCK_06')})
        self.assertEqual(self.f.bids(job, 0)[0]['robot'], 'b')
        self.f.set_dispatch_closures(())
        self.f.update('a', 'CP_06', .25, 0)
        self.f.robots['a'].performance = {'empty_soc_per_m': .01}
        distant = self.f.submit(dict(id='distant', type='move', goal='LM_63_49'), 0)
        self.assertEqual({bid['robot'] for bid in self.f.bids(distant, 0)}, {'b'})

    def test_deteriorated_idle_reservation_is_reassigned_with_first_timestamp_preserved(self):
        self.policy(mode='distance')
        job = self.task()
        self.f.reserve_next(job, 0, ())
        self.assertEqual(job.next_robot, 'a')
        first = job.first_allocation_at
        self.f.set_dispatch_closures({('CP_06', 'LM_DOCK_06')})
        self.f.tick(1)
        self.assertEqual(job.robot, 'b')
        self.assertEqual(job.first_allocation_at, first)

    def test_batch_budget_defers_unexamined_work_without_claiming_vehicle(self):
        job = self.task()
        self.f.reserve_batch_next([job], 0, (), budget_s=0)
        self.assertIsNone(job.next_robot)
        self.assertEqual(job.admission['reasons'], {'admission_budget': 1})
        self.f.tick(0)
        self.assertIsNotNone(job.robot)

    def test_busy_batch_booking_remains_eligible_for_earlier_safe_assignment(self):
        self.policy(mode='distance')
        busy = self.task('busy', robot='a')
        self.f.tick(0)
        self.assertEqual(busy.robot, 'a')
        self.f.update('b', 'CP_24', .8, 1)
        job = self.task('next')
        self.f.reserve_batch_next([job], 1, ())
        self.assertEqual(job.next_robot, 'a')
        first = job.first_allocation_at
        # The work waiting behind A can use the earlier idle B once the
        # original destination is released, without altering the first time.
        self.f.destinations.clear()
        self.f.tick(1)
        self.assertEqual(job.robot, 'b')
        self.assertEqual(job.first_allocation_at, first)
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

    def test_normal_order_ages_ahead_of_continually_submitted_urgent_orders(self):
        self.policy(normal_wait_s=30.)
        old = self.task('normal')
        for now in range(1, 32):
            self.f.submit(dict(id=f'urgent-{now}', type='standby', goal='LM_DOCK_12', priority=100), now)
        self.f.robots['b'].blocked = True
        self.f.update('a', 'CP_06', .8, 31)
        self.f.tick(31)
        self.assertEqual(old.state, 'EXECUTING')
        self.assertTrue(all(job.state == 'QUEUED' for job in self.f.jobs.values() if job is not old))

    def test_window_keeps_only_qualified_vehicle_for_next_window(self):
        self.policy(mode='distance')
        self.f.robots['a'].model = 'special'
        flexible = self.task('00-flexible')
        for index in range(31):
            self.task(f'01-unavailable-{index:02d}', requirements={'models': ['unknown']})
        restricted = self.f.submit(dict(id='02-special', type='move', goal='LM_DOCK_12',
                                        requirements={'models': ['special']}), 0)
        self.assertEqual(self.f.bids(flexible, 0)[0]['robot'], 'a')
        self.f.tick(0)
        self.assertEqual(flexible.robot, 'b')
        self.assertEqual(restricted.robot, 'a')

    def test_critical_charge_has_first_access_to_single_available_bay(self):
        self.f.update('a', 'CP_06', .18, 0)
        self.f.update('b', 'LM_DOCK_06', .08, 0)
        self.f.destinations.update({'CP_12': 'other', 'CP_18': 'other', 'CP_24': 'other'})
        self.f.schedule_low_charge(0, ())
        # a remains physically parked at CP_06 so only a may reserve it.
        charge, = list(self.f.jobs.values())
        self.assertEqual(charge.requested_robot, 'a')
        self.assertIn('b', self.f.charge_waiting)
        self.f.jobs.clear()
        self.f.update('a', 'LM_DOCK_12', .18, 1)
        self.f.update('b', 'LM_DOCK_06', .08, 1)
        self.f.schedule_low_charge(1, ())
        charge, = list(self.f.jobs.values())
        self.assertEqual(charge.requested_robot, 'b')
        self.assertIn('a', self.f.charge_waiting)

    def test_release_forecast_never_reserves_an_occupied_fast_charger(self):
        self.f.update('a', 'LM_DOCK_06', .15, 0)
        self.f.update('b', 'CP_12', .79, 0)
        self.f.charger_rates = {'CP_06': .001, 'CP_12': .05, 'CP_18': .001, 'CP_24': .001}
        current = self.f.submit(dict(id='charge-b', type='charge', robot='b', goal='CP_12'), 0)
        current.state = 'CHARGING'
        current.robot = 'b'
        self.f.robots['b'].job = current.id
        self.f.chargers['CP_12'] = 'b'
        self.f.schedule_low_charge(0, ())
        self.assertIn('CP_12', self.f.charge_forecasts)
        self.assertIn('预计更快', self.f.charge_waiting['a'])
        self.assertEqual(self.f.chargers, {'CP_12': 'b'})
        self.assertEqual(list(self.f.jobs), ['charge-b'])
        self.f.update('a', 'LM_DOCK_06', .15, 60)
        self.f.update('b', 'CP_12', .79, 60)
        self.f.schedule_low_charge(60, ())
        scheduled, = [job for job in self.f.jobs.values() if job is not current]
        self.assertNotEqual(scheduled.goals[0], 'CP_12')

    def test_idle_topup_keeps_two_robots_available_and_yields_to_queued_work(self):
        fleet = Fleet(self.graph, ['a', 'b', 'c'])
        fleet.charge_homes = {'a': 'LM_DOCK_06', 'b': 'CP_12', 'c': 'CP_18'}
        for name, station in fleet.charge_homes.items():
            fleet.update(name, station, .35, 0)
        job = fleet.submit(dict(id='waiting', type='move', goal='LM_DOCK_12',
                                requirements={'models': ['missing']}), 0)
        fleet.schedule_idle_topup(0, ())
        self.assertEqual(list(fleet.jobs), ['waiting'])
        fleet.cancel(job.id)
        fleet.schedule_idle_topup(0, ())
        scheduled, = [item for item in fleet.jobs.values() if item.kind == 'charge']
        self.assertIsNotNone(scheduled.requested_robot)
        self.assertEqual(fleet.last_idle_topup, 0)
        fleet.submit(dict(id='new-order', type='move', goal='LM_DOCK_12'), 1)
        fleet.tick(1)
        self.assertEqual(scheduled.state, 'CANCELLED')
        self.assertEqual(fleet.jobs['new-order'].state, 'EXECUTING')
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
