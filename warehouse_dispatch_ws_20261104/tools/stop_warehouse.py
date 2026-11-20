#!/usr/bin/env python3
"""Stop only the ROS launch started by this workspace's wrapper."""
import os
from pathlib import Path
import signal
import sys
import shlex
import time


def process_info(pid):
    """Return a process's parent and birth tick, or None if it has exited."""
    try:
        fields = Path(f'/proc/{pid}/stat').read_text().rsplit(')', 1)[1].split()
        if fields[0] == 'Z':
            return None
        return int(fields[1]), fields[19]
    except (FileNotFoundError, ProcessLookupError, PermissionError, IndexError):
        return None


def descendants(root_pid):
    """Snapshot only processes launched under the managed ROS launch."""
    processes = {}
    for entry in Path('/proc').iterdir():
        if entry.name.isdigit():
            info = process_info(int(entry.name))
            if info:
                processes[int(entry.name)] = info
    found = {root_pid}
    while True:
        children = {pid for pid, (parent, _) in processes.items() if parent in found}
        if children <= found:
            break
        found.update(children)
    return {pid: processes[pid][1] for pid in found if pid != root_pid and pid in processes}


def live(snapshot):
    return [pid for pid, birth in snapshot.items()
            if (info := process_info(pid)) and info[1] == birth]


def wait_for_exit(snapshot, seconds):
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        if not live(snapshot):
            return
        time.sleep(0.2)


def signal_live(snapshot, sig):
    for child in live(snapshot):
        try:
            os.kill(child, sig)
        except ProcessLookupError:
            pass

root = Path(__file__).resolve().parents[1]
pid_file = root/'.warehouse_run.pid'


def owned_command(cmd,workspace):
    args=shlex.split(cmd)
    adapter=str(workspace/'install/warehouse_sim/lib/warehouse_sim')+'/'
    world=str(workspace/'install/warehouse_sim/share/warehouse_sim/worlds/warehouse.sdf')
    if any(a.startswith(adapter) for a in args):return True
    if any(Path(a).name=='ros2' and args[i+1:i+3]==['launch','warehouse_sim'] for i,a in enumerate(args)):return True
    return cmd in ('gz sim server','gz sim gui') or (len(args)>2 and Path(args[0]).name=='gz' and args[1]=='sim' and '-r' in args and world in args)

def clean_orphans():
    """Remove owned processes, including ones adopted by systemd --user."""
    stale = {}
    world = str(root/'install/warehouse_sim/share/warehouse_sim/worlds/warehouse.sdf')
    for entry in Path('/proc').iterdir():
        if not entry.name.isdigit():
            continue
        pid = int(entry.name)
        info = process_info(pid)
        if not info:
            continue
        try:
            if (entry/'cwd').resolve() != root:
                continue
            cmd = (entry/'cmdline').read_bytes().replace(b'\0', b' ').decode(errors='replace').strip()
        except (FileNotFoundError, ProcessLookupError, PermissionError):
            continue
        if owned_command(cmd,root):
            stale[pid] = info[1]
    if stale:
        signal_live(stale, signal.SIGINT)
        wait_for_exit(stale, 3)
        signal_live(stale, signal.SIGTERM)
        wait_for_exit(stale, 2)
        # A supervised node can be respawned after the initial snapshot while
        # its launcher is exiting. Sweep a second time after the parent stops.
        print(f'已清理 {len(stale)} 个本工程遗留进程。')


if sys.argv[1:] == ['--clean-orphans']:
    clean_orphans()
    clean_orphans()
    raise SystemExit(0)

if not pid_file.exists():
    print('没有由 warehouse.sh 管理的仿真进程。')
else:
    pid = int(pid_file.read_text().strip())
    process = Path(f'/proc/{pid}')
    if process.exists():
        cmd = (process/'cmdline').read_bytes().replace(b'\0', b' ').decode(errors='replace')
        if 'warehouse_sim' in cmd and 'launch' in cmd and (process/'cwd').resolve() == root:
            children = descendants(pid)
            root_info = process_info(pid)
            os.kill(pid, signal.SIGINT)
            if root_info:
                children[pid] = root_info[1]
            wait_for_exit(children, 12)
            signal_live(children, signal.SIGINT)
            wait_for_exit(children, 3)
            signal_live(children, signal.SIGTERM)
            wait_for_exit(children, 2)
            print(f'仓库仿真已停止（PID {pid}）。')
        else:
            print('记录的 PID 已不是本工程仿真，未发送停止信号。')
    else:
        print('仓库仿真已停止。')
    pid_file.unlink()
clean_orphans()
clean_orphans()
