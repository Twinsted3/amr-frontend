"""Equal-horizon charging comparison for the lightweight execution model."""
from collections import Counter
import math


NOMINAL_PACK = {
    'pack_voltage_v': 25.6,
    'pack_capacity_ah': 212,
    'documented_soc_start': .10,
    'documented_soc_end': .80,
    'documented_charge_seconds': 2 * 60 * 60,
}
NOMINAL_SOC_PER_SECOND = ((NOMINAL_PACK['documented_soc_end'] - NOMINAL_PACK['documented_soc_start'])
                          / NOMINAL_PACK['documented_charge_seconds'])
BUSINESS_KINDS = {'transport', 'move', 'standby'}
CHARGE_STATES = ('waiting', 'approach', 'charging', 'clearance')


def configure_charge_benchmark(execution, *, optimized, initial_soc, station_groups, tick_seconds=20,
                               charger_profiles=None, policy_options=None):
    """Configure the same assumed energy model for both arms before the first tick.

    At other SOC ranges the benchmark extrapolates the given nominal interval.
    An explicit per-station rate is a scenario assumption shared by both arms.
    A configured feedback-required station still needs modeled observations.
    """
    if (type(tick_seconds) not in (int, float) or not math.isfinite(tick_seconds) or tick_seconds <= 0
            or type(optimized) is not bool or execution.tick != 0):
        raise ValueError('充电基准必须在仿真起点设置有效时间尺度和对照组')
    if (not isinstance(initial_soc, dict) or initial_soc.keys() - execution.soc.keys()
            or any(type(soc) not in (int, float) or not 0. <= soc <= 1. for soc in initial_soc.values())):
        raise ValueError('车辆初始荷电状态无效')
    fleet = execution.fleet
    profiles = {name: {'charge_rate': NOMINAL_SOC_PER_SECOND}
                for name in fleet.graph.stations if name.startswith('CP_')}
    for name, options in (charger_profiles or {}).items():
        if name not in profiles or not isinstance(options, dict) or options.get('charge_rate', 1.) is None:
            raise ValueError(f'充电基准缺少有效桩或充电速率 {name}')
        profiles[name].update(options)
    fleet.configure_charger_profiles(profiles)
    fleet.configure_workload_charging({**(policy_options or {}), 'station_groups': station_groups} if optimized else None)
    fleet.predictive_charging = optimized
    fleet.release_soc = NOMINAL_PACK['documented_soc_end']
    execution.soc.update(initial_soc)
    execution.modeled_tick_seconds = tick_seconds
    execution.charge_gain_per_tick = {name: fleet.charger_rate(name) * tick_seconds for name in profiles}
    return FleetChargeMetrics(execution, tick_seconds=tick_seconds)


class FleetChargeMetrics:
    def __init__(self, execution, *, tick_seconds):
        self.tick_seconds = tick_seconds
        self.start_tick = self.last_tick = execution.tick
        self.initial_soc = dict(execution.soc)
        self.last_soc = dict(execution.soc)
        self.bays = dict(execution.charge_gain_per_tick)
        self.counts = Counter()
        self.peaks = Counter()
        self.vehicle_totals = Counter()
        self.received_soc = 0.
        self.chargers_seen = set()
        self.post_charge_berth_ticks = 0

    def observe(self, execution):
        if execution.tick != self.last_tick + 1 or execution.soc.keys() != self.initial_soc.keys():
            raise ValueError('充电效率比较需要同一车辆名单逐步采样')
        fleet = execution.fleet
        # Fleet.jobs also contains cancelled and historic charges. Only the active
        # queue contributes to the current waiting interval.
        queued = {job.requested_robot for job in fleet.jobs.values()
                  if job.kind == 'charge' and job.state == 'QUEUED'}
        counts = Counter()
        for name, robot in fleet.robots.items():
            job = fleet.jobs.get(robot.job)
            completed = fleet.jobs.get(fleet.finished_at.get(name))
            last_was_charge = completed is not None and completed.kind == 'charge' and bool(completed.goals)
            parked_after_charge = last_was_charge and robot.station == completed.goals[0]
            if parked_after_charge:
                self.post_charge_berth_ticks += 1
            if job and job.kind == 'charge':
                state = 'charging' if job.state == 'CHARGING' else 'approach'
                if job.state == 'CHARGING':
                    self.chargers_seen.add(job.goals[0])
            elif last_was_charge and ((job and job.kind == 'return')
                    or (parked_after_charge and not fleet.charger_movement_ready(name, execution.tick))):
                state = 'clearance'
            elif (name in queued or name in fleet.charge_waiting or (not robot.job and not robot.blocked
                  and name not in fleet.unavailable and robot.dispatch_state == 'enabled'
                  and name not in execution.feedback_unavailable
                  and execution.soc[name] < fleet.low_soc)):
                state = 'waiting'
            else:
                continue
            counts[state] += 1
            self.vehicle_totals[name] += 1
        self.counts.update(counts)
        for state, count in counts.items():
            self.peaks[state] = max(self.peaks[state], count)
        self.received_soc += math.fsum(max(0., soc - self.last_soc[name]) for name, soc in execution.soc.items())
        self.last_soc.update(execution.soc)
        self.last_tick = execution.tick

    def report(self, execution):
        if self.last_tick != execution.tick:
            raise ValueError('请在生成报告前采样当前仿真步')
        fleet = execution.fleet
        business = Counter(job.state for job in fleet.jobs.values() if job.kind in BUSINESS_KINDS)
        triggers = Counter((job.charge_trigger, job.state) for job in fleet.jobs.values() if job.kind == 'charge')
        ticks = {state: self.counts[state] for state in CHARGE_STATES}
        initial_mean = math.fsum(self.initial_soc.values()) / len(self.initial_soc)
        final_mean = math.fsum(execution.soc.values()) / len(execution.soc)
        return {
            'fleet_size': len(self.initial_soc), 'measured_ticks': self.last_tick - self.start_tick,
            'tick_seconds': self.tick_seconds, 'battery_profile': dict(NOMINAL_PACK),
            'modeled_charge_soc_per_bay_tick': self.bays,
            'initial_soc_by_vehicle': self.initial_soc, 'initial_soc_mean': initial_mean,
            'final_soc_mean': final_mean, 'final_soc_min': min(execution.soc.values()),
            'final_below_low_soc': sum(soc < fleet.low_soc for soc in execution.soc.values()),
            'fleet_vehicle_ticks': len(self.initial_soc) * (self.last_tick - self.start_tick),
            'charger_bays_used': len(self.chargers_seen), 'business_by_state': dict(business),
            'received_soc_sum': self.received_soc,
            'post_charge_berth_ticks': self.post_charge_berth_ticks,
            'charge_jobs_by_trigger_and_state': {f'{trigger}/{state}': count for (trigger, state), count in triggers.items()},
            'by_state_vehicle_ticks': ticks, 'by_state_modeled_vehicle_seconds': {
                state: count * self.tick_seconds for state, count in ticks.items()},
            'total_charge_vehicle_ticks': sum(ticks.values()),
            'peak_by_state_vehicles': {state: self.peaks[state] for state in CHARGE_STATES},
            'max_charge_vehicle_ticks': max(self.vehicle_totals.values(), default=0),
        }


def compare_charge_runs(baseline, optimized):
    """Compare time spent on charging and disclose equal-horizon work/end-SOC tradeoffs."""
    shared = ('fleet_size', 'measured_ticks', 'tick_seconds', 'initial_soc_by_vehicle',
              'battery_profile', 'modeled_charge_soc_per_bay_tick')
    if any(baseline[key] != optimized[key] for key in shared):
        raise ValueError('充电方案对比需要相同试验时长、车辆、初始电量和充电模型')
    before, after = (report['total_charge_vehicle_ticks'] for report in (baseline, optimized))
    return {
        'baseline_charge_vehicle_ticks': before, 'optimized_charge_vehicle_ticks': after,
        'charging_unavailability_reduction_pct': (100. * (before - after) / before if before else None),
        'waiting_vehicle_ticks_delta': (optimized['by_state_vehicle_ticks']['waiting']
                                        - baseline['by_state_vehicle_ticks']['waiting']),
        'completed_business_delta': (optimized['business_by_state'].get('DONE', 0)
                                     - baseline['business_by_state'].get('DONE', 0)),
        'end_soc_mean_delta': optimized['final_soc_mean'] - baseline['final_soc_mean'],
        'charged_soc_sum_delta': optimized['received_soc_sum'] - baseline['received_soc_sum'],
    }
