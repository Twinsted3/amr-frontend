"""Guard the gap between business completion and auto-return job creation."""
import ast
import copy
from pathlib import Path
import unittest

ROOT=Path(__file__).resolve().parents[1]
tree=ast.parse((ROOT/'tools/overall_demo.py').read_text(encoding='utf8'))
fn=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='fleet_parked')
scope={};exec(compile(ast.Module(body=[fn],type_ignores=[]),'overall_demo.py','exec'),scope)
parked=scope['fleet_parked']


class CompletionTests(unittest.TestCase):
    def setUp(self):
        self.state=dict(jobs={},robots={n:dict(station=cp,job=None) for n,cp in
                         [('agv01','CP_06'),('agv02','CP_12'),('agv03','CP_18')]})
    def test_all_home_and_unassigned(self):self.assertTrue(parked(self.state))
    def test_completed_business_before_return_job_exists_is_not_done(self):
        self.state['robots']['agv01']['station']='AP_SHIP_01'
        self.assertFalse(parked(self.state))
    def test_return_still_executing_even_at_home_is_not_done(self):
        self.state['jobs']['park-agv01-1']=dict(id='park-agv01-1',state='EXECUTING')
        self.assertFalse(parked(self.state))
    def test_charge_not_complete_is_not_done(self):
        self.state['robots']['agv03']['job']='autocharge'
        self.assertFalse(parked(self.state))
    def test_missing_robot_is_not_done(self):
        self.state['robots'].pop('agv02')
        self.assertFalse(parked(self.state))


if __name__=='__main__':unittest.main()
