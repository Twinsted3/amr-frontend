import unittest
from types import SimpleNamespace

from warehouse_sim.admission_policy import next_window, parking_for_idle_workstations


def job(identity, stops, priority=3, *, kind='transport'):
    return SimpleNamespace(id=identity, goals=stops, priority=priority, state='QUEUED', kind=kind,
                           created=0, next_robot=None, requested_robot=None, reason='')


class RollingAdmissionTests(unittest.TestCase):
    def setUp(self):
        self.fleet = SimpleNamespace(jobs={}, destinations={}, workstations={}, robots={}, low_soc=.25,
                                     remaining_stops=lambda task: task.goals,
                                     scheduling_priority=lambda task, _: (task.priority, 'priority'),
                                     dispatch_distance=lambda _, bay: {'PP_NEAR': 4, 'HOME_FAR': 10}[bay])

    def test_busy_region_does_not_block_unrelated_work_and_is_revisited(self):
        tasks = [job('busy', ('pickup', 'drop')), job('other', ('elsewhere', 'dock'))]
        self.fleet.jobs = {task.id: task for task in tasks}
        self.fleet.workstations['drop'] = {'phase': 'reserved'}
        zones = {'area': ({'pickup', 'drop'}, (), {'vehicle'}, 1)}
        self.assertEqual(next_window(self.fleet, {}, {}, zones, 1), {'other'})
        self.fleet.workstations['drop']['phase'] = 'departing'
        self.assertEqual(next_window(self.fleet, {}, {}, zones, 2), {'busy', 'other'})

    def test_pending_inbound_traffic_limits_ordinary_window_before_ordinary_priority(self):
        tasks = [job('ordinary', ('work', 'dock')), job('urgent', ('urgent_work', 'dock'), 2)]
        self.fleet.jobs = {task.id: task for task in tasks}
        zones = {'area': ({'work', 'urgent_work', 'dock'}, (), {'inside'}, 1)}
        pending = {'one': {'goal': 'work'}, 'two': {'goal': 'urgent_work'}}
        positions = dict(one='outside', two='outside')
        self.assertEqual(next_window(self.fleet, pending, positions, zones, 1), {'urgent'})

    def test_only_available_idle_blocker_goes_to_unreserved_nearest_parking(self):
        self.fleet.jobs = {'queued': job('queued', ('pickup', 'drop'))}
        self.fleet.robots = {
            name: SimpleNamespace(job=None, blocked=False, dispatch_state='enabled', soc=.8)
            for name in ('idle', 'isolated')}
        positions = dict(idle='pickup', isolated='drop')
        homes = dict(idle='HOME_FAR', isolated='PP_NEAR')
        self.assertEqual(parking_for_idle_workstations(self.fleet, positions, homes, {'isolated'}),
                         {'idle': 'PP_NEAR'})
        self.fleet.jobs['queued'].state = 'EXECUTING'
        self.fleet.destinations['PP_NEAR'] = 'isolated'
        self.assertEqual(parking_for_idle_workstations(self.fleet, positions, homes, {'isolated'}),
                         {'idle': 'HOME_FAR'})


if __name__ == '__main__':
    unittest.main()
