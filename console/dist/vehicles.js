let simulation;
const simulationName = new URLSearchParams(window.location.search).get('robot');
const simulationStates = {enabled: '已纳入调度', disabled: '已停用', removed: '已移出调度'};

function simulationDispatchLabel(robot) {
  if (robot.job) return robot.dispatch_state === 'disabled' ? '停用中，任务收尾' : '执行中';
  if (robot.dispatch_state === 'disabled' || robot.dispatch_state === 'removed') {
    return simulationStates[robot.dispatch_state];
  }
  if (robot.blocked) return '已隔离';
  if (!robot.feedback_fresh) return '等待就绪';
  if (robot.soc < simulation.state?.charging_policy?.low_soc) return '电量偏低';
  return '允许调度';
}

function simulationRows() {
  return Object.entries(simulation?.state?.robots ?? {}).filter(([, robot]) => robot.dispatch_state !== 'removed')
    .map(([name, robot]) => {
      const href = `/vehicles/sim?robot=${encodeURIComponent(name)}`;
      const fresh = simulation.fresh && robot.feedback_fresh;
      return `<tr><td><a class="record-link" href="${href}">${escape(name)}</a></td><td><span class="badge environment">仿真</span></td>
        <td>${fresh ? '实时车况' : '状态待更新'}</td><td>${simulation.fresh ? simulationDispatchLabel(robot) : '等待连接'}</td>
        <td><a class="button" href="${href}">详情与控制</a></td></tr>`;
    });
}

function updateSimulationPicker() {
  const select = $('simulation-vehicle');
  const vehicles = Object.entries(simulation?.state?.robots ?? {});
  const available = vehicles.filter(([, robot]) => robot.dispatch_state === 'removed');
  const previous = select.value;
  setMarkup(select, available.map(([name]) => `<option value="${escape(name)}">${escape(name)}</option>`).join(''));
  if (available.some(([name]) => name === previous)) select.value = previous;
  $('simulation-add-button').disabled = !simulation?.can_command || available.length === 0;
  const discovery = $('simulation-discovery');
  const link = document.createElement('a');
  link.href = '/fleet';
  link.textContent = '前往车队运行';
  if (!simulation?.fresh) {
    discovery.replaceChildren('等待 Gazebo 车队状态。', link);
  } else {
    discovery.textContent = available.length ? '选择已移出的场景车辆，重新纳入调度。'
      : `已发现 ${vehicles.length} 台场景车辆，当前均已登记在车队中。`;
  }
}

function renderSimulationRecord() {
  const state = simulation?.state;
  const robot = Object.entries(state?.robots ?? {}).find(([name]) => name === simulationName)?.[1];
  $('simulation-name').textContent = simulationName || '仿真车辆';
  $('simulation-status').textContent = !simulation?.fresh ? '等待 Gazebo 车队状态'
    : robot ? simulationDispatchLabel(robot) : '当前场景未发现该车辆';
  if (!robot) {
    setMarkup($('simulation-details'), '');
    setMarkup($('simulation-controls'), '');
    return;
  }
  const pending = Object.values(state.jobs ?? {}).find(job => job.requested_robot === simulationName &&
    ['QUEUED', 'PAUSED'].includes(job.state));
  const current = robot.job ?? pending?.id;
  const assigned = current ? state.jobs?.[current] : null;
  const charging = Object.values(state.jobs ?? {}).find(job => job.kind === 'charge' &&
    job.requested_robot === simulationName && !['DONE', 'FAILED', 'CANCELLED'].includes(job.state));
  const active = robot.dispatch_state === 'enabled' || robot.dispatch_state == null;
  const removed = robot.dispatch_state === 'removed';
  setMarkup($('simulation-details'), fields([
    ['车辆来源', 'Gazebo 仿真'], ['车况连接', simulation.fresh && robot.feedback_fresh ? '实时车况' : '状态待更新'],
    ['仿真服务', simulation.url],
    ['站点', robot.station], ['电量', robot.soc == null ? '未上报' : `${(100*robot.soc).toFixed(1)}%`],
    ['调度状态', simulationStates[robot.dispatch_state] ?? '已纳入调度'],
    ['充电状态', charging?.state === 'CHARGING' ? '充电中' : charging?.reason || (charging ? '已安排去充电' : '未充电')],
  ]) + (current ? `<p><a class="record-link" href="/tasks/detail?job=${encodeURIComponent(current)}">查看任务 ${escape(current)}</a></p>` : '')
     + (charging && charging.id !== current ? `<p><a class="record-link" href="/tasks/detail?job=${encodeURIComponent(charging.id)}">查看排队充电任务</a></p>` : ''));
  const actions = [];
  if (active) {
    actions.push(['disable_vehicle', '停用调度', false]);
    actions.push(['open_charge', '去充电', Boolean(charging || robot.blocked || !robot.feedback_fresh)]);
  } else {
    actions.push(['enable_vehicle', removed ? '纳入调度' : '恢复调度', false]);
    if (!removed) actions.push(['remove_vehicle', '移出调度', Boolean(current || robot.blocked)]);
  }
  const taskOps = {QUEUED: ['pause', '暂停任务'], EXECUTING: ['pause', '暂停任务'],
    PAUSED: ['resume', '继续任务'], PAUSED_ACTIVE: ['resume', '继续任务']};
  if (taskOps[assigned?.state]) actions.push([...taskOps[assigned.state], false, current]);
  if (assigned && !['DONE', 'FAILED', 'CANCELLED', 'CANCELING'].includes(assigned.state)) {
    actions.push(['cancel', assigned.state === 'CHARGING' ? '停止充电' : '取消任务', false, current]);
  }
  setMarkup($('simulation-controls'), actions.map(([operation, label, disabled, id]) =>
    `<button type="button" data-simulation-operation="${operation}" data-task="${escape(id ?? '')}" ${disabled || !simulation.can_command ? 'disabled' : ''}>${label}</button>`).join(''));
}

async function refreshSimulation() {
  simulation = await request('/api/fleet/state');
  if (activePage === 'sim-vehicle') renderSimulationRecord();
  if (activePage === 'vehicles') updateSimulationPicker();
}

async function sendSimulationOperation(operation, robot, id) {
  if (!simulation?.can_command) throw new Error('调度服务尚未就绪');
  const command = {operation, robot};
  if (id) command.id = id;
  const value = await request('/api/fleet/commands', {session: simulation.session,
    connection: simulation.connection, request: command});
  if (value.event !== 'request_accepted') throw new Error(value.error ?? value.reason ?? '请核对任务状态');
}

$('vehicle-source')?.addEventListener('change', event => {
  const sample = event.target.value === 'sample';
  $('vehicle-add').hidden = !sample;
  $('simulation-add').hidden = sample;
  $('simulation-discovery').hidden = sample;
});
$('simulation-add')?.addEventListener('submit', event => {
  event.preventDefault();
  const name = $('simulation-vehicle').value;
  if (name) perform(() => sendSimulationOperation('enable_vehicle', name), '已纳入调度');
});
$('simulation-controls')?.addEventListener('click', event => {
  const button = event.target.closest('[data-simulation-operation]');
  if (!button) return;
  const operation = button.dataset.simulationOperation;
  if (operation === 'open_charge') {
    window.location.assign(`/tasks/new?type=charge&robot=${encodeURIComponent(simulationName)}`);
    return;
  }
  const messages = {enable_vehicle: '已纳入调度', disable_vehicle: '已停用新派单',
    remove_vehicle: '已移出调度', pause: '已提交暂停', resume: '已提交继续', cancel: '已提交取消'};
  perform(() => sendSimulationOperation(operation, simulationName, button.dataset.task), messages[operation]);
});
