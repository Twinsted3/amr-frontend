"""Durable state and command intent. Never replay uncertain motion on restart.

This layer fences NEW dispatch; it is not an actuator watchdog or a claim of
exactly-once execution at an external robot.
"""
import copy
from dataclasses import asdict
import json
import math
from pathlib import Path
import sqlite3
import math
import time
import uuid

from warehouse_sim.fleet_core import Job, Robot
from warehouse_sim.web_requests import MAX_BATCH_TASKS
from warehouse_sim.scheduling_policy import validate_policy
from warehouse_sim.traffic_policy import STOP_FOOTPRINT_RADIUS, STOP_TOLERANCE


class DurabilityError(RuntimeError):
    pass


class Journal:
    def __init__(self, path, *, threaded=False):
        self.path = Path(path).resolve()
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self.lock = open(str(self.path)+'.lock', 'a+b')
        if self.lock.tell() == 0:
            self.lock.write(b'0'); self.lock.flush()
        self.lock.seek(0)
        try:
            if __import__('os').name == 'nt':
                import msvcrt
                msvcrt.locking(self.lock.fileno(), msvcrt.LK_NBLCK, 1)
            else:
                import fcntl
                fcntl.flock(self.lock.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
        except OSError as error:
            self.lock.close()
            raise DurabilityError('another dispatcher owns this database') from error
        try:
            self.db = sqlite3.connect(self.path, isolation_level=None, timeout=2, check_same_thread=not threaded)
            self.db.execute('PRAGMA journal_mode=WAL')
            self.db.execute('PRAGMA synchronous=FULL')
            self.db.executescript('''
                CREATE TABLE IF NOT EXISTS state (id INTEGER PRIMARY KEY CHECK(id=1), revision INTEGER NOT NULL, body TEXT NOT NULL);
                CREATE TABLE IF NOT EXISTS commands (id TEXT PRIMARY KEY, execution_id TEXT NOT NULL, kind TEXT NOT NULL,
                    body TEXT NOT NULL, status TEXT NOT NULL, created REAL NOT NULL, updated REAL NOT NULL);
                CREATE TABLE IF NOT EXISTS audit (seq INTEGER PRIMARY KEY AUTOINCREMENT, at REAL NOT NULL, body TEXT NOT NULL);
            ''')
        except Exception:
            self.close()
            raise

    def load(self):
        row = self.db.execute('SELECT revision,body FROM state WHERE id=1').fetchone()
        return (row[0], json.loads(row[1])) if row else (0, None)

    def commit(self, revision, state, commands=(), events=(), acknowledgements=(), uncertain=False):
        body = json.dumps(state, allow_nan=False, separators=(',', ':'))
        encoded = [(c['command_id'], c['task_id'], next((k for k in ('cancel','pause','resume') if c.get(k)),'goal'),
                    json.dumps(c, allow_nan=False), time.time(), time.time()) for c in commands]
        audit = [(time.time(), json.dumps(e, allow_nan=False)) for e in events]
        self.db.execute('BEGIN IMMEDIATE')
        try:
            current = self.db.execute('SELECT revision FROM state WHERE id=1').fetchone()
            if (current[0] if current else 0) != revision:
                raise DurabilityError('state revision changed')
            self.db.execute('INSERT INTO state VALUES(1,?,?) ON CONFLICT(id) DO UPDATE SET revision=excluded.revision,body=excluded.body',
                            (revision+1, body))
            for row in encoded:
                old=self.db.execute('SELECT body FROM commands WHERE id=?',(row[0],)).fetchone()
                if old:
                    if json.loads(old[0]) != json.loads(row[3]):raise DurabilityError('outbox command payload changed')
                else:self.db.execute("INSERT INTO commands VALUES(?,?,?,?,'PREPARED',?,?)",row)
            self.db.executemany('INSERT INTO audit(at,body) VALUES(?,?)', audit)
            if uncertain:
                self.db.execute("UPDATE commands SET status='UNCERTAIN',updated=? WHERE status IN ('PREPARED','PUBLISHED')", (time.time(),))
            for execution, kind in acknowledgements:
                self.db.execute("UPDATE commands SET status='ACKNOWLEDGED',updated=? WHERE execution_id=? AND kind=? AND status IN ('PREPARED','PUBLISHED','UNCERTAIN')",
                                (time.time(),execution,kind))
            self.db.execute('COMMIT')
        except BaseException:
            self.db.execute('ROLLBACK')
            raise
        return revision+1

    def published(self, command_id):
        self.db.execute("UPDATE commands SET status='PUBLISHED',updated=? WHERE id=? AND status='PREPARED'", (time.time(),command_id))

    def commands(self):
        return [dict(id=i,status=s,body=json.loads(b)) for i,s,b in self.db.execute('SELECT id,status,body FROM commands ORDER BY created')]

    def close(self):
        if getattr(self, 'db', None) is not None:
            self.db.close(); self.db = None
        if getattr(self, 'lock', None) is not None:
            self.lock.close(); self.lock = None


class DurableDispatch:
    schema = 1

    def __init__(self, fleet, path, map_name, *, now=None,simulation_controls=False, threaded=False):
        self.fleet = fleet
        self.journal = Journal(path, threaded=threaded)
        self.map_name = map_name
        self.simulation_controls=simulation_controls
        self.failed = False
        self.revision, saved = self.journal.load()
        self.traffic = {}
        self.fenced = False
        self.event_cursor = 0
        self.adapter_ids={}
        self.resume_hold=False
        self.regional_holds = {}
        self.regional_edges = frozenset()
        self.regional_recheck = frozenset()
        try:
            if saved:
                self.restore(saved, time.monotonic() if now is None else now)
            self.checkpoint(uncertain=saved is not None)
        except Exception:
            self.journal.close()
            raise

    def state(self, *, for_storage=False):
        return dict(schema=self.schema, map_name=self.map_name,simulation_controls=self.simulation_controls,
                    fleet=self.fleet.snapshot(for_storage=for_storage), serial=self.fleet.serial, adapter_ids=self.adapter_ids,
                    policy={key:getattr(self.fleet,key) for key in ('low_soc','release_soc','freshness','handling_seconds','feedback_handling')},
                    finished_at=self.fleet.finished_at, unavailable=sorted(self.fleet.unavailable),
                    charger_rates=self.fleet.charger_rates, predictive_charging=self.fleet.predictive_charging,
                    traffic=self.traffic, fenced=self.fenced, resume_hold=self.resume_hold,
                    regional_holds=self.regional_holds, regional_recheck=sorted(self.regional_recheck),
                    monotonic=time.monotonic(), wall=time.time())

    def restore(self, saved, now):
        if saved.get('schema') != self.schema or saved.get('map_name') != self.map_name:
            raise DurabilityError('database schema/map name mismatch; reconciliation required')
        if saved.get('simulation_controls',False)!=self.simulation_controls:raise DurabilityError('simulation control profile changed')
        policy={key:getattr(self.fleet,key) for key in ('low_soc','release_soc','freshness','handling_seconds','feedback_handling')}
        if saved.get('policy') != policy:
            raise DurabilityError('dispatch policy changed; explicit migration required')
        snapshot = saved['fleet']
        if set(snapshot['robots']) != set(self.fleet.robots):
            raise DurabilityError('robot roster changed; reconciliation required')
        f = self.fleet
        f.jobs = {key: Job(**v) for key,v in snapshot['jobs'].items()}
        f.robots = {key: Robot(**v) for key,v in snapshot['robots'].items()}
        # Monotonic clocks cannot be compared across host reboots. Age queued
        # tasks from saved time + elapsed wall time; never trust persisted health.
        elapsed = max(0., time.time()-saved.get('wall', time.time()))
        for j in f.jobs.values():
            age = max(0., saved['monotonic']-j.created)+elapsed
            j.created = now-age
            if j.state not in ('QUEUED','PAUSED','DONE','FAILED','CANCELLED'):
                if j.state != 'RECONCILING':j.reconcile_state=j.state
                j.state = 'RECONCILING'
                j.reason = 'restart: actual robot execution must be reconciled'
                if j.robot:
                    f.robots[j.robot].blocked = True
                    f.robots[j.robot].job = j.id
        for r in f.robots.values():
            r.seen, r.soc = -1e30, None
        f.configure_charger_profiles(snapshot.get('charger_profiles', {}))
        f.configure_workload_charging(snapshot.get('workload_charging'))
        f.charger_observations.clear()  # Require current health after a process restart.
        f.chargers = snapshot['chargers']
        f.charger_occupancy = snapshot.get('charger_occupancy',{})
        f.destinations=snapshot.get('destinations',dict(f.chargers))
        if 'workstations' in snapshot:
            f.workstations = snapshot['workstations']
        else:
            for job in f.jobs.values():
                if job.robot and job.kind == 'transport' and job.state not in ('DONE','QUEUED','PAUSED'):
                    if not f.can_book_workstations(job,job.robot):
                        raise DurabilityError('legacy snapshot has conflicting workstation owners')
                    f.book_workstations(job)
                    if job.state in ('FAILED','CANCELLED') or job.reconcile_state == 'HANDLING':
                        if job.goals[job.index] in f.workstations:
                            f.workstations[job.goals[job.index]]['phase'] = 'uncertain'
        for j in f.jobs.values():
            if j.robot and j.state not in ('QUEUED','PAUSED','DONE') and j.goals[-1].startswith(('CP_', 'PP_')):
                f.destinations.setdefault(j.goals[-1],j.robot)
        f.serial = saved['serial']
        f.finished_at = saved.get('finished_at', {})
        f.unavailable = set(saved.get('unavailable', []))
        f.charger_rates = saved.get('charger_rates', {})
        f.predictive_charging = saved.get('predictive_charging', True)
        f.weights = snapshot.get('weights', f.weights)
        scheduling=snapshot.get('scheduling')
        if scheduling:
            f.policy=validate_policy(scheduling['config'])
            f.policy_revision=scheduling['revision']
            f.policy_state={key:scheduling[key] for key in ('weights','reasons','observations')}
        f.policy_updated_at=-1e30
        self.traffic = saved.get('traffic', {})
        self.adapter_ids=saved.get('adapter_ids',{})
        self.regional_holds = saved.get('regional_holds', {})
        self.regional_recheck = frozenset(saved.get('regional_recheck', self.regional_holds))
        held_stations = {station for hold in self.regional_holds.values() for station in hold['stations']}
        self.regional_edges = frozenset(edge for edge in f.graph.edges if held_stations.intersection(edge))
        self.fenced = True
        self.resume_hold=bool(saved.get('resume_hold',False)) if saved.get('fenced') else bool(snapshot.get('dispatch_paused',False))
        f.dispatch_paused = True
        f.emit('restart_reconciliation_required', pending_commands=len(self.journal.commands()))

    def checkpoint(self, commands=(), acknowledgements=(), uncertain=False):
        self.revision = self.journal.commit(self.revision, self.state(for_storage=True), commands,
                                            self.fleet.events[self.event_cursor:], acknowledgements, uncertain)
        self.event_cursor = len(self.fleet.events)

    def apply(self, action, *, fresh_admission=None):
        if self.failed:
            raise DurabilityError('storage fault latched; new dispatch disabled')
        footprint = self.fleet.reserved_cells
        # The lightweight executor provides an immutable footprint snapshot.
        immutable = {id(footprint): footprint} if isinstance(footprint, frozenset) else {}
        # New submissions and their provisional slots mutate only those new jobs.
        # Existing tasks and vehicle ownership are untouched by this action.
        before = (copy.deepcopy({k:v for k,v in self.fleet.__dict__.items() if k not in ('graph', 'events')}, immutable)
                  if fresh_admission is None else {})
        previous_events = len(self.fleet.events)
        traffic_before, fenced_before = copy.deepcopy(self.traffic), self.fenced
        identities_before=dict(self.adapter_ids)
        holds_before, edges_before = self.regional_holds, self.regional_edges
        recheck_before = self.regional_recheck
        resume_before = self.resume_hold
        try:
            result, commands, acknowledgements = action()
            for c in commands:
                c.setdefault('command_id',uuid.uuid4().hex)
                c['map_name'] = self.map_name
            self.checkpoint(commands, acknowledgements)
            # Events have become durable; ROS delivery is a separate operation.
            return result, commands
        except (ValueError, KeyError, TypeError):
            for identity in fresh_admission or ():
                self.fleet.jobs.pop(identity, None)
            for k,v in before.items():setattr(self.fleet,k,v)
            del self.fleet.events[previous_events:]
            self.traffic, self.fenced = traffic_before, fenced_before
            self.adapter_ids=identities_before
            self.regional_holds, self.regional_edges = holds_before, edges_before
            self.regional_recheck = recheck_before
            self.resume_hold = resume_before
            raise
        except Exception as error:
            for identity in fresh_admission or ():
                self.fleet.jobs.pop(identity, None)
            for k,v in before.items():setattr(self.fleet,k,v)
            del self.fleet.events[previous_events:]
            self.traffic, self.fenced = traffic_before, fenced_before
            self.adapter_ids=identities_before
            self.regional_holds, self.regional_edges = holds_before, edges_before
            self.regional_recheck = recheck_before
            self.resume_hold = resume_before
            self.failed = True
            self.fleet.dispatch_paused = True
            raise DurabilityError('durable transaction failed; no new command may be published') from error

    def request(self, req, now, *, preassign=False, preassign_batch=False, feedback_unavailable=()):
        operation = req.get('operation')
        fresh = None
        if 'operation' not in req and isinstance(req.get('id'), str):
            fresh = (req['id'],) if req['id'] not in self.fleet.jobs else None
        elif operation == 'submit_batch' and isinstance(req.get('tasks'), list):
            fresh = {item['id'] for item in req['tasks'] if isinstance(item, dict)
                     and isinstance(item.get('id'), str) and item['id'] not in self.fleet.jobs}
        def action():
            commands = []
            if 'operation' not in req:
                result = self.fleet.submit(req, now)
                if preassign and not self.fenced:
                    self.fleet.reserve_next(result, now, set(feedback_unavailable) | self.regional_holds.keys())
            elif req['operation']=='submit_batch':
                items=req.get('tasks')
                if not isinstance(items,list) or not 1<=len(items)<=MAX_BATCH_TASKS:raise ValueError(f'batch requires 1..{MAX_BATCH_TASKS} tasks')
                if any(not isinstance(item,dict) or 'operation' in item or not isinstance(item.get('id'), str) for item in items):raise ValueError('batch contains invalid task/control')
                if len({item.get('id') for item in items})!=len(items):raise ValueError('duplicate id in batch')
                result=[self.fleet.submit(item,now) for item in items]
                if preassign_batch and fresh:
                    new_jobs = [job for job in result if job.id in fresh]
                    if self.fenced:
                        for job in new_jobs:
                            job.admission = {'state': 'waiting', 'reason': '执行状态待核对，任务已入队',
                                             'reasons': {'reconciling': 1}}
                    else:
                        self.fleet.reserve_batch_next(new_jobs, now,
                                                      set(feedback_unavailable) | self.regional_holds.keys())
                self.fleet.emit('batch_accepted',task_ids=[j.id for j in result],count=len(result))
            elif req['operation'] == 'cancel':
                j = self.fleet.jobs.get(req['id'])
                if j and j.robot in self.regional_holds:
                    raise ValueError('区域保留车辆须先核对执行状态')
                cmd = self.fleet.cancel(req['id'], now=now)
                if cmd:commands.append(cmd)
                result = None
            else:
                allowed=('pause','priority','resume','hold_dispatch','set_weights','set_policy','update','set_vehicle_profile',
                         'enable_vehicle','disable_vehicle','remove_vehicle','request_charge')
                if self.simulation_controls:
                    allowed += ('fault_idle','clear_idle_fault')
                if req['operation'] not in allowed:
                    raise ValueError('operation is not enabled in durable profile')
                j = self.fleet.jobs.get(req.get('id'))
                if (req.get('robot') in self.regional_holds or (j and j.robot in self.regional_holds)):
                    raise ValueError('区域保留车辆须先核对执行状态')
                if self.fenced and req['operation'] not in ('pause','priority','hold_dispatch'):
                    raise ValueError('restart reconciliation fence is active')
                if self.fenced and req['operation']=='hold_dispatch' and req.get('enabled') is not True:
                    raise ValueError('generic resume cannot remove reconciliation fence')
                if self.fenced and req['operation'] == 'hold_dispatch':
                    self.resume_hold = True
                if req['operation'] == 'remove_vehicle':
                    name = req['robot']
                    if name in self.traffic.get('active', {}) or name in self.traffic.get('waiting', {}):
                        raise ValueError('车辆仍占用或等待路权，请先处理当前执行')
                if req['operation']=='update' and self.simulation_controls and self.fleet.feedback_handling:
                    job = self.fleet.jobs[req['id']]
                    task = req.get('task',{})
                    if job.transfer_from and (task.get('type') != 'transport' or
                            [task.get('pickup'),task.get('dropoff')] != job.goals):
                        raise ValueError('故障改派沿用原搬运任务的取货点和卸货点')
                result=self.fleet.operation(req, now)
                if isinstance(result,dict):commands.append(result)
            return result, commands, []
        return self.apply(action, fresh_admission=fresh)

    def recover_execution(self, job_id):
        if self.fenced or self.fleet.jobs[job_id].robot in self.regional_holds:
            raise ValueError('reconciliation must finish before recovery')
        return self.apply(lambda:(None,[self.fleet.recover_execution(job_id)],[]))

    def redirect_loaded_handoff(self, job, previous, bay, clearance):
        if self.fenced or not self.fleet.feedback_handling:
            raise ValueError('仅已就绪的轻量仿真支持受控载货交接')

        def action():
            row = self.journal.db.execute('SELECT body FROM commands WHERE id=?',
                                          (previous['command_id'],)).fetchone()
            if not row or json.loads(row[0]) != previous or previous['task_id'] != job.execution_id:
                raise ValueError('旧执行指令无法核对')
            return None, [self.fleet.begin_loaded_handoff(job, bay, clearance)], [(previous['task_id'], 'goal')]

        return self.apply(action)[1][0]

    @staticmethod
    def cargo_at_source(job, actions):
        cargo = actions.get('cargo',{}).get(job.id)
        return (cargo == dict(location=job.goals[0],origin=job.goals[0])
                and job.id not in actions.get('loads',{}).values())

    def supply_commands(self, outbox, actions, records):
        stock = {}
        for item in outbox:
            if item['body'].get('action')=='stock':
                stock.setdefault(item['body']['cargo_id'],[]).append(item)
        commands = []
        acknowledgements = []
        for job in self.fleet.jobs.values():
            if job.kind != 'transport' or job.state not in ('QUEUED','PAUSED'):
                continue
            history = stock.get(job.id,[])
            item = history[-1] if history else None
            if self.cargo_at_source(job,actions):
                if item and item['status']!='ACKNOWLEDGED':
                    acknowledgements.append((item['body']['task_id'],'goal'))
                continue
            job.reason = '等待仿真作业端确认原点货物'
            if not item:
                commands.append(dict(action='stock', robot='station', goal=job.goals[0],
                                     cargo_id=job.id, task_id=job.id+':stock:1'))
            elif item['id'] not in records and item['status']!='ACKNOWLEDGED':
                commands.append(item['body'])
            elif item['id'] in records and records[item['id']]['state']=='SUCCEEDED':
                previous_source = item['body']['goal']
                if (previous_source != job.goals[0] and not job.transfer_from
                        and not any(entry['body'].get('action')=='pickup'
                                    and entry['body'].get('cargo_id')==job.id for entry in outbox)
                        and actions.get('cargo',{}).get(job.id)==dict(location=previous_source,origin=previous_source)
                        and job.id not in actions.get('loads',{}).values()):
                    acknowledgements.append((item['body']['task_id'],'goal'))
                    commands.append(dict(action='stock',robot='station',goal=job.goals[0],
                                         previous_source=previous_source,cargo_id=job.id,
                                         task_id=f'{job.id}:stock:{len(history)+1}'))
        return commands, acknowledgements

    def checked_transfers(self, executor, actions, stopped):
        terminal = {r['body']['task_id']:r for r in executor['records']
                    if not any(r['body'].get(k) for k in ('cancel','pause','resume'))}
        outbox = [entry['body'] for entry in self.journal.commands()]
        for job in self.fleet.jobs.values():
            if (job.kind != 'transport' or job.index != 0 or job.loaded
                    or not job.robot or job.state not in ('FAILED','CANCELLED')):
                continue
            record = terminal.get(job.execution_id)
            pose = stopped.get(job.robot)
            pickup = self.fleet.graph.stations[job.goals[0]]['pos']
            if (not record or record['state'] not in ('FAILED','CANCELLED')
                    or record['body'].get('robot') != job.robot or record['body'] not in outbox
                    or pose is None or math.hypot(pose[0]-pickup['x'],pose[1]-pickup['y'])
                    <= STOP_FOOTPRINT_RADIUS + STOP_TOLERANCE
                    or job.robot in executor.get('active',[]) or job.robot in executor.get('pending',[])
                    or not self.cargo_at_source(job,actions) or job.robot in actions.get('loads',{})):
                continue
            if any(c.get('action') == 'pickup' and c.get('cargo_id') == job.id
                   and c.get('robot') == job.robot for c in outbox):
                continue
            if any(r['body'].get('robot') == job.robot and r['state'] in ('ACTIVE','INTERRUPTED')
                   for r in actions['records']):
                continue
            if any(b['job']==job.id and b['phase']!='reserved' for b in self.fleet.workstations.values()):
                continue
            automatic = job.state == 'FAILED' or job.cancel_reason == 'telemetry or localization expired'
            if automatic and not job.transfer_from and (not job.requested_robot or job.allow_transfer):
                self.fleet.transfer_pre_pickup(job)
            else:
                self.fleet.release_unused_workstations(job)

    def queue_returns(self,homes,now, *, charging_only=False):
        if self.fenced:return
        available_homes = {name: station for name, station in homes.items() if name not in self.regional_holds}
        plans=self.fleet.return_plan(available_homes, charging_only=charging_only)
        if plans:self.apply(lambda:(self.fleet.queue_returns(plans,now),[],[]))

    def configure_charger_profiles(self, profiles):
        if self.fenced:
            raise ValueError('调度尚未恢复，请先核对执行状态')

        def action():
            self.fleet.configure_charger_profiles(profiles)
            return None, [], []

        return self.apply(action)[0]

    def tick(self, now, *, positions=None, executor=None, actions=None, stopped=None, eligible=None, feedback_unavailable=()):
        if not self.fenced and not self.regional_proof_current(executor, actions):
            return self.refence_regional_restart()

        def action():
            if self.fenced:
                return None, [], []
            observed_positions = {name: pose for name, pose in (positions or {}).items()
                                  if name not in self.regional_holds}
            self.fleet.clear_departed_workstations(observed_positions)
            self.fleet.update_charger_occupancy(observed_positions)
            supplied = None
            if self.simulation_controls and self.fleet.feedback_handling and actions is not None:
                supplied = {j.id for j in self.fleet.jobs.values() if j.kind=='transport'
                            and self.cargo_at_source(j,actions)}
                if executor is not None:
                    self.checked_transfers(executor,actions,stopped or {})
            return None, [c for c in self.fleet.tick(now, supplied=supplied, eligible=eligible,
                                                    feedback_unavailable=set(feedback_unavailable) | self.regional_holds.keys()) if c], []
        return self.apply(action)[1]

    def verified_regional_holds(self, executor):
        """Accept containment only from the bound executor with its boundary already locked."""
        reports = executor.get('regional_holds', {})
        if not isinstance(reports, dict):
            return {}, frozenset()
        raw_edges = executor.get('closed_edges', ())
        if not isinstance(raw_edges, (list, tuple)):
            return {}, frozenset()
        closed = {tuple(edge) for edge in raw_edges
                  if isinstance(edge, (list, tuple)) and len(edge) == 2 and all(isinstance(n, str) for n in edge)}
        holds, boundary = {}, set()
        for name, report in reports.items():
            robot = self.fleet.robots.get(name)
            if not robot or not isinstance(report, dict) or report.get('confirmed') is not True:
                continue
            stations = report.get('stations')
            if (not isinstance(stations, list) or not stations
                    or any(not isinstance(n, str) or n not in self.fleet.graph.stations for n in stations)
                    or robot.station not in stations):
                continue
            job = self.fleet.jobs.get(robot.job)
            if 'execution_id' not in report or report['execution_id'] != (job.execution_id if job else None):
                continue
            area = set(stations)
            edges = {edge for edge in self.fleet.graph.edges if area.intersection(edge)}
            if not edges.issubset(closed):
                continue
            holds[name] = {'stations': sorted(area), 'execution_id': report['execution_id']}
            boundary.update(edges)
        return holds, frozenset(boundary)

    def regional_proof_current(self, executor, actions):
        if not self.regional_holds:
            return True
        for key, snapshot in (('route', executor), ('actions', actions)):
            if (not snapshot or snapshot.get('map_name') != self.map_name
                    or snapshot.get('database_id') != self.adapter_ids.get(key)
                    or snapshot.get('map_change_requires_restart')):
                return False
        holds, _ = self.verified_regional_holds(executor)
        return all(holds.get(name) == record for name, record in self.regional_holds.items())

    def refence_regional_restart(self):
        if self.fenced or not self.regional_holds:
            return []

        def action():
            self.resume_hold = self.fleet.dispatch_paused
            self.fenced = self.fleet.dispatch_paused = True
            self.fleet.emit('regional_reconciliation_fence_restored')
            return None, [], []

        return self.apply(action)[1]

    def reconcile(self, executor, actions, now):
        """Reattach to queryable adapters; never infer arrival from a timeout.

        A restarted executor marks active side effects INTERRUPTED, so those
        tasks remain fenced. Scheduler-only crashes can resume unchanged work.
        """
        adapters=dict(route=executor,actions=actions)
        if any(not v or v.get('map_name')!=self.map_name or not v.get('database_id')
               or v.get('map_change_requires_restart') for v in adapters.values()):
            return self.refence_regional_restart()
        identities={k:v['database_id'] for k,v in adapters.items()}
        if self.adapter_ids and self.adapter_ids!=identities:
            return self.refence_regional_restart()
        if self.adapter_ids and not self.fenced and not self.regional_holds:
            return []
        holds, boundary = self.verified_regional_holds(executor)
        stale = {name for name, r in self.fleet.robots.items() if now-r.seen>self.fleet.freshness}
        if stale - holds.keys():
            return self.refence_regional_restart()
        if self.adapter_ids and not self.fenced and self.regional_holds == holds and self.regional_edges == boundary:
            return []
        def action():
            commands=[]
            outbox = [entry['body'] for entry in self.journal.commands()]
            if not self.adapter_ids:
                self.adapter_ids=identities
                self.fleet.emit('adapters_bound',identities=identities)
            for j in self.fleet.jobs.values():
                if j.state!='RECONCILING' or j.robot in holds:continue
                previous=j.reconcile_state
                is_action=previous=='HANDLING' or (j.execution_id or '').endswith((':pickup',':dropoff'))
                records=adapters['actions' if is_action else 'route']['records']
                original = next((c for c in reversed(outbox) if c['task_id']==j.execution_id
                                 and c['robot']==j.robot and not any(c.get(k) for k in ('cancel','pause','resume'))),None)
                record = next((r for r in records if original and
                               r['body'].get('command_id')==original['command_id']),None)
                if record and record['body'] != original:
                    raise DurabilityError('executor payload differs from committed command on restart')
                if record and record['state'] in ('FAILED','CANCELLED'):
                    loaded = actions.get('loads',{}).get(j.robot)
                    j.loaded = j.loaded or loaded==j.id
                    self.fleet.fail(j, record.get('result',{}).get('reason') or j.cancel_reason or
                                   'adapter confirmed terminal execution on restart',
                                   cancelled=previous=='CANCELING' or record['state']=='CANCELLED')
                    self.fleet.emit('execution_reconciled',task_id=j.id,robot=j.robot,state=j.state)
                    continue
                if previous in ('CANCELING','PAUSING','RESUMING'):
                    event = (record or {}).get('result',{}).get('event')
                    control = {'CANCELING':'cancel','PAUSING':'pause','RESUMING':'resume'}[previous]
                    sent = next((c for c in reversed(outbox) if c['task_id']==j.execution_id
                                 and c['robot']==j.robot and c.get(control)),None)
                    receipt = next((r for r in records if sent and r['body']==sent),None)
                    if previous=='CANCELING' and ((record and record['state']=='SUCCEEDED') or
                        (receipt and receipt['state']=='SUCCEEDED' and
                         receipt.get('result',{}).get('event')=='cancelled')):
                        j.loaded = j.loaded or actions.get('loads',{}).get(j.robot)==j.id
                        self.fleet.fail(j,j.cancel_reason or 'adapter confirmed cancellation',cancelled=True)
                        self.fleet.emit('execution_reconciled',task_id=j.id,robot=j.robot,state=j.state)
                        continue
                    if previous=='PAUSING' and record and record['state']=='PAUSED' and event=='paused':
                        j.state='PAUSED_ACTIVE'
                    elif previous=='RESUMING' and record and record['state']=='ACTIVE' and event=='resumed':
                        j.state='EXECUTING'
                    else:
                        if sent and not receipt and j.robot not in self.regional_recheck:
                            commands.append(sent)
                        continue
                elif previous in ('CHARGING','NEXT_LEG'):
                    expected=j.id if j.loaded else None
                    if actions.get('loads',{}).get(j.robot)!=expected:continue
                    j.state=previous
                elif record:
                    if record['state']=='INTERRUPTED':continue
                    if is_action:
                        j.state='HANDLING';j.action_sent=True
                    else:j.state=previous
                    if record['state']=='SUCCEEDED':
                        self.fleet.on_route(record['result'],now)
                else:
                    # Re-publish ONLY the committed command, using the exact ID.
                    if j.robot in self.regional_recheck:
                        continue
                    if original:
                        commands.append(original);j.state=previous
                    elif is_action and not j.action_sent:
                        j.state='HANDLING'
                    else:continue
                if j.state not in ('FAILED','CANCELLED'):self.fleet.robots[j.robot].blocked=False
                if j.state not in ('FAILED','CANCELLED'):j.reason=''
                self.fleet.emit('execution_reconciled',task_id=j.id,robot=j.robot,state=j.state)
            unresolved = {j.robot for j in self.fleet.jobs.values() if j.state == 'RECONCILING'}
            if self.regional_holds != holds:
                self.fleet.emit('regional_reconciliation_changed', holds=holds)
            self.regional_holds, self.regional_edges = holds, boundary
            self.regional_recheck = frozenset(unresolved.intersection(self.regional_recheck) | holds.keys())
            normal_closures = {tuple(edge) for edge in self.traffic.get('closed_edges', ())}
            self.fleet.set_dispatch_closures(normal_closures | boundary)
            self.fleet.charge_closed_edges = frozenset(normal_closures) | boundary
            if self.fenced and unresolved.issubset(holds):
                self.fenced=False
                self.fleet.dispatch_paused=self.resume_hold
                if holds:
                    self.fleet.emit('regional_reconciliation_active', isolated=sorted(holds))
                else:
                    self.fleet.emit('reconciliation_complete')
            elif not unresolved.issubset(holds):
                if not self.fenced:
                    self.resume_hold = self.fleet.dispatch_paused
                    self.fleet.emit('regional_reconciliation_fence_restored')
                self.fenced = self.fleet.dispatch_paused = True
            return None,commands,[]
        return self.apply(action)[1]

    def route_event(self, event, now):
        return self.route_events((event,), now)

    def route_events(self, events, now):
        def action():
            acknowledgements = []
            for event in events:
                execution, name = event.get('task_id'), event.get('robot')
                r = self.fleet.robots.get(name)
                if not r or not r.job or execution != self.fleet.jobs[r.job].execution_id:
                    continue
                if self.fleet.feedback_handling:
                    row = self.journal.db.execute(
                        'SELECT body FROM commands WHERE id=?', (event.get('command_id'),)).fetchone()
                    command = json.loads(row[0]) if row else None
                    if not command or command.get('task_id') != execution or command.get('robot') != name:
                        continue
                if self.fenced or name in self.regional_holds:
                    self.fleet.emit('reconciliation_observation', robot=name, execution_id=execution,
                                    observed_event=event.get('event'))
                    continue
                self.fleet.on_route(event, now)
                kind = {
                    'queued': 'goal', 'dispatched': 'goal', 'arrived': 'goal',
                    'failed': 'goal', 'rejected': 'goal', 'handling_accepted': 'goal',
                    'handling_done': 'goal', 'handling_failed': 'goal',
                    'cancel_requested': 'cancel', 'cancelled': 'cancel',
                    'paused': 'pause', 'resumed': 'resume',
                }.get(event.get('event'))
                if kind:
                    acknowledgements.append((execution, kind))
            return None, [], acknowledgements

        return self.apply(action)

    def synchronize(self,executor,actions,now):
        """Recover lost ROS deliveries/results from the authoritative inboxes."""
        if self.fenced or self.failed:return []
        if not self.regional_proof_current(executor, actions):
            return self.refence_regional_restart()
        adapters=dict(route=executor,actions=actions)
        if any(not value or value.get('map_name')!=self.map_name or value.get('database_id')!=self.adapter_ids.get(key) for key,value in adapters.items()):return []
        outbox=self.journal.commands()
        records={key:{r['body']['command_id']:r for r in value['records']} for key,value in adapters.items()}
        retry=[]
        for item in outbox:
            c=item['body'];robot=self.fleet.robots.get(c['robot'])
            if c.get('action')=='stock':
                record = records['actions'].get(c['command_id'])
                if record and record['body']!=c:
                    self.failed=True;self.fleet.dispatch_paused=True
                    raise DurabilityError('cargo preparation payload differs from committed command')
                continue
            if not robot or not robot.job:continue
            j=self.fleet.jobs[robot.job]
            if j.execution_id!=c['task_id'] or (c['robot'] in self.regional_holds):continue
            record=records['actions' if c.get('action') else 'route'].get(c['command_id'])
            if record:
                if record['body']!=c:
                    self.failed=True;self.fleet.dispatch_paused=True
                    raise DurabilityError('executor payload differs from committed command')
                if record['result'] and record['state'] in ('SUCCEEDED','FAILED','CANCELLED','PAUSED','ACTIVE'):
                    self.route_event(record['result'],now)
            elif item['status'] in ('PREPARED','PUBLISHED','UNCERTAIN'):
                retry.append(c)
        if self.simulation_controls and self.fleet.feedback_handling:
            def action():
                stock, acknowledged = self.supply_commands(outbox,actions,records['actions'])
                return None, retry+stock, acknowledged
            return self.apply(action)[1]
        return self.apply(lambda:(None,retry,[]))[1] if retry else []

    def published(self, command):
        try:
            self.journal.published(command['command_id'])
        except Exception as error:
            self.failed=True;self.fleet.dispatch_paused=True
            raise DurabilityError('publication bookkeeping failed; outcome may be uncertain') from error

    def events_flushed(self):
        self.event_cursor = 0

    def close(self):
        self.journal.close()
