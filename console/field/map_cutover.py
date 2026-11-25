"""Field map cutover coordinator. The adapter owns admission and live feedback."""
import math


class MapCutover:
    def __init__(self, dispatch, adapter):
        self.dispatch = dispatch
        self.adapter = adapter

    def _record(self, **changes):
        with self.dispatch.db:
            state = self.dispatch.state()
            state.update(changes)
            self.dispatch.store_state(state)

    def apply(self, target):
        with self.dispatch.lock:
            return self._apply(target)

    def _apply(self, target):
        state = self.dispatch.state()
        if state.get('map_cutover'):
            raise ValueError('上一次地图应用尚待恢复确认')
        old = state['map_id']
        if old is None or old == target:
            raise ValueError('请选择不同于在用地图的新版本')
        source = self.dispatch.map(old, raw=True)
        candidate = self.dispatch.map(target, raw=True)
        before = self.dispatch.map(old)
        after = self.dispatch.map(target)
        self._record(map_cutover={'old': old, 'target': target})
        loading = False
        try:
            if self.adapter.freeze_admission() is not True:
                raise ValueError('未确认停止接新单')
            snapshot = self.adapter.quiesce()
            if snapshot['version'] != old:
                raise ValueError('现场地图版本不一致')
            if snapshot['pending'] != 0 or snapshot['active'] != 0:
                raise ValueError('仍有待执行或执行中任务')
            if snapshot['reservations'] != 0 or snapshot['deadlocks'] != 0:
                raise ValueError('仍有旧路权或死锁占用')
            vehicles = snapshot['vehicles']
            participants = set(snapshot['expected_vehicles'])
            if set(vehicles) != participants:
                raise ValueError('车辆反馈缺失或车辆清单不一致')
            if self.adapter.same_frame(source, candidate) is not True:
                raise ValueError('无法确认同厂区、同坐标系')
            occupied = set()
            for name, vehicle in vehicles.items():
                station = vehicle['station']
                if vehicle['trusted'] is not True or vehicle['stopped'] is not True:
                    raise ValueError(f'{name} 位姿不可信或停车未确认')
                if vehicle['charging'] is not False:
                    raise ValueError(f'{name} 停止充电未确认')
                position = before['stations'].get(station)
                if (position is None or position != after['stations'].get(station)
                        or station in occupied or not math.dist(position, vehicle['position']) <= 0.05):
                    raise ValueError(f'{name} 占位与新版地图不兼容')
                occupied.add(station)
            expected = {'scheduler': old, **{name: old for name in participants}}
            if 'scheduler' in participants or self.adapter.versions() != expected:
                raise ValueError('调度与执行端的旧版确认不一致')
            loading = True
            self.adapter.load(target, candidate, vehicles)
            if self.adapter.versions() != dict.fromkeys(expected, target):
                raise ValueError('调度与执行端未全部确认新版')
            self._record(map_id=target)
        except Exception as failure:
            try:
                if loading:
                    self.adapter.load(old, source, vehicles)
                    if self.adapter.versions() != expected:
                        raise ValueError('旧版未全部确认')
                    self._record(map_id=old)
                if self.adapter.resume_admission() is not True:
                    raise ValueError('未确认恢复接单')
                self._record(map_cutover=None)
            except Exception as recovery:
                raise ValueError(f'{failure}；恢复未确认，保留冻结：{recovery}') from recovery
            raise ValueError(str(failure)) from failure
        if self.adapter.resume_admission() is not True:
            raise ValueError('新版已确认，恢复接单未确认，保留切换记录')
        self._record(map_cutover=None)
        return {'map_id': target}
