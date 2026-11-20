import itertools,json,random,tempfile,unittest
from pathlib import Path
from warehouse_sim.assignment import match_jobs
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.web_requests import validate_request

def job(id,**costs):return dict(id=id,bids=[dict(robot=r,cost=c) for r,c in sorted(costs.items(),key=lambda p:p[1])])

class MatchingTests(unittest.TestCase):
    def test_reassign_flexible_job_instead_of_stranding_constrained_job(self):
        self.assertEqual(match_jobs([job('flex',A=1,B=2),job('only-A',A=1)]),{'flex':'B','only-A':'A'})
    def test_total_cost_replaces_individual_greedy_choice(self):
        self.assertEqual(match_jobs([job('old',A=1,B=2),job('next',A=2,B=100)]),{'old':'B','next':'A'})
    def test_fifo_selection_precedes_cheaper_younger_order(self):
        self.assertEqual(match_jobs([job('old',A=100),job('young',A=1)]),{'old':'A'})
    def test_destination_capacity_is_shared_across_candidates(self):
        a=job('one',A=1,B=2);b=job('two',A=2,B=1);a['resource']=b['resource']='CP_24'
        self.assertEqual(match_jobs([a,b]),{'one':'A'})
    def test_matches_brute_force_oracle_on_small_random_graphs(self):
        rng=random.Random(20261103)
        for case in range(60):
            jobs=[]
            for i in range(4):
                costs={r:rng.randint(0,20) for r in ('A','B','C') if rng.random()>.3};jobs.append(job(str(i),**costs))
            options=[[None]+[b['robot'] for b in j['bids']] for j in jobs]
            candidates=[]
            for choice in itertools.product(*options):
                used=[r for r in choice if r];
                if len(used)!=len(set(used)):continue
                ids=tuple(i for i,r in enumerate(choice) if r)
                cost=sum(next(b['cost'] for b in jobs[i]['bids'] if b['robot']==r) for i,r in enumerate(choice) if r)
                candidates.append(((-len(used),ids,cost),choice))
            expected=min(x[0] for x in candidates);actual=match_jobs(jobs)
            actual_ids=tuple(i for i,j in enumerate(jobs) if j['id'] in actual)
            actual_cost=sum(next(b['cost'] for b in j['bids'] if b['robot']==actual[j['id']]) for j in jobs if j['id'] in actual)
            self.assertEqual((-len(actual),actual_ids,actual_cost),expected,case)
    def test_invalid_cost_and_oversized_window_rejected(self):
        with self.assertRaises(ValueError):match_jobs([job('j',A=float('nan'))])
        with self.assertRaises(ValueError):match_jobs([job(str(i),A=1) for i in range(33)])

class BatchContractTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.graph=RouteGraph(Path(__file__).parents[1]/'src/warehouse_sim/maps/warehouse.smap')
        self.f=Fleet(self.graph,['agv01','agv02']);self.s=DurableDispatch(self.f,Path(self.tmp.name)/'state','warehouse')
    def tearDown(self):self.s.close();self.tmp.cleanup()
    def req(self,id,goal='AP_PICK_01'):return dict(id=id,type='move',goal=goal)
    def test_atomic_batch_and_retry_survive_restart(self):
        request=dict(operation='submit_batch',tasks=[self.req('a'),self.req('b')])
        self.s.request(request,1);self.s.request(request,2);self.assertEqual(len(self.f.jobs),2)
        self.s.close();self.s=DurableDispatch(Fleet(self.graph,['agv01','agv02']),Path(self.tmp.name)/'state','warehouse')
        self.assertEqual(set(self.s.fleet.jobs),{'a','b'})
    def test_bad_item_does_not_partially_create_batch(self):
        with self.assertRaises(ValueError):self.s.request(dict(operation='submit_batch',tasks=[self.req('a'),self.req('b','bad')]),1)
        self.assertEqual(self.f.jobs,{})
        self.assertNotIn('batch_accepted',[e['event'] for e in self.f.events])
    def test_conflict_against_existing_order_rolls_back_other_items(self):
        self.s.request(self.req('existing'),1)
        with self.assertRaises(ValueError):self.s.request(dict(operation='submit_batch',tasks=[self.req('new'),self.req('existing','AP_PICK_03')]),2)
        self.assertEqual(set(self.f.jobs),{'existing'})
    def test_web_batch_cannot_include_control_or_forced_vehicle(self):
        for item in [dict(operation='cancel',id='a'),dict(self.req('a'),robot='agv01')]:
            with self.assertRaises(ValueError):validate_request(dict(operation='submit_batch',tasks=[item]),self.graph.stations)
    def test_cached_static_route_never_bypasses_dynamic_blocking(self):
        original=self.graph.route('CP_06','AP_PICK_01');original.clear()
        self.assertTrue(self.graph.route('CP_06','AP_PICK_01'))
        with self.assertRaises(ValueError):self.graph.route('CP_06','AP_PICK_01',forbidden_nodes={'AP_PICK_01'})
