"""Real-vehicle registration and data-connection rules."""

from ipaddress import IPv4Address
import re

from common.vehicles import Vehicles


class FieldVehicles(Vehicles):
    def address(self, identity, body):
        host, port = super().address(identity, body)
        if (identity.upper().startswith('SIM-')
                or re.fullmatch(r'agv\d+', identity, re.IGNORECASE)
                or IPv4Address(host).is_loopback):
            raise ValueError('请使用现场车辆编号及车端局域网地址')
        return host, port
