from pathlib import Path
import tempfile
import unittest

from warehouse_sim.durable_dispatch import DurableDispatch
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.route_graph import RouteGraph


ROOT = Path(__file__).resolve().parents[1]


class WorkstationRecoveryTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')

    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.addCleanup(self.close_dispatch)
        self.database = Path(temporary.name)/'dispatch.sqlite3'
        self.dispatch = None
        self.open_dispatch()
        self.now = 10
        self.route = dict(map_name='warehouse', database_id='route', records=[], active=[], pending=[])
        self.actions = dict(map_name='warehouse', database_id='actions', records=[], cargo={}, loads={})
        self.refresh()
        self.dispatch.reconcile(self.route, self.actions, self.now)

    def close_dispatch(self):
        if self.dispatch:
            self.dispatch.close()
            self.dispatch = None

    def open_dispatch(self):
        self.fleet = Fleet(self.graph, ['agv01','agv02'], feedback_handling=True)
        self.dispatch = DurableDispatch(self.fleet, self.database, 'warehouse', simulation_controls=True)

    def refresh(self):
        self.fleet.update('agv01','CP_06',.8,self.now)
        self.fleet.update('agv02','CP_12',.8,self.now)

    def transport(self, identity, robot, pickup='AP_PICK_01', dropoff='AP_SHIP_01', **options):
        job, _ = self.dispatch.request(dict(id=identity, type='transport', pickup=pickup,
                                            dropoff=dropoff, robot=robot, **options), self.now)
        return job

    def supply(self):
        commands = self.dispatch.synchronize(self.route, self.actions, self.now)
        for command in commands:
            cargo, source = command['cargo_id'], command['goal']
            self.actions['cargo'][cargo] = dict(location=source, origin=source)
            self.actions['records'].append(dict(body=command, state='SUCCEEDED', result={}))
        self.dispatch.synchronize(self.route, self.actions, self.now)
        return commands

    def tick(self, **evidence):
        return self.dispatch.tick(self.now, executor=self.route, actions=self.actions, **evidence)

    def position(self, station):
        point = self.graph.stations[station]['pos']
        return point['x'], point['y']

    def test_stock_and_shared_dropoff_are_required_for_dispatch(self):
        self.transport('first', 'agv01', priority=100)
        waiting = self.transport('second', 'agv02', pickup='AP_PICK_02')
        self.assertEqual(self.tick(), [])
        prepared = self.dispatch.synchronize(self.route, self.actions, self.now)
        self.assertEqual(prepared,self.dispatch.synchronize(self.route,self.actions,self.now))
        self.assertEqual({command['action'] for command in self.supply()}, {'stock'})
        self.assertEqual([command['robot'] for command in self.tick()], ['agv01'])
        self.assertEqual(waiting.state,'QUEUED')
        self.assertEqual(self.fleet.workstations['AP_SHIP_01']['job'],'first')

    def test_departing_reservation_restores_and_waits_for_current_pose(self):
        job = self.transport('first','agv01')
        self.supply()
        command = self.tick()[0]
        arrival = dict(event='arrived',robot='agv01',task_id=command['task_id'],
                       command_id=command['command_id'],station='AP_PICK_01')
        self.dispatch.route_event(arrival,self.now)
        pickup = self.tick()[0]
        self.actions['loads']['agv01'] = job.id
        self.dispatch.route_event(dict(arrival,event='handling_done',task_id=pickup['task_id'],
                                       command_id=pickup['command_id'],cargo_id=job.id,loaded=True),self.now)
        self.close_dispatch()
        self.open_dispatch()
        self.refresh()
        self.dispatch.reconcile(self.route,self.actions,self.now)
        self.assertFalse(self.dispatch.fenced)
        self.tick(positions={'agv01':self.position('AP_PICK_01')})
        self.tick()
        self.assertEqual(self.fleet.workstations['AP_PICK_01']['phase'],'departing')
        self.tick(positions={'agv01':self.position('CP_06')})
        self.assertNotIn('AP_PICK_01',self.fleet.workstations)
        self.assertEqual(self.fleet.workstations['AP_SHIP_01']['job'],'first')

    def test_takeover_waits_for_exact_terminal_evidence_and_preserves_identity(self):
        job = self.transport('first', 'agv01', allow_transfer=True)
        self.supply()
        original = self.tick()[0]
        failure = dict(event='failed',robot='agv01',task_id=original['task_id'],
                       command_id=original['command_id'],reason='navigation failed')
        self.dispatch.route_event(failure,self.now)
        pose = {'agv01':self.position('CP_06')}
        record = dict(body=original, state='INTERRUPTED', result=failure)
        self.route['records'].append(record)
        self.assertEqual(self.tick(stopped=pose), [])
        record['state'] = 'FAILED'
        self.assertEqual(self.tick(stopped={'agv01':self.position('AP_PICK_01')}), [])
        self.actions['loads']['agv01'] = job.id
        self.assertEqual(self.tick(stopped=pose), [])
        self.actions['loads'].clear()
        cmd = self.tick(stopped=pose)[0]
        self.assertEqual((job.id, job.robot, job.transfer_from), ('first','agv02','agv01'))
        self.assertNotEqual(cmd['task_id'],original['task_id'])
        self.assertTrue(self.fleet.robots['agv01'].blocked)
        self.dispatch.route_event(failure,self.now)
        self.assertEqual(job.execution_id,cmd['task_id'])
        self.assertEqual(job.state,'EXECUTING')

    def test_explicit_cancel_releases_unused_station_without_requeue(self):
        job = self.transport('first','agv01',allow_transfer=True)
        self.supply()
        original = self.tick()[0]
        _, commands = self.dispatch.request(dict(operation='cancel',id=job.id),self.now)
        cancel = commands[0]
        result = dict(event='cancelled',robot='agv01',task_id=original['task_id'],
                      command_id=cancel['command_id'])
        self.dispatch.route_event(result,self.now)
        self.route['records'].append(dict(body=original,state='CANCELLED',result=result))
        self.assertEqual(self.tick(stopped={'agv01':self.position('CP_06')}), [])
        self.assertEqual(job.state,'CANCELLED')
        self.assertEqual(self.fleet.workstations,{})

    def test_restart_waits_for_terminal_receipt_before_handing_off(self):
        self.transport('first','agv01',allow_transfer=True)
        self.supply()
        original = self.tick()[0]
        self.close_dispatch()
        self.open_dispatch()
        self.refresh()
        record = dict(body=original,state='INTERRUPTED',result={})
        self.route['records'].append(record)
        self.dispatch.reconcile(self.route,self.actions,self.now)
        self.assertTrue(self.dispatch.fenced)
        job = self.fleet.jobs['first']
        self.assertEqual(job.state,'RECONCILING')
        record['state'] = 'FAILED'
        self.dispatch.reconcile(self.route,self.actions,self.now)
        self.assertFalse(self.dispatch.fenced)
        self.assertEqual(job.state,'FAILED')
        self.assertEqual(self.tick(stopped={'agv01':self.position('CP_06')})[0]['robot'],'agv02')
        self.assertEqual(job.transfer_from,'agv01')

    def test_queued_pickup_edit_waits_for_new_stock_receipt(self):
        job = self.transport('first','agv01')
        old_stock = self.supply()[0]
        new_task = dict(id=job.id,type='transport',pickup='AP_PICK_02',dropoff=job.goals[1],robot='agv01')
        update = dict(operation='update',id=job.id,task=new_task,expected=['transport',job.goals.copy(),0])
        self.dispatch.request(update,self.now)
        self.assertEqual(self.tick(),[])
        new_stock = self.supply()[0]
        self.assertEqual(new_stock['previous_source'], 'AP_PICK_01')
        self.assertNotEqual(new_stock['command_id'],old_stock['command_id'])
        self.assertEqual(self.tick()[0]['goal'],'AP_PICK_02')
