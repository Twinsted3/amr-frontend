import unittest
import test_fleet_core as fixtures


class OverallPolicyTests(unittest.TestCase):
    setUpClass = classmethod(fixtures.FleetTests.setUpClass.__func__)
    setUp = fixtures.FleetTests.setUp
    submit = fixtures.FleetTests.submit
    def test_idle_fault_transfers_only_opted_in_queue(self):
        self.f.submit(dict(id='transfer',type='move',goal='AP_PICK_01',robot='agv01',allow_transfer=True),0)
        self.f.submit(dict(id='fixed',type='move',goal='AP_QC_01',robot='agv01'),0)
        self.f.operation(dict(operation='fault_idle',robot='agv01'),0)
        self.f.tick(0)
        self.assertEqual(self.f.jobs['transfer'].robot,'agv02')
        self.assertEqual(self.f.jobs['fixed'].state,'QUEUED')

    def test_fault_injection_cannot_interrupt_assigned_vehicle(self):
        j=self.submit();self.f.tick(0)
        with self.assertRaises(ValueError):self.f.operation(dict(operation='fault_idle',robot=j.robot),0)

    def test_pause_priority_resume_and_hold(self):
        j=self.submit()
        self.f.operation(dict(operation='hold_dispatch',enabled=True),0)
        self.assertEqual(self.f.tick(0),[])
        self.f.operation(dict(operation='pause',id=j.id),0)
        self.f.operation(dict(operation='priority',id=j.id,priority=100),0)
        self.f.operation(dict(operation='resume',id=j.id),0)
        self.f.operation(dict(operation='hold_dispatch',enabled=False),0)
        self.assertEqual(len(self.f.tick(0)),1)
        self.assertEqual(j.priority,100)

    def test_priority_change_does_not_break_original_request_idempotency(self):
        j=self.submit()
        self.f.operation(dict(operation='priority',id=j.id,priority=100),0)
        self.submit()
        self.assertEqual(len(self.f.jobs),1)

    def test_loaded_job_cannot_be_requeued_to_another_vehicle(self):
        j=self.submit();self.f.tick(0);j.loaded=True
        self.f.fail(j,'loaded fault')
        with self.assertRaises(ValueError):self.f.operation(dict(operation='requeue_unloaded',id=j.id),1)

    def test_retry_keeps_failed_vehicle_blocked(self):
        j=self.submit();self.f.tick(0);old=j.robot
        self.f.fail(j,'rejected before loading')
        self.f.operation(dict(operation='requeue_unloaded',id=j.id),1)
        self.f.tick(1)
        self.assertNotEqual(j.robot,old)
        self.assertTrue(self.f.robots[old].blocked)

    def test_bad_transfer_flag_rejected(self):
        with self.assertRaises(ValueError):self.submit(allow_transfer='false')


if __name__=='__main__':unittest.main()
