#!/usr/bin/env python3
"""Deliberate scheduler-only crash in an owned local simulation session."""
import os
from pathlib import Path
import signal


def owned_adapter_pid(executable,database):
    root=Path(__file__).resolve().parents[1]
    marker=root/'.sim_session'
    session=Path(marker.read_text().strip()).resolve()
    if root not in session.parents or not (session/'dispatch.sqlite3').is_file():
        raise RuntimeError('no owned simulation session')
    expected=str(session/database).encode() if database else None
    matches=[]
    for p in Path('/proc').iterdir():
        if not p.name.isdigit():continue
        try:
            args=(p/'cmdline').read_bytes().split(b'\0')
            parameter_files=[Path(args[i+1].decode()) for i,a in enumerate(args[:-1]) if a==b'--params-file']
            owns_parameters=expected is None or any(expected in f.read_bytes() for f in parameter_files if f.is_file())
            environment=(p/'environ').read_bytes().split(b'\0')
            owns_domain=('ROS_DOMAIN_ID='+os.environ.get('ROS_DOMAIN_ID','0')).encode() in environment
            if any(a.endswith(('/lib/warehouse_sim/'+executable).encode()) for a in args) and owns_parameters and owns_domain and (p/'cwd').resolve()==root:
                matches.append(int(p.name))
        except (OSError,PermissionError):pass
    if len(matches)!=1:raise RuntimeError(f'expected exactly one owned {executable}, found {matches}')
    return matches[0]


def crash_scheduler():
    pid=owned_adapter_pid('fleet_scheduler','dispatch.sqlite3')
    os.kill(pid,signal.SIGKILL)
    return pid


if __name__=='__main__':print('scheduler crash injected, launch will restart it:',crash_scheduler())
