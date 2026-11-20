"""Single-host ownership of each control role in one ROS domain."""
import os
from pathlib import Path
import tempfile
from warehouse_sim.durable_dispatch import Journal


class DomainOwner:
    def __init__(self,role):
        domain=int(os.environ.get('ROS_DOMAIN_ID','0'))
        user=os.getuid() if hasattr(os,'getuid') else os.environ.get('USERNAME','local')
        self.journal=Journal(Path(tempfile.gettempdir())/f'warehouse-sim-{user}-{domain}-{role}.sqlite3')
    def close(self):self.journal.close()
