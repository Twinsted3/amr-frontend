"""Vehicle profiles backed by the local simulator samples."""

from pathlib import Path

from common.vehicles import Vehicles
from .sample_vehicle import SampleVehicle


SAMPLE_DIR = Path(__file__).resolve().parent / 'samples'
SAMPLE_PREFIX = 'SIM-'
SAMPLE_FILES = {
    'sample_tcp': 'history.jsonl',
    'fork_sample_tcp': 'history-huocha.jsonl',
}


class SimVehicles(Vehicles):
    connection_modes = tuple(SAMPLE_FILES)

    def address(self, identity, body):
        if identity != SAMPLE_PREFIX + 'DEMO-FORKLIFT':
            raise ValueError('请使用样本车辆编号 SIM-DEMO-FORKLIFT')
        return '127.0.0.1', 0

    def prepare_sample(self, mode, profile):
        filename = SAMPLE_FILES[mode]
        try:
            sender = SampleVehicle(SAMPLE_DIR / filename, identity_prefix=SAMPLE_PREFIX)
        except OSError as error:
            raise ValueError(f'无法启动历史数据模拟，请检查样本文件 {filename} 和本机监听端口') from error
        if sender.vehicle_id != profile['vehicle_id']:
            sender.close()
            raise ValueError(f'历史样本车辆编号为 {sender.vehicle_id}，请登记相同编号，不能冒充其他车辆')
        return sender
