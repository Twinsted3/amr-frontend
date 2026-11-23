"""Cross-region mixed freight, fault injection and paired charging for 100 vehicles."""
import argparse
from collections import defaultdict
from datetime import datetime
import json
from pathlib import Path
import tempfile
import time

from forklift_replay import FleetReplay
from shared_fleet_acceptance import api, console, peak_rss_mib
from sim.lightweight import LightweightFleet
from warehouse_sim.charge_benchmark import compare_charge_runs
from warehouse_sim.cross_warehouse import prepare_forklifts


ARRIVALS = (0, 0, 20, 50, 80, 420, 520)
INTERLOCK = tuple(zip('ABCDEF', 'BCAEFD'))
BLOCKAGE = {('J_22', 'J_23'), ('J_23', 'J_22')}
CHARGER = 'CP_ZONE_2'


def vehicle_claim(engine, robot):
    segment = engine.active.get(robot)
    command = engine.pending.get(robot, {})
    cargo = sorted(key for key, record in engine.cargo.items() if record['location'] == robot)
    return (engine.positions[robot], engine.fleet.robots[robot].job, command.get('command_id'),
            cargo, segment.grant_id if segment else None, segment.cells if segment else None)


def isolate_two_trucks(engine):
    """Replay the same fault rule in both arms, with no dependency on fixed bids."""
    candidates = sorted(name for name in engine.active if int(name[-3:]) < 95)
    candidates.sort(key=lambda name: not bool(vehicle_claim(engine, name)[3]))
    if not candidates:
        raise RuntimeError('第 12 步无可用于验证停驶占用的在途车辆')
    first = candidates[0]
    poses = engine.poses()
    x = poses[first][0]
    distant = [name for name in candidates[1:] if abs(poses[name][0] - x) >= 58]
    second = distant[0] if distant else max((name for name in engine.positions if name != first
                  and int(name[-3:]) < 95), key=lambda name: abs(poses[name][0] - x))
    return first, second


def exercise(server, seed, *, optimized=True, max_ticks=800, verbose=False, fixed_horizon=False, replay=None):
    app = server.fleet
    engine = app.execution
    metrics = prepare_forklifts(engine, optimized=optimized)
    for index in (3, 4, 8, 9):
        engine.configure({'operation': 'set_traffic_zone', 'zone': f'aisle-{index}',
                          'capacity': 3, 'stations': [f'J_{index * 5 + i}' for i in range(5)]})
    engine.configure({'operation': 'set_feedback_profile', 'event': 'handling_done',
                      'profile': {'delay_ticks': 1, 'duplicate_delay_ticks': 4}})
    engine.closed_edges.add(('LOCK_A', 'LOCK_Y'))
    for index, (start, end) in enumerate(INTERLOCK, 95):
        engine.service.request(dict(id=f'interlock-{start}', type='move', goal=f'LOCK_{end}',
                                    robot=f'SIM-{index:03d}', priority=100), engine.tick)
    jobs_on_schedule = {item['id'] for batch in app.batches for item in batch}
    dispatches = set()
    arrivals = []
    faults = {}
    blocked_charger_routes = {edge for edge in engine.graph.edges if edge[1] == CHARGER}
    plan = list(zip(ARRIVALS, app.batches))
    restarted = None
    deadlock_released = False
    first_all_done = None
    completed_during_outage = set()
    recovered = set()
    unresolved_hold_ticks = 0
    delivery_errors = set()
    closure_reroutes_before = None
    closure_reroutes = None
    charged_then_worked = set()
    charged_reassigned = set()
    charged = set()
    edge_users = defaultdict(set)
    last_grants = {}
    full_plug_wait_ticks = 0
    event_cursor = 0
    remaining = []
    closure_reroute_recorded = False
    if replay:
        replay.event(0, 'refuge_closed', '六车互等场景的避让入口暂时关闭',
                     edges=[('LOCK_A', 'LOCK_Y')])
    while engine.tick < max_ticks:
        tick = engine.tick
        frame_tick = tick + 1 if tick else 0
        while plan and tick == plan[0][0]:
            _, tasks = plan.pop(0)
            request_started = time.perf_counter_ns()
            reply = api(server, '/api/fleet/commands', {
                'session': app.session, 'connection': app.connection_id, 'request': {
                    'operation': 'submit_batch', 'tasks': tasks,
                },
            })
            roundtrip_ms = (time.perf_counter_ns() - request_started) / 1_000_000
            received = set(reply['task_ids'])
            if received != {task['id'] for task in tasks}:
                raise RuntimeError('跨区仿真接单回执不完整')
            assigned = sum(key in received and entry.get('robot') in engine.positions
                           for key, entry in reply.get('assignments', {}).items())
            dispatches.update(received)
            prior_outstanding = sum(engine.fleet.jobs[key].state != 'DONE' for key in dispatches - received)
            arrival = dict(tick=tick, submitted=len(tasks), prior_outstanding=prior_outstanding,
                           api_roundtrip_ms=round(roundtrip_ms, 3), vehicle_confirmed_in_reply=assigned,
                           vehicle_not_confirmed_in_reply=len(tasks) - assigned,
                           vehicle_confirmed_within_one_second_in_reply=assigned if roundtrip_ms <= 1000 else 0,
                           vehicle_confirmed_after_one_second_in_reply=assigned if roundtrip_ms > 1000 else 0)
            arrivals.append(arrival)
            if replay:
                replay.event(frame_tick, 'submitted', f'新入队 {len(tasks)} 项业务',
                             submitted=len(tasks), total=len(dispatches), outstanding=prior_outstanding,
                             vehicle_confirmed_in_reply=assigned, api_roundtrip_ms=arrival['api_roundtrip_ms'],
                             scenario_tick=tick)
        if tick == 6:
            closure_reroutes_before = engine.stats['closure_alternate_paths']
            engine.closed_edges.update(BLOCKAGE | blocked_charger_routes)
            if replay:
                replay.event(frame_tick, 'closure', '关闭指定通道与一个桩位入口',
                             edges=sorted(BLOCKAGE | blocked_charger_routes), scenario_tick=tick)
        if tick == 12:
            for name in isolate_two_trucks(engine):
                faults[name] = engine.poses()[name]
                engine.feedback_unavailable.add(name)
            if replay:
                replay.event(frame_tick, 'outage', '两台在途车辆反馈中断', robots=faults, scenario_tick=tick)
        if tick == 20 and app.resume_db is not None:
            previous = set(engine.feedback_unavailable)
            claims = {name: vehicle_claim(engine, name) for name in previous}
            app.close()
            app = LightweightFleet(server.dispatch, app.resume_db.parent, 100, background=False,
                                   resume_db=app.resume_db, benchmark_seed=seed)
            server.fleet = app
            engine = app.execution
            restarted = dict(tick=tick, retained_outages=sorted(engine.feedback_unavailable),
                             active_claims=sum(bool(record[-2]) for record in claims.values()),
                             cargo_claims=sum(bool(record[3]) for record in claims.values()),
                             preserved=engine.feedback_unavailable == previous and all(
                                 vehicle_claim(engine, name) == claim for name, claim in claims.items()))
            if replay:
                replay.event(frame_tick, 'restart', '仿真重启并核对失联车占位与货物', robots=previous,
                             **{key: restarted[key] for key in ('active_claims', 'cargo_claims', 'preserved')},
                             scenario_tick=tick)
        if tick == 36:
            for name in faults:
                faults[name] = bool(engine.restore_feedback(name, faults[name], stopped=True))
            if replay:
                rejoined = [name for name, restored in faults.items() if restored]
                replay.event(frame_tick, 'rejoined', f'核对后 {len(rejoined)} 台车恢复反馈', robots=rejoined,
                             scenario_tick=tick)
        if tick == 44:
            engine.closed_edges.difference_update(blocked_charger_routes)
            if replay:
                replay.event(frame_tick, 'reopened', '重新开放桩位入口',
                             edges=sorted(blocked_charger_routes), scenario_tick=tick)
        if tick == 75:
            closure_reroutes = engine.stats['closure_alternate_paths'] - closure_reroutes_before
            engine.closed_edges.difference_update(BLOCKAGE)
            if replay:
                replay.event(frame_tick, 'reopened', '持续封闭路段恢复通行', edges=sorted(BLOCKAGE), scenario_tick=tick)
        if not deadlock_released and tick == 35:
            engine.closed_edges.discard(('LOCK_A', 'LOCK_Y'))
            deadlock_released = True
            if replay:
                replay.event(frame_tick, 'reopened', '开放六车互等的避让入口',
                             edges=[('LOCK_A', 'LOCK_Y')], scenario_tick=tick)
        if replay and tick == 0:
            replay.observe(engine, len(dispatches), 0)
        app.step()
        metrics.observe(engine)
        for name, key in engine.fleet.finished_at.items():
            if engine.fleet.jobs[key].kind == 'charge':
                charged.add(name)
            if key in dispatches:
                if name in charged:
                    charged_then_worked.add(name)
                if engine.feedback_unavailable and name not in faults:
                    completed_during_outage.add(key)
        for name, segment in engine.active.items():
            if last_grants.get(name) != segment.grant_id:
                last_grants[name] = segment.grant_id
                for start, end in zip(segment.nodes, segment.nodes[1:]):
                    edge_users[tuple(sorted((start, end)))].add(name)
        charging_bays = {job.goals[0] for job in engine.fleet.jobs.values()
                         if job.kind == 'charge' and job.state == 'CHARGING'}
        if engine.fleet.charge_waiting and charging_bays.issuperset(metrics.bays):
            full_plug_wait_ticks += 1
            if replay and full_plug_wait_ticks == 1:
                replay.event(engine.tick, 'first_full_charge', f'{len(charging_bays)} 个桩位同时在充，低电车辆等待',
                             robots=engine.fleet.charge_waiting, bays=sorted(charging_bays))
        if replay and not closure_reroute_recorded and engine.stats['closure_alternate_paths']:
            replay.event(engine.tick, 'reroute', '车辆在封路约束下使用替代路线',
                         reroutes=engine.stats['closure_alternate_paths'])
            closure_reroute_recorded = True
        for event in engine.fleet.events[event_cursor:]:
            if replay:
                replay.observe_audit(engine.tick, event)
            if event['event'] == 'traffic_deadlock_resolved':
                recovered.add(tuple(sorted(event['robots'])))
            if event['event'] == 'assigned' and event['task_id'] in dispatches and event['robot'] in charged:
                if replay and event['robot'] not in charged_reassigned:
                    replay.event(engine.tick, 'charge_redispatch', '已经完成充电的车辆再次得到业务任务',
                                 robots=[event['robot']], task_id=event['task_id'])
                charged_reassigned.add(event['robot'])
        event_cursor = len(engine.fleet.events)
        if tick < 35 and any(cycle['status'] in ('no_safe_plan', 'search_limit') and len(cycle['robots']) >= 6
                             and not engine.active.keys() & set(cycle['robots']) for cycle in engine.recent_cycles):
            unresolved_hold_ticks += 1
        remaining = sorted(key for key in dispatches if engine.fleet.jobs[key].state != 'DONE')
        if replay:
            replay.observe(engine, len(dispatches), len(dispatches) - len(remaining))
        if verbose and engine.tick % 40 == 0:
            print(f'tick {engine.tick}: {len(dispatches)-len(remaining)} done, {len(remaining)} pending, '
                  f'{len(engine.active)} moving, {len(engine.waiting)} waiting', flush=True)
        if not remaining and not plan and all(engine.fleet.jobs[f'interlock-{start}'].state == 'DONE'
                                              for start, _ in INTERLOCK):
            if replay and first_all_done is None:
                replay.event(engine.tick, 'complete', f'{len(dispatches)} 项业务全部完成', completed=len(dispatches))
            first_all_done = first_all_done or engine.tick
            if not fixed_horizon:
                break
    done = sum(engine.fleet.jobs[key].state == 'DONE' for key in dispatches)
    handled = {key for key in dispatches if engine.fleet.jobs[key].kind == 'transport'
               and engine.fleet.jobs[key].state == 'DONE'}
    for key in handled:
        if engine.cargo.get(key, {}).get('location') != engine.fleet.jobs[key].goals[-1]:
            delivery_errors.add(key)
    charge_report = metrics.report(engine)
    allocation_times = sorted((datetime.fromisoformat(job.first_allocation_at) - datetime.fromisoformat(job.created_at))
                              .total_seconds() for job in (engine.fleet.jobs[key] for key in dispatches)
                              if job.first_allocation_at)
    deadlock_group = {f'SIM-{n:03d}' for n in range(95, 101)}
    checks = dict(all_scheduled_tasks_done=done == len(jobs_on_schedule),
                  sustained_arrivals=any(event['tick'] > 0 and event['prior_outstanding'] > 0 for event in arrivals),
                  no_spatial_overlap=engine.overlap_cells == 0,
                  cargo_locations_match=not delivery_errors,
                  six_vehicle_recovery=any(deadlock_group.issubset(group) for group in recovered),
                  unresolved_cycle_held=unresolved_hold_ticks > 0,
                  outages_reconciled=len(faults) == 2 and all(value is True for value in faults.values()),
                  restart_preserved_claims=bool(restarted and restarted['preserved'] and restarted['active_claims']),
                  healthy_work_during_outages=bool(completed_during_outage),
                  replan_during_closure=bool(closure_reroutes),
                  shared_edges_observed=any(len(users) >= 2 for users in edge_users.values()),
                  low_power_wait_observed=charge_report['by_state_vehicle_ticks']['waiting'] > 0,
                  all_plugs_busy_wait_observed=full_plug_wait_ticks > 0,
                  resumed_work_after_charging=bool(charged_then_worked))
    return dict(vehicles=len(engine.positions), seed=seed, predictive_charging=optimized, arrivals=arrivals,
                ticks=engine.tick, first_all_done_tick=first_all_done, business_done=done,
                transports_done=len(handled), restart=restarted, cargo_errors=sorted(delivery_errors),
                batch_acceptance={**{key: sum(item[key] for item in arrivals) for key in (
                    'submitted', 'vehicle_confirmed_in_reply', 'vehicle_not_confirmed_in_reply',
                    'vehicle_confirmed_within_one_second_in_reply', 'vehicle_confirmed_after_one_second_in_reply',
                )}, 'max_api_roundtrip_ms': max((item['api_roundtrip_ms'] for item in arrivals), default=None)},
                allocation_seconds=dict(allocated=len(allocation_times), within_one_second=sum(
                    0 <= value <= 1 for value in allocation_times), max=max(allocation_times, default=None)),
                charging=charge_report, worked_after_charging=len(charged_then_worked),
                assigned_after_charging=sorted(charged_reassigned),
                closure_reroutes=closure_reroutes, completed_during_outage=len(completed_during_outage),
                shared_road_segments=sum(len(users) >= 2 for users in edge_users.values()),
                max_vehicles_per_shared_segment=max(map(len, edge_users.values()), default=0),
                all_plugs_busy_wait_ticks=full_plug_wait_ticks,
                unresolved_hold_ticks=unresolved_hold_ticks, recovered_groups=sorted(recovered),
                cycles=engine.recent_cycles, checks=checks,
                traffic=dict(engine.stats),
                outstanding=[{'id': key, 'state': engine.fleet.jobs[key].state, 'reason': engine.fleet.jobs[key].reason,
                              'robot': engine.fleet.jobs[key].robot} for key in remaining[:20]],
                waits={key: engine.waiting[key] for key in list(engine.waiting)[:12]},
                peak_rss_mib=peak_rss_mib())


def run(seed, optimized, max_ticks, verbose, fixed_horizon=False, *, replay_output=None):
    with tempfile.TemporaryDirectory() as directory, console(100, Path(directory), restart=True,
                                                             benchmark_seed=seed) as server:
        started = time.perf_counter()
        replay = None
        if optimized and replay_output is not None:
            app = server.fleet
            map_name = server.dispatch.map(app.map_id, raw=True)['header']['mapName']
            replay = FleetReplay(app.execution, map_name, seed, sum(map(len, app.batches)))
        result = exercise(server, seed, optimized=optimized, max_ticks=max_ticks, verbose=verbose,
                          fixed_horizon=fixed_horizon, replay=replay)
        result['wall_s'] = time.perf_counter() - started
        return (result, replay) if replay_output is not None else result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--seed', type=int, default=22)
    parser.add_argument('--max-ticks', type=int, default=800)
    parser.add_argument('--report', type=Path)
    parser.add_argument('--replay', type=Path, help='将实际优化组联测记录保存为可交互回放文件')
    parser.add_argument('--compare-charging', action='store_true')
    parser.add_argument('--verbose-progress', action='store_true')
    args = parser.parse_args()
    if args.max_ticks < 1:
        parser.error('--max-ticks 必须至少为 1')
    if args.report is not None and args.replay is not None and args.report.resolve() == args.replay.resolve():
        parser.error('--report 和 --replay 必须使用不同文件')
    run_result = run(args.seed, True, args.max_ticks, args.verbose_progress, args.compare_charging,
                     replay_output=args.replay)
    optimized, replay = run_result if args.replay is not None else (run_result, None)
    if args.compare_charging:
        if args.verbose_progress:
            print(f'optimized checks: {optimized["checks"]}', flush=True)
        baseline = run(args.seed, False, args.max_ticks, args.verbose_progress, True)
        comparison = compare_charge_runs(baseline['charging'], optimized['charging'])
        reduction = comparison['charging_unavailability_reduction_pct']
        on_target = reduction is not None and reduction >= 25 and optimized['business_done'] >= baseline['business_done']
        result = dict(baseline=baseline, optimized=optimized, charging_comparison=comparison,
                      reduction_at_least_25_percent=on_target)
        passed = all(optimized['checks'].values()) and on_target
    else:
        result, passed = optimized, all(optimized['checks'].values())
    if replay:
        replay.write(args.replay, optimized, comparison=result.get('charging_comparison'),
                     target_met=result.get('reduction_at_least_25_percent'))
    output = json.dumps(result, ensure_ascii=False, indent=2)
    if args.report:
        args.report.write_text(output + '\n', encoding='utf-8')
    print(output)
    raise SystemExit(not passed)


if __name__ == '__main__':
    main()
