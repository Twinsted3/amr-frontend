"""Charger configuration and scheduling inputs without a device protocol."""
from dataclasses import dataclass
from heapq import nsmallest
import math


@dataclass(frozen=True)
class ChargerProfile:
    feedback_required: bool = False
    charge_rate: float | None = None
    models: tuple[str, ...] = ()
    min_arrival_soc: float = 0.
    freshness_s: float = 4.

    @classmethod
    def parse(cls, value):
        allowed = {'feedback_required', 'charge_rate', 'models', 'min_arrival_soc', 'freshness_s'}
        if not isinstance(value, dict) or value.keys() - allowed:
            raise ValueError('充电桩需要有效的反馈、充电速率、车型和到桩余量配置')
        required = value.get('feedback_required', False)
        rate = value.get('charge_rate')
        models = value.get('models', ())
        reserve = value.get('min_arrival_soc', 0.)
        freshness = value.get('freshness_s', 4.)
        if type(required) is not bool:
            raise ValueError('feedback_required 必须为布尔值')
        if rate is not None and (type(rate) not in (int, float) or not 0.00001 <= rate <= 1.):
            raise ValueError('charge_rate 须为每秒 0.00001 至 1. 的 SOC 增量')
        if (not isinstance(models, (list, tuple)) or len(models) > 32
                or any(not isinstance(model, str) or not model.strip() or len(model) > 64 for model in models)):
            raise ValueError('桩的车型配置无效')
        if type(reserve) not in (int, float) or not 0. <= reserve < 1.:
            raise ValueError('min_arrival_soc 须在 [0, 1) 范围内')
        if type(freshness) not in (int, float) or not 0.1 <= freshness <= 60.:
            raise ValueError('freshness_s 须在 0.1 至 60 秒范围内')
        return cls(required, rate, tuple(sorted(set(models))), reserve, freshness)


@dataclass(frozen=True)
class ChargerObservation:
    state: str
    received_at: float
    robot: str | None = None
    execution_id: str | None = None

    def __post_init__(self):
        if self.state not in ('ready', 'charging', 'released', 'unavailable'):
            raise ValueError('充电桩状态无效')
        if type(self.received_at) not in (int, float) or not math.isfinite(self.received_at):
            raise ValueError('充电观察需要调度时钟的有效时间戳')
        if self.state in ('charging', 'released'):
            if (not isinstance(self.robot, str) or not self.robot or not isinstance(self.execution_id, str)
                    or not self.execution_id):
                raise ValueError('充电和解锁回执需要车号及充电执行编号')
        elif self.robot is not None or self.execution_id is not None:
            raise ValueError('未关联充电任务的桩状态不得包含车号或执行编号')


UNMONITORED_CHARGER = ChargerProfile()


@dataclass(frozen=True)
class WorkloadChargingPolicy:
    station_groups: dict[str, str]
    protected_ready: int = 1
    max_parallel_topups: int = 2
    forecast_ticks: int = 24
    topup_margin_soc: float = .12
    max_wait_ticks: int = 60

    @classmethod
    def parse(cls, value, known_stations, fleet_size):
        if not isinstance(value, dict) or set(value) - cls.__dataclass_fields__.keys():
            raise ValueError('车队补能策略配置无效')
        groups = value.get('station_groups', {})
        if not isinstance(groups, dict) or any(station not in known_stations
                or not isinstance(group, str) or not group.strip()
                for station, group in groups.items()):
            raise ValueError('补能区域需要有效站点与区域名称')
        config = cls(**{'max_parallel_topups': min(2, fleet_size), **value, 'station_groups': groups.copy()})
        for number, upper in ((config.protected_ready, fleet_size),
                              (config.max_parallel_topups, fleet_size),
                              (config.forecast_ticks, 10_000), (config.max_wait_ticks, 10_000)):
            if type(number) is not int or not 1 <= number <= upper:
                raise ValueError('补能保留车辆数、并行数或预测周期无效')
        if type(config.topup_margin_soc) not in (int, float) or not 0 <= config.topup_margin_soc <= .4:
            raise ValueError('提前补能余量须在 0 至 0.4 之间')
        return config

    def group(self, station):
        return self.station_groups.get(station, '')


def plan_fleet_charge_queue(robots, service, ready_in, *, prioritize_now=()):
    """Roll all compatible low batteries through forecast slots, granting only known free bays.

    Robots arrive in priority order. Duration at a bay includes the route to
    the charger and charging, with clearance extending the bay's next slot.
    Urgent/overdue robots use a free compatible slot before forecast choices.
    Complexity is proportional to vehicles times compatible stations.
    """
    ready = dict(ready_in)
    urgent = set(prioritize_now)
    first_slots = {}
    for robot in robots:
        options = service.get(robot, {})
        feasible = [(ready[bay] + duration, ready[bay], clearance, bay)
                    for bay, (duration, clearance) in options.items() if bay in ready]
        if not feasible:
            continue
        immediate = [slot for slot in feasible if slot[1] == 0.] if robot in urgent else []
        finish, start, clearance, bay = min(immediate or feasible)
        if start == 0.:
            first_slots[robot] = bay
        ready[bay] = max(finish + clearance, 1e-9)
    return first_slots


def plan_charge_queue(vehicles, service, ready_in, urgent, *, beam_width=24):
    """Sequence a small charge cohort and return only first, immediately usable slots.

    service[vehicle][bay] contains estimated seconds for travel and charging,
    plus the estimated time to clear the bay. A forecast orders work but never
    reserves an occupied bay. Urgent vehicles get first access to free slots.
    """
    initial = (0, 0., tuple(vehicles), dict(ready_in), ())
    beam = [initial]
    for _ in vehicles:
        expanded = {}
        for urgent_starts, cost, remaining, ready, starts in beam:
            for vehicle in remaining:
                later = tuple(other for other in remaining if other != vehicle)
                for bay, (duration, clearance) in sorted(service[vehicle].items()):
                    earliest = ready[bay]
                    finish = earliest + duration
                    available = {**ready, bay: finish + clearance}
                    immediate = earliest == 0. and not any(used == bay for _, used in starts)
                    first_slots = starts + ((vehicle, bay),) if immediate else starts
                    urgent_count = urgent_starts + (urgent.get(vehicle, 0) if immediate else 0)
                    completion_sum = cost + finish
                    signature = (later, tuple(available.values()), tuple(sorted(first_slots)))
                    candidate = (urgent_count, completion_sum, later, available, first_slots)
                    previous = expanded.get(signature)
                    if previous is None or completion_sum < previous[1]:
                        expanded[signature] = candidate

        def estimate(candidate):
            urgent_count, cost, later, ready, first_slots = candidate
            optimistic_urgent = sum(urgent.get(vehicle, 0) for vehicle in later
                                    if any(ready[bay] == 0. for bay in service[vehicle]))
            optimistic_cost = sum(min(ready[bay] + duration for bay, (duration, _) in service[vehicle].items())
                                  for vehicle in later)
            return (-urgent_count - optimistic_urgent, cost + optimistic_cost, first_slots, later)

        if not expanded:
            return {}
        beam = nsmallest(beam_width, expanded.values(), key=estimate)
    return dict(beam[0][4])
