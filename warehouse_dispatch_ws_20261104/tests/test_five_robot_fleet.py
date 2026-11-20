import math
import tempfile
import unittest
from pathlib import Path

from warehouse_sim.layout import HOME_STATIONS, SPAWN_POSES, parking_homes
from warehouse_sim.layout import obstacle_rectangles
import json
import xml.etree.ElementTree as ET
from warehouse_sim.route_graph import RouteGraph, occupied_cells
from warehouse_sim.fleet_core import Fleet
from warehouse_sim.durable_dispatch import DurableDispatch

ROOT = Path(__file__).parents[1]


class FiveRobotFleetTests(unittest.TestCase):
    def setUp(self):
        self.graph = RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
        self.names = [f'agv{i:02d}' for i in range(1, 6)]
        self.fleet = Fleet(self.graph, self.names, feedback_handling=True)
        self.homes = parking_homes(self.names)
        for n in self.names:
            self.fleet.update(n, self.homes[n], .65, 10)

    def test_fifth_home_matches_spawn_and_does_not_block_main_junction(self):
        self.assertEqual(self.homes['agv05'], 'PP_05')
        self.assertEqual(len(set(self.homes.values())), 5)
        p = self.graph.stations['PP_05']['pos']
        self.assertEqual(SPAWN_POSES[4][:2], (p['x'], p['y']))
        footprint = occupied_cells([SPAWN_POSES[4]])
        junction = occupied_cells([(63., 49., 0.)])
        self.assertTrue(footprint.isdisjoint(junction))
        for home in self.homes.values():
            self.assertTrue(self.graph.route(home, 'AP_RECEIVE_01'))
            self.assertTrue(self.graph.route('AP_RECEIVE_01', home))

    def test_five_business_jobs_choose_five_distinct_robots(self):
        goals = ['LM_DOCK_06', 'LM_DOCK_12', 'LM_DOCK_18', 'LM_DOCK_24', 'LM_63_49']
        for i, goal in enumerate(goals):
            self.fleet.submit(dict(id=str(i), type='standby', goal=goal), 10)
        commands = self.fleet.tick(10)
        self.assertEqual(len(commands), 5)
        self.assertEqual({c['robot'] for c in commands}, set(self.names))

    def test_occupied_parking_bay_cannot_be_assigned_to_other_robot(self):
        job = self.fleet.submit(dict(id='park',type='standby',goal='PP_05',robot='agv01'),10)
        self.assertEqual(self.fleet.tick(10), [])
        self.assertEqual(job.state, 'QUEUED')
        self.assertIn('占用', job.exclusions['agv01'])

    def test_empty_parking_bay_has_capacity_one_and_survives_failed_restart(self):
        self.fleet.update('agv05','LM_63_49',.65,10)
        for name in ('agv01','agv02'):
            self.fleet.submit(dict(id=name,type='standby',goal='PP_05',robot=name),10)
        commands=self.fleet.tick(10)
        self.assertEqual(len(commands),1)
        selected=commands[0]['robot']
        self.fleet.fail(self.fleet.jobs[selected],'simulated drive failure')
        with tempfile.TemporaryDirectory() as d:
            path=Path(d)/'state'
            store=DurableDispatch(self.fleet,path,'warehouse');store.close()
            restored=Fleet(self.graph,self.names,feedback_handling=True)
            store=DurableDispatch(restored,path,'warehouse')
            self.assertEqual(restored.destinations['PP_05'],selected)
            store.close()

    def test_fifth_robot_vacates_charger_to_separate_home(self):
        self.fleet.update('agv04','AP_PICK_01',.65,10)
        self.fleet.update('agv05','CP_24',.81,10)
        job=self.fleet.submit(dict(id='charge',type='charge',robot='agv05',goal='CP_24'),10)
        self.fleet.tick(10);self.fleet.finish(job)
        plans=self.fleet.return_plan(self.homes)
        self.assertEqual(plans,[dict(id='park-agv05-charge',type='return',robot='agv05',goal='PP_05')])

    def test_existing_four_car_charge_stays_at_home(self):
        self.fleet.update('agv01','CP_06',.81,10)
        job=self.fleet.submit(dict(id='charge',type='charge',robot='agv01',goal='CP_06'),10)
        self.fleet.tick(10);self.fleet.finish(job)
        self.assertEqual(self.fleet.return_plan(self.homes),[])

    def test_parking_bay_is_not_a_pickup_or_dropoff(self):
        with self.assertRaisesRegex(ValueError,'parking bays'):
            self.fleet.submit(dict(id='bad',type='transport',pickup='PP_05',dropoff='AP_SHIP_01'),10)

    def test_shared_chargers_full_keeps_low_fifth_robot_unassigned(self):
        self.fleet.update('agv05','PP_05',.1,10)
        self.assertEqual(self.fleet.tick(10),[])
        self.assertFalse(any(j.kind=='charge' and j.requested_robot=='agv05' for j in self.fleet.jobs.values()))
        # No free bay is a known limitation, not permission to charge through an occupant.
        self.assertFalse(self.fleet.robots['agv05'].blocked)
        self.assertIn('充电位',self.fleet.snapshot()['charge_waiting']['agv05'])

    def test_low_fifth_robot_uses_free_shared_charger(self):
        self.fleet.update('agv04','AP_PICK_01',.65,10)
        self.fleet.update('agv05','PP_05',.1,10)
        commands=self.fleet.tick(10)
        self.assertEqual(len(commands),1)
        self.assertEqual(commands[0]['robot'],'agv05')
        self.assertEqual(commands[0]['goal'],'CP_24')

    def test_all_solid_warehouse_columns_are_known_obstacles(self):
        world=ET.parse(ROOT/'src/warehouse_sim/worlds/warehouse.sdf').getroot()
        known=obstacle_rectangles();count=0
        for collision in world.findall('.//model[@name="warehouse_walls"]/link/collision'):
            if 'column' not in collision.attrib['name']:continue
            x,y,*_=map(float,collision.findtext('pose').split())
            width,height,*_=map(float,collision.findtext('geometry/box/size').split())
            self.assertIn((x,y,width,height),known);count+=1
        self.assertEqual(count,13)

    def test_original_parking_too_close_to_column_is_rejected(self):
        data=json.loads((ROOT/'src/warehouse_sim/maps/warehouse.smap').read_text(encoding='utf-8'))
        next(p for p in data['advancedPointList'] if p['instanceName']=='PP_05')['pos']['x']=69.
        with self.assertRaisesRegex(ValueError,'rack or wall'):
            RouteGraph(document=data)


if __name__=='__main__':
    unittest.main()
