import unittest
from warehouse_sim.web_requests import validate_request

class InteractiveRequests(unittest.TestCase):
    def test_auto_assignment_submission_and_correlated_identity(self):
        r=validate_request(dict(id='web1',type='transport',pickup='A',dropoff='B'),{'A','B'})
        self.assertNotIn('robot',r)
        self.assertTrue(r['request_id'])
        self.assertNotEqual(r['request_id'],validate_request(r,{'A','B'})['request_id'])

    def test_bad_station_equal_endpoints_and_forced_vehicle_rejected(self):
        good=dict(id='web1',type='transport',pickup='A',dropoff='B')
        for patch in [dict(dropoff='C'),dict(dropoff='A'),dict(robot='agv01'),dict(priority=True)]:
            with self.subTest(patch=patch),self.assertRaises(ValueError):
                validate_request(dict(good,**patch),{'A','B'})

    def test_web_cannot_inject_fault_or_bypass_recovery_fence(self):
        for op in ['fault_idle','clear_idle_fault','requeue_unloaded','recover']:
            with self.subTest(op=op),self.assertRaises(ValueError):validate_request(dict(operation=op),{})

    def test_motion_and_queue_control_reach_scheduler_validation(self):
        for op in ['pause','resume','cancel','hold_dispatch','set_weights']:
            self.assertEqual(validate_request(dict(operation=op,id='j1'),{})['operation'],op)

    def test_edit_validates_the_replacement_task(self):
        task = dict(id='j1', type='standby', goal='A', priority=100)
        request = dict(operation='update', id='j1', task=task, expected=['move', ['B'], 0])
        validated = validate_request(request, {'A', 'B'})
        self.assertNotIn('request_id', validated['task'])
        for patch in (dict(id='other'), dict(goal='missing'), dict(robot='agv01'), dict(operation='cancel')):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                validate_request(dict(request, task=dict(task, **patch)), {'A', 'B'})
