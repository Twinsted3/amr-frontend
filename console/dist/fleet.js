(() => {
  const panel = document.querySelector('main section');
  const svg = $('fleet-map');
  const colors = ['#69d8ff', '#bba3ff', '#64e6af', '#ffb978', '#ff88b0'];
  const states = {
    QUEUED: '排队中', EXECUTING: '执行中', HANDLING: '货叉作业', NEXT_LEG: '准备下一段',
    CHARGING: '充电中', DONE: '已完成', FAILED: '执行失败', CANCELLED: '已取消',
    CANCELING: '等待取消确认', PAUSED: '排队已暂停', PAUSING: '正在停车',
    PAUSED_ACTIVE: '执行已暂停', RESUMING: '等待继续确认', RECONCILING: '重启后核对中',
  };
  const kinds = {transport: '搬运', move: '移动', standby: '待命', charge: '充电', return: '自动返程'};
  function jobKind(job) {
    if (job.kind === 'charge' && job.charge_trigger) return job.charge_trigger === 'manual' ? '手动充电' : '自动充电';
    return kinds[job.kind] ?? job.kind;
  }
  function jobPriority(job) {
    return job.kind === 'charge' ? '充电' : job.priority === 100 ? '紧急' : '普通';
  }
  function jobTarget(job) {
    return job.goals.at(-1) ?? (job.charge_mode === 'nearest' ? '自动选择最近可用桩' : '');
  }
  const events = {
    request_accepted: '调度已接收', request_rejected: '调度拒绝', batch_accepted: '批量任务已接收',
    assigned: '已选车', created: '任务登记', leg_sent: '已下发路线', traffic_wait: '等待路权',
    dispatched: '获准通行', segment_released: '已到等待点并释放上一段', arrived: '到站', handling_requested: '开始工位动作',
    localization_wait: '定位中断，保留路权', localization_resumed: '定位已恢复，继续原路段',
    handling_done: '货叉动作完成', pickup_confirmed: '取货确认', dropoff_confirmed: '卸货确认',
    charging_wait: '等待充电', completed: '任务完成', traffic_yield: '让行',
    traffic_deadlock_planned: '已找到死锁恢复顺序',
    traffic_deadlock_held: '死锁等待安全方案',
    traffic_deadlock_replan: '路权或反馈变化，重新规划',
    traffic_deadlock_resolved: '互等已解除',
    failed: '执行失败', cancelled: '任务取消', dispatch_hold: '派单设置变更', updated: '任务参数已修改',
    policy_updated: '调度策略已更新', assignment_planned: '完成本轮车辆分配',
    pause: '排队已暂停', resume: '排队已继续', paused_active: '车辆已暂停',
    resumed_active: '车辆已继续', adapters_bound: '执行端已连接',
    task_transferred: '取货前故障，原任务改派', execution_reconciled: '已核对原执行',
    restart_reconciliation_required: '调度重启，正在核对执行', reconciliation_complete: '执行核对完成',
    workstation_released: '装卸工位已释放', cargo_at_source: '作业端已确认原点货物',
  };
  const workstationPhases = {reserved: '已预约', handling: '作业中', departing: '等待驶离', uncertain: '待核对'};
  const trafficReasons = {
    cycle_plan_wait: '按死锁恢复顺序等待',
    no_safe_plan: '当前候选未找到安全路线，保留占用',
    search_limit: '达到重规划搜索上限，保留占用',
    cargo_unconfirmed: '载货状态待确认',
    vehicle_unconfirmed: '车辆位置或停稳状态待确认',
    planned: '按确认顺序恢复通行',
    resource_conflict: '等待冲突资源释放',
    swept_area_conflict: '等待通行空间释放',
    reservation_changed: '前方路权已变化',
    position_or_cargo_changed: '位置或载货状态已变化',
    movement_interrupted: '恢复途中执行中断',
    task_changed: '任务已变化',
  };
  const trafficReason = value => trafficReasons[value] ?? value;
  function recoveryFor(state, robot) {
    return state.traffic?.deadlock_recovery?.find(entry => entry.robots.includes(robot));
  }
  const homes = {agv01: 'CP_06', agv02: 'CP_12', agv03: 'CP_18', agv04: 'CP_24', agv05: 'PP_05'};
  const terminal = new Set(['DONE', 'FAILED', 'CANCELLED']);
  const numeric = value => Number.isFinite(value) ? value.toFixed(1) : '—';
  const requestedJob = new URLSearchParams(window.location.search).get('job');
  function editable(job) {
    return job && ['QUEUED','PAUSED'].includes(job.state) && !job.robot && !job.execution_id &&
      ['transport','move','standby'].includes(job.kind);
  }
  function controls(job) {
    const operations = [];
    if (['QUEUED','EXECUTING'].includes(job.state)) operations.push(['pause','暂停']);
    if (['PAUSED','PAUSED_ACTIVE'].includes(job.state)) operations.push(['resume','继续']);
    if (!terminal.has(job.state)) operations.push(['cancel',job.state === 'CHARGING' ? '停止充电' : '取消']);
    return operations.map(([op,label]) => `<button type="button" data-fleet-operation="${op}" data-job="${escape(job.id)}">${label}</button>`).join('')
      + (editable(job) ? `<a class="button" href="/tasks/edit?job=${encodeURIComponent(job.id)}">编辑</a>` : '');
  }
  if (document.body.dataset.view === 'fleet-task') {
    let recordData, submitting = false;
    const health = $('fleet-record-health');
    $('fleet-record-name').textContent = requestedJob || '缺少任务编号';
    if (!requestedJob) {
      health.textContent = '请从车队队列打开任务。';
      health.classList.add('fleet-warn');
      return;
    }
    async function monitorRecord() {
      try {
        const data = await request('/api/fleet/state');
        recordData = data;
        const fresh = data.fresh === true;
        const state = data.state ?? {};
        const job = Object.values(state.jobs ?? {}).find(item => item.id === requestedJob);
        health.textContent = !fresh ? '仿真状态不可用 · 页面保留已读取记录'
          : job ? '实时 ROS2 / Gazebo' : '当前仿真会话中未找到该任务';
        health.classList.toggle('fleet-warn', !fresh || !job);
        if (fresh && !job) {
          setMarkup($('fleet-record-info'), '');
          setMarkup($('fleet-record-events'), '');
          setMarkup($('fleet-record-actions'), '');
        }
        if (job && fresh) {
          const waiting = state.robots?.[job.robot]?.job === job.id ? state.traffic?.waiting?.[job.robot] : null;
          const recovery = waiting && recoveryFor(state,job.robot);
          const bookings = Object.entries(state.workstations ?? {}).filter(([, booking]) => booking.job === job.id);
          $('fleet-record-route').textContent = [job.kind === 'transport' ? job.goals[0] : job.origin_station, jobTarget(job)].filter(Boolean).join(' → ');
          setMarkup($('fleet-record-info'), fields([
            ['状态', waiting ? '等待路权' : states[job.state] ?? job.state], ['类型', jobKind(job)],
            ['优先级', jobPriority(job)], ['运行地图', data.map_name],
            ['执行车辆', job.robot ?? job.requested_robot], ['当前目标', job.goals[job.index] ?? jobTarget(job)], ['执行编号', job.execution_id],
            ...(job.charge_mode ? [['选桩方式', job.charge_mode === 'fixed' ? '指定充电位' : '自动选择最近可用桩']] : []),
            ...(job.transfer_from ? [['故障改派来源', job.transfer_from]] : []),
            ...(bookings.length ? [['工位预约', bookings.map(([station, booking]) =>
              `${station} ${workstationPhases[booking.phase] ?? booking.phase}`).join('、')]] : []),
            ['原因', trafficReason(recovery?.status ?? waiting?.reason ?? job.reason)], ['创建时间', formatTime(job.created_at)],
            ['分配时间', formatTime(job.assigned_at)], ['完成时间', formatTime(job.finished_at)],
          ]));
          setMarkup($('fleet-record-actions'), controls(job) || '<span class="muted">任务已结束</span>');
          const history = (data.events ?? []).filter(event => {
            if (['segment_released','localization_wait','localization_resumed','traffic_yield'].includes(event.event)) {
              return event.task_id?.replace(/:\d+$/, '') === job.id;
            }
            return event.task_id === job.id;
          });
          setMarkup($('fleet-record-events'), history.length ? `<ol class="timeline">${history.map(event =>
            `<li><strong>${escape(event.event === 'traffic_yield' && event.loaded ? '载货让行' : events[event.event] ?? event.event)}${event.reason ? ' · ' + escape(trafficReason(event.reason)) : ''}</strong>
            <small>${escape(formatTime(event.received_wall))}</small></li>`).join('')}</ol>` : '<p>暂无关联事件</p>');
        }
        for (const button of $('fleet-record-actions').querySelectorAll('button')) button.disabled = submitting || !data.can_command;
      } catch {
        health.textContent = '仿真状态不可用 · 页面保留已读取记录';
        health.classList.add('fleet-warn');
      }
      setTimeout(monitorRecord, 800);
    }
    $('fleet-record-actions').addEventListener('click', async event => {
      const button = event.target.closest('[data-fleet-operation]');
      if (!button || submitting || !recordData?.can_command) return;
      submitting = true;
      button.disabled = true;
      try {
        const response = await fetch('/api/fleet/commands', {method:'POST',headers:{'Content-Type':'application/json'},
          body:JSON.stringify({session:recordData.session,connection:recordData.connection,
            request:{operation:button.dataset.fleetOperation,id:requestedJob}})});
        const value = await response.json();
        $('fleet-result').textContent = value.event === 'request_accepted' ? '调度已接收操作，等待执行反馈。' : value.error ?? value.reason ?? '请核对任务状态';
      } catch {
        $('fleet-result').textContent = '未收到确认，请先核对任务状态。';
      } finally {
        submitting = false;
      }
    });
    monitorRecord();
    return;
  }
  const buttons = ['fleet-submit', 'fleet-hold', 'fleet-send-batch'];
  let live, geometry, mapSession, mapConnection, selected, running = false, pending = false, editOriginal;
  const editing = document.body.dataset.view === 'task-edit';
  const taskParams = new URLSearchParams(window.location.search);
  let defaultChargeVehicle = taskParams.get('type') === 'charge' ? taskParams.get('robot') : null;
  if (editing) {
    $('fleet-batch')?.closest('details')?.setAttribute('hidden','');
    $('fleet-kind')?.querySelector('option[value="charge"]')?.remove();
  } else if ($('fleet-kind') && taskParams.get('type') === 'charge') {
    $('fleet-kind').value = 'charge';
  }
  let zoom = 1, panX = 0, panY = 0, drag;

  function state() { return live?.state ?? {}; }
  function jobs() { return Object.values(state().jobs ?? {}); }
  function jobById(id) { return jobs().find(job => job.id === id); }
  function ready() {
    return Boolean(live?.can_command && geometry && mapSession === live.session && mapConnection === live.connection &&
      (!editing || editOriginal?.session === live.session && editOriginal?.connection === live.connection && editable(jobById(requestedJob))));
  }
  function number(value) { return Number.isFinite(value) ? value : 0; }
  function point(pose) { return Array.isArray(pose) && Number.isFinite(pose[0]) && Number.isFinite(pose[1]); }
  function x(value) { return number(value); }
  function y(value) { return geometry.height - number(value); }
  function color(name) {
    const index = Object.keys(state().robots ?? {}).indexOf(name);
    return colors[Math.max(0, index) % colors.length];
  }

  function line(points, stroke, width) {
    const path = (points ?? []).filter(point).map(p => `${x(p[0])},${y(p[1])}`).join(' ');
    return path ? `<polyline points="${path}" fill="none" stroke="${stroke}" stroke-width="${width}" stroke-linejoin="round"/>` : '';
  }

  function viewBox() {
    if (!geometry) return;
    const {width, height} = geometry;
    svg.classList.toggle('fleet-zoomed', zoom > 1);
    svg.setAttribute('viewBox', `${panX + width*(1-1/zoom)/2} ${panY + height*(1-1/zoom)/2} ${width/zoom} ${height/zoom}`);
  }

  function formStations() {
    if (!$('fleet-pickup')) return new Set();
    return new Set([$('fleet-pickup').disabled ? '' : $('fleet-pickup').value, $('fleet-target').value]);
  }

  function renderMap() {
    if (!geometry || !svg) return;
    const s = state();
    const map = geometry;
    setMarkup($('fleet-base'), (map.obstacles ?? []).map(([px, py, w, h]) =>
      `<rect x="${x(px-w/2)}" y="${y(py+h/2)}" width="${number(w)}" height="${number(h)}" fill="#253a49" stroke="#3d5565" stroke-width=".1"/>`).join('')
      + map.paths.map(path => line(path.points, '#48657a', .12)).join(''));
    const highlight = formStations();
    setMarkup($('fleet-points'), Object.entries(map.stations).map(([name, station]) => {
      const {x: px, y: py} = station.pos;
      const special = !name.startsWith('LM_');
      const fill = name.startsWith('CP_') ? '#ffb978' : name.startsWith('PP_') ? '#bba3ff' : special ? '#64e6af' : '#81a9c8';
      return `<g data-station="${escape(name)}">
        <circle cx="${x(px)}" cy="${y(py)}" r="${special ? .32 : .19}" fill="${fill}"/>
        ${highlight.has(name) ? `<circle cx="${x(px)}" cy="${y(py)}" r=".8" fill="none" stroke="#ffe083" stroke-width=".15"/>` : ''}
        ${special || zoom > 1.6 ? `<text x="${x(px)+.42}" y="${y(py)-.44}" class="fleet-station-label">${escape(name)}</text>` : ''}
        <circle cx="${x(px)}" cy="${y(py)}" r=".62" fill="transparent" tabindex="0" aria-label="${escape(name)}"><title>${escape(name)}</title></circle>
      </g>`;
    }).join(''));
    const routes = Object.entries(s.traffic?.active ?? {}).map(([name, route]) => line(route.points, color(name), .31));
    const robots = Object.entries(s.robots ?? {}).map(([name, robot]) => {
      const p = s.telemetry?.[name]?.pose;
      if (!point(p)) return '';
      const tint = color(name);
      const waiting = s.traffic?.waiting?.[name];
      const alert = robot.blocked ? '#ff778b' : waiting ? '#ffba72' : tint;
      const loaded = s.handling?.loads?.[name];
      return `<g transform="translate(${x(p[0])} ${y(p[1])})">
        <circle r="1.02" fill="${tint}" fill-opacity=".18" stroke="${alert}" stroke-width=".18"/>
        <g transform="rotate(${-number(p[2])*180/Math.PI})">
          <rect x="-.68" y="-.45" width="1.36" height=".9" rx=".18" fill="${tint}"/>
          <path d="M.44 -.19 L.66 0 L.44 .19" fill="none" stroke="#0c161e" stroke-width=".1"/>
          <path d="M-.68 -.32 H-1.22 M-.68 .32 H-1.22" stroke="${tint}" stroke-width=".13"/>
          ${loaded ? '<rect x="-1.15" y="-.26" width=".49" height=".52" fill="#ffd084"/>' : ''}
        </g>
        <text x="0" y="-1.2" text-anchor="middle" class="fleet-robot-label" fill="${tint}">${escape(name)}</text>
      </g>`;
    });
    setMarkup($('fleet-motion'), routes.join('') + robots.join(''));
    svg.classList.toggle('fleet-stale', !live?.fresh);
  }

  function loadStations(reset) {
    if (!$('fleet-kind')) return;
    const transport = $('fleet-kind').value === 'transport';
    const charge = $('fleet-kind').value === 'charge';
    const names = Object.keys(geometry?.stations ?? {}).sort();
    const eligible = transport ? names.filter(name => !name.startsWith('CP_') && !name.startsWith('PP_')) : names;
    for (const [id, fallback] of [['fleet-pickup', 'AP_RECEIVE_01'], ['fleet-target', 'AP_SHIP_01']]) {
      const input = $(id);
      const previous = input.value;
      input.innerHTML = eligible.map(name => `<option value="${escape(name)}">${escape(name)}</option>`).join('');
      if (!reset && eligible.includes(previous)) input.value = previous;
      else if (eligible.includes(fallback)) input.value = fallback;
    }
    for (const [id, enabled] of [['fleet-pickup',transport], ['fleet-target',!charge],
      ['fleet-priority',!charge], ['fleet-charge-vehicle',charge], ['fleet-charge-point',charge]]) {
      $(id).disabled = !enabled;
      $(id+'-field').hidden = !enabled;
    }
    const charger = $('fleet-charge-point');
    const chosen = reset ? '' : charger.value;
    const chargers = names.filter(name => name.startsWith('CP_'));
    setMarkup(charger, '<option value="">自动选择最近可用桩</option>' +
      chargers.map(name => `<option value="${escape(name)}">${escape(name)}</option>`).join(''));
    charger.value = chargers.includes(chosen) ? chosen : '';
    $('fleet-charge-note').hidden = !charge;
    renderMap();
  }

  function loadChargeVehicles() {
    const select = $('fleet-charge-vehicle');
    if (!select) return;
    const names = Object.entries(state().robots ?? {})
      .filter(([, robot]) => robot.dispatch_state === 'enabled').map(([name]) => name).sort();
    const choice = select.value || defaultChargeVehicle;
    setMarkup(select, '<option value="">请选择叉车</option>' +
      names.map(name => `<option value="${escape(name)}">${escape(name)}</option>`).join(''));
    select.value = names.includes(choice) ? choice : '';
    if (names.length) defaultChargeVehicle = null;
  }

  function configureMap(value, session, connection, name) {
    if (value.connection !== connection) throw new Error('连接已变化，正在重新读取地图');
    if (![value.width, value.height].every(v => Number.isFinite(v) && v > 0)) throw new Error('仿真地图范围无效');
    geometry = value;
    mapSession = session;
    mapConnection = connection;
    zoom = 1;
    panX = panY = 0;
    if (svg) viewBox();
    loadStations(true);
    if ($('fleet-map-title')) $('fleet-map-title').textContent = `${name ?? 'warehouse'} · ${Object.keys(value.stations).length} 个站点 · ${value.paths.length} 条有向路径`;
    if ($('fleet-task-map')) $('fleet-task-map').textContent = `运行地图 · ${name ?? 'warehouse'} · ${Object.keys(value.stations).length} 个站点`;
  }

  function templateReady(home) {
    const robots = state().robots ?? {};
    return ready() && Object.keys(robots).length === 5 && Object.entries(homes).every(([name, station]) =>
      robots[name] && !robots[name].job && !robots[name].blocked && state().telemetry?.[name]?.localization?.ok &&
      (home || robots[name].station === station));
  }

  function updateButtons() {
    for (const id of buttons) if ($(id)) $(id).disabled = pending || !ready();
    if ($('fleet-hold')) $('fleet-hold').textContent = state().dispatch_paused ? '恢复新分配' : '冻结新分配';
    if ($('fleet-out')) $('fleet-out').disabled = editing || pending || !templateReady(false);
    if ($('fleet-home')) $('fleet-home').disabled = editing || pending || !templateReady(true);
    for (const button of panel.querySelectorAll('[data-fleet-operation]')) button.disabled = pending || !ready();
  }

  function renderSummary() {
    const s = state();
    const robots = Object.entries(s.robots ?? {});
    const stats = [
      ['场景车辆', robots.length], ['执行中车辆', robots.filter(([, robot]) => robot.job).length],
      ['路权等待', Object.keys(s.traffic?.waiting ?? {}).length],
      ['已完成业务任务', jobs().filter(j => j.state === 'DONE' && !['return', 'charge'].includes(j.kind)).length],
    ];
    if ($('fleet-metrics')) setMarkup($('fleet-metrics'), stats.map(([label, count]) =>
      `<div class="metric"><small>${label}</small><strong>${live?.state ? count : '—'}</strong></div>`).join(''));
    if ($('fleet-robots')) setMarkup($('fleet-robots'), robots.length ? robots.map(([name, r]) => {
      const job = jobById(r.job);
      const loc = s.telemetry?.[name]?.localization;
      const wait = s.traffic?.waiting?.[name];
      const recovery = recoveryFor(s,name);
      const soc = Number.isFinite(r.soc) ? `${(100*r.soc).toFixed(1)}%` : '—';
      const fork = s.handling?.joints?.[name];
      const stateLabel = r.dispatch_state === 'removed' ? '已移出调度' : r.dispatch_state === 'disabled' ? '已停用' : '空闲';
      const label = r.blocked ? '已隔离' : wait ? '等待路权' : job ? (states[job.state] ?? job.state) : stateLabel;
      return `<div class="fleet-robot"><div class="card-heading"><a class="record-link" href="/vehicles/sim?robot=${encodeURIComponent(name)}">${escape(name)}</a><span class="badge ${r.blocked || wait ? 'paused' : r.job ? 'running' : ''}">${escape(label)}</span></div>
        ${fields([['站点', r.station], ['仿真电量', soc], ['定位', loc?.ok ? '可信' : loc?.reason],
          ['货叉', Number.isFinite(fork) ? `${fork.toFixed(3)} m` : '—']])}
        <p>${escape(trafficReason(recovery?.status ?? wait?.reason ?? s.charge_waiting?.[name] ?? r.job ?? '等待任务'))}${wait?.blockers?.length ? ' · ' + escape(wait.blockers.join('、')) : ''}</p></div>`;
    }).join('') : '<p>等待车队状态。</p>');
    const banner = $('fleet-health');
    const history = !live?.fresh && robots.length ? ' · 下方保留最后一次状态' : '';
    const status = !live?.connected ? (live?.error ?? '等待仿真连接') + history
      : !live.fresh ? '调度状态已过期' + history
      : !ready() ? '已连接 ROS2 / Gazebo · 等待地图和执行端就绪'
      : `实时 ROS2 / Gazebo · ${robots.length} 台车 · ${s.dispatch_paused ? '新分配已冻结' : '允许自动分配'}`;
    banner.textContent = status;
    banner.classList.toggle('fleet-warn', !ready());
    if (ready() && $('fleet-result')?.textContent === '等待仿真调度就绪') result('调度已就绪。');
  }

  function renderJobs() {
    if (!$('fleet-jobs')) return;
    const s = state();
    const search = $('fleet-search').value.trim().toLowerCase();
    const filter = $('fleet-filter').value;
    const list = jobs().filter(j => ($('fleet-system').checked || (j.kind !== 'return' &&
      (j.kind !== 'charge' || j.charge_trigger === 'manual'))) &&
      (filter === 'all' || (filter === 'active' ? !terminal.has(j.state) : filter === j.state)) &&
      [j.id, j.robot ?? j.requested_robot, ...j.goals].join(' ').toLowerCase().includes(search));
    list.sort((a, b) => (b.created_at ?? '').localeCompare(a.created_at ?? ''));
    setMarkup($('fleet-jobs'), table(['任务 / 类型', '创建时间', '起点 → 终点', '当前目标', '优先级 / 车辆', '状态 / 等待'], list.map(j => {
      const wait = s.robots?.[j.robot]?.job === j.id ? s.traffic?.waiting?.[j.robot] : null;
      const recovery = wait && recoveryFor(s,j.robot);
      return `<tr><td><a class="record-link" href="/tasks/detail?job=${encodeURIComponent(j.id)}">${escape(j.id)}</a><br><small>${escape(jobKind(j))}</small></td>
        <td>${escape(formatTime(j.created_at))}</td><td>${escape(j.kind === 'transport' ? j.goals[0] : j.origin_station)} → ${escape(jobTarget(j))}</td>
        <td>${escape(j.goals[j.index] ?? jobTarget(j))}</td><td>${jobPriority(j)} · ${escape(j.robot ?? j.requested_robot)}</td>
        <td><span class="badge ${j.state === 'DONE' ? 'done' : wait ? 'paused' : ''}">${escape(wait ? '等待路权' : states[j.state] ?? j.state)}</span>
        ${wait || j.reason ? `<br><small>${escape(trafficReason(recovery?.status ?? wait?.reason ?? j.reason))}${wait?.blockers?.length ? ' · ' + escape(wait.blockers.join('、')) : ''}</small>` : ''}<div class="row-actions">${controls(j)}</div></td></tr>`;
    })));
    const j = jobById(selected);
    if (!j) {
      setMarkup($('fleet-detail'), '点击任务编号查看执行记录。');
      return;
    }
    const operations = [];
    if (['QUEUED', 'EXECUTING'].includes(j.state)) operations.push(['pause', '暂停']);
    if (['PAUSED', 'PAUSED_ACTIVE'].includes(j.state)) operations.push(['resume', '继续']);
    if (!terminal.has(j.state)) operations.push(['cancel', '取消']);
    if (['FAILED', 'CANCELLED'].includes(j.state) && s.robots?.[j.robot]?.blocked) {
      operations.push(['recover_execution', '核对并申请原车续行']);
    }
    setMarkup($('fleet-detail'), `<div class="card-heading"><strong>${escape(j.id)}</strong><span class="badge">${escape(states[j.state] ?? j.state)}</span></div>
      ${fields([['车辆', j.robot], ['执行编号', j.execution_id], ['分配时间', formatTime(j.assigned_at)],
        ['首次执行', formatTime(j.started_at)], ['完成时间', formatTime(j.finished_at)], ['货物', j.loaded ? '载货' : '空载']])}
      <p>${escape(j.reason || '黄色线为该任务采集到的实际行迹。')}</p>
      <div class="actions">${operations.map(([op, name]) =>
        `<button type="button" data-fleet-operation="${op}">${name}</button>`).join('')}</div>`);
  }

  function render() {
    renderSummary();
    renderJobs();
    renderMap();
    const recent = (live?.events ?? []).slice(-24).reverse();
    if ($('fleet-events')) setMarkup($('fleet-events'), recent.length ? recent.map(e =>
      `<div class="fleet-event"><small>${escape(formatTime(e.received_wall))}</small><span>${escape(e.event === 'traffic_yield' && e.loaded ? '载货让行' : events[e.event] ?? e.event)}</span>
        <span>${escape(e.cycle?.join('、') ?? e.task_id ?? e.robot ?? '系统')}${e.reason ? ' · ' + escape(trafficReason(e.reason)) : ''}</span></div>`).join('')
      : '<p>暂无调度事件。</p>');
    updateButtons();
  }

  function result(message, warning = false) {
    if (!$('fleet-result')) return;
    $('fleet-result').textContent = message;
    $('fleet-result').classList.toggle('fleet-warn', warning);
  }

  async function pollFleet() {
    if (running || panel.hidden) return;
    running = true;
    try {
      const value = await request('/api/fleet/state');
      const changedConnection = live && value.connection !== live.connection;
      if (changedConnection) {
        live = null;
        geometry = null;
        mapSession = null;
        for (const id of ['fleet-base','fleet-motion','fleet-points']) if ($(id)) setMarkup($(id),'');
      }
      if (value.state && (value.session !== live?.session || !live?.state)) {
        selected = !live?.state ? requestedJob : null;
      }
      live = value.state ? value : {...live, ...value};
      if (value.fresh) loadChargeVehicles();
      if (value.fresh && value.session && (mapSession !== value.session || mapConnection !== value.connection)) {
        geometry = null;
        for (const id of ['fleet-base', 'fleet-motion', 'fleet-points']) if ($(id)) setMarkup($(id), '');
        if ($('fleet-map-title')) $('fleet-map-title').textContent = '正在读取当前仿真地图';
        configureMap(await request('/api/fleet/map'), value.session, value.connection, value.map_name);
      }
      if (editing && !editOriginal && geometry) {
        const job = jobById(requestedJob);
        if (editable(job)) {
          $('fleet-kind').value = job.kind;
          loadStations(true);
          $('fleet-job-id').value = job.id;
          $('fleet-job-id').readOnly = true;
          $('fleet-priority').value = String(job.priority);
          if (job.kind === 'transport') $('fleet-pickup').value = job.goals[0];
          $('fleet-target').value = job.goals.at(-1);
          editOriginal = {session:value.session,connection:value.connection,expected:[job.kind,job.goals,job.priority]};
          $('fleet-submit').textContent = '保存修改';
        } else {
          result('该任务已分配车辆或不处于可编辑状态，请返回队列核对。',true);
        }
      }
    } catch (error) {
      live = {...live, connected: false, fresh: false, can_command: false, error: error.message};
    } finally {
      running = false;
      if (!panel.hidden) render();
    }
  }

  async function send(command) {
    if (pending || !ready()) return;
    pending = true;
    updateButtons();
    result('正在等待调度确认…');
    try {
      const response = await fetch('/api/fleet/commands', {
        method: 'POST', headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({session: live.session, connection:live.connection, request: command}),
      });
      const receipt = await response.json();
      if (receipt.event === 'request_accepted' && response.ok) {
        if (command.id) selected = command.id;
        if (['task-new','task-edit'].includes(document.body.dataset.view)) {
          window.location.assign(`/tasks/detail?job=${encodeURIComponent(command.id)}`);
        }
        if (!command.operation && $('fleet-job-id')) $('fleet-job-id').value = newId('WEB');
        result('调度已接收。执行状态和结果见车队任务队列。');
      } else {
        result(receipt.reason ?? receipt.error ?? '未收到调度确认，请先核对队列', true);
      }
    } catch {
      result('网络未确认。请先查队列，再用原任务编号重试。', true);
    } finally {
      pending = false;
      await pollFleet();
      updateButtons();
    }
  }

  function newId(prefix) {
    return `${prefix}-${crypto.randomUUID().slice(0, 12)}`;
  }

  function fillTemplate(home) {
    if (!templateReady(home)) return;
    const prefix = newId(home ? 'HOME' : 'OUT');
    const goals = home ? Object.values(homes) : ['LM_DOCK_06', 'LM_DOCK_12', 'LM_DOCK_18', 'LM_DOCK_24', 'LM_63_49'];
    $('fleet-batch').value = JSON.stringify(goals.map((goal, index) =>
      ({id: `${prefix}-${index+1}`, type: 'standby', goal, priority: 0})), null, 2);
    result('已填入五项待命任务。核对后点击提交批量任务。');
  }

  if ($('fleet-job-id')) {
    $('fleet-job-id').value = newId('WEB');
    loadStations(true);
  }
  $('fleet-task')?.addEventListener('submit', event => {
    event.preventDefault();
    const type = $('fleet-kind').value;
    if (type === 'charge') {
      const command = {operation:'request_charge', id:$('fleet-job-id').value.trim(), robot:$('fleet-charge-vehicle').value};
      const charger = $('fleet-charge-point').value;
      if (charger) command.goal = charger;
      send(command);
      return;
    }
    const goal = $('fleet-target').value;
    const command = {id: $('fleet-job-id').value.trim(), type, priority: Number($('fleet-priority').value)};
    if (type === 'transport') Object.assign(command, {pickup: $('fleet-pickup').value, dropoff: goal});
    else command.goal = goal;
    send(editing ? {operation:'update',id:requestedJob,task:command,expected:editOriginal?.expected} : command);
  });
  $('fleet-kind')?.addEventListener('change', () => loadStations(false));
  for (const id of ['fleet-pickup', 'fleet-target']) $(id)?.addEventListener('change', renderMap);
  $('fleet-out')?.addEventListener('click', () => fillTemplate(false));
  $('fleet-home')?.addEventListener('click', () => fillTemplate(true));
  $('fleet-hold')?.addEventListener('click', () => send({operation: 'hold_dispatch', enabled: !state().dispatch_paused}));
  $('fleet-send-batch')?.addEventListener('click', () => {
    try {
      const tasks = JSON.parse($('fleet-batch').value);
      if (!Array.isArray(tasks) || !tasks.length || tasks.length > 32) throw new Error();
      send({operation: 'submit_batch', tasks});
    } catch {
      result('请填写包含 1 至 32 项任务的 JSON 数组。', true);
    }
  });
  for (const id of ['fleet-search', 'fleet-filter', 'fleet-system']) $(id)?.addEventListener('input', () => {
    renderJobs();
    updateButtons();
  });
  panel.addEventListener('click', event => {
    const button = event.target.closest('button');
    if (button?.dataset.fleetJob) {
      selected = button.dataset.fleetJob;
      renderJobs();
      renderMap();
      updateButtons();
    } else if (button?.dataset.fleetOperation && jobById(button.dataset.job || selected)) {
      send({operation: button.dataset.fleetOperation, id: button.dataset.job || selected});
    }
  });
  for (const [id, factor] of [['fleet-zoom-out', .8], ['fleet-zoom-in', 1.25], ['fleet-fit', 0]]) {
    $(id)?.addEventListener('click', () => {
      zoom = factor ? Math.min(3, Math.max(1, zoom * factor)) : 1;
      if (zoom === 1) panX = panY = 0;
      viewBox();
      renderMap();
    });
  }
  function tooltip(event) {
    const station = event.target.closest('[data-station]')?.dataset.station;
    $('fleet-tip').hidden = !station;
    if (station) $('fleet-tip').textContent = station;
  }
  svg?.addEventListener('pointerdown', event => {
    if (zoom === 1 || event.button !== 0) return;
    drag = [event.clientX, event.clientY];
    svg.setPointerCapture(event.pointerId);
    $('fleet-tip').hidden = true;
  });
  svg?.addEventListener('pointermove', event => {
    if (!drag) return tooltip(event);
    const scale = svg.getScreenCTM()?.a;
    if (!scale) return;
    const xLimit = geometry.width*(1-1/zoom)/2;
    const yLimit = geometry.height*(1-1/zoom)/2;
    panX = Math.max(-xLimit, Math.min(xLimit, panX + (drag[0]-event.clientX)/scale));
    panY = Math.max(-yLimit, Math.min(yLimit, panY + (drag[1]-event.clientY)/scale));
    drag = [event.clientX, event.clientY];
    viewBox();
  });
  svg?.addEventListener('lostpointercapture', () => { drag = null; });
  svg?.addEventListener('focusin', tooltip);
  svg?.addEventListener('pointerleave', () => { $('fleet-tip').hidden = true; });
  svg?.addEventListener('focusout', () => { $('fleet-tip').hidden = true; });

  if ($('fleet-address')) {
    request('/api/fleet/config').then(config => { $('fleet-address').value = config.url; }).catch(() => {});
  }
  $('fleet-connection-form')?.addEventListener('submit', async event => {
    event.preventDefault();
    const button = event.target.querySelector('button');
    button.disabled = true;
    try {
      await request('/api/fleet/config',{url:$('fleet-address').value.trim()});
      $('fleet-config-result').textContent = '地址已保存，正在读取仿真车辆和地图。';
      await pollFleet();
    } catch (error) {
      $('fleet-config-result').textContent = error.message;
    } finally { button.disabled = false; }
  });

  new MutationObserver(pollFleet).observe(panel, {attributes: true, attributeFilter: ['hidden']});
  async function monitorFleet() {
    await pollFleet();
    setTimeout(monitorFleet, 650);
  }
  monitorFleet();
})();
