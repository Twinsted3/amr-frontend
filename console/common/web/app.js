const $ = id => document.getElementById(id);
const activePage = document.body.dataset.view;
const isSimulation = document.body.dataset.mode === 'sim';
const recordId = Number(document.body.dataset.record);
const sourceLabels = {sample: '历史样本', replay: '历史回放', sample_tcp:'历史数据模拟 · TCP · 1条/秒', fork_sample_tcp: '货叉升降模拟 · TCP · 1条/秒', tcp: '现场推送', stopped: '已断开'};
const isTcpSimulation = mode => mode === 'sample_tcp' || mode === 'fork_sample_tcp';
const isTcpConnection = mode => mode === 'tcp' || isTcpSimulation(mode);
const canvas = $('map-canvas');
const context = canvas?.getContext('2d');
const view = {zoom: 1, x: 0, y: 0};
let snapshot, geometry, loadedMap;
let project, drag, noticeTimer;
let busy = false;
const drawn = new WeakMap();

function escape(value) {
  return String(value ?? '—').replace(/[&<>"']/g, character => ({
    '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;',
  })[character]);
}

function setMarkup(element, markup) {
  if (drawn.get(element) !== markup) {
    element.innerHTML = markup;
    drawn.set(element, markup);
  }
}

function formatTime(value) {
  const time = new Date(value);
  return value && Number.isFinite(time.getTime()) ? time.toLocaleString('zh-CN', {hour12: false}) : '—';
}

function fields(pairs) {
  return '<dl class="data-grid">' + pairs.map(([key, value]) =>
    `<div><dt>${escape(key)}</dt><dd>${escape(value)}</dd></div>`).join('') + '</dl>';
}

function notify(message, error = false) {
  const notice = $('notice');
  clearTimeout(noticeTimer);
  notice.textContent = message;
  notice.classList.toggle('error', error);
  notice.hidden = false;
  noticeTimer = setTimeout(() => { notice.hidden = true; }, error ? 9000 : 4500);
}

async function request(path, body) {
  const response = await fetch(path, body === undefined ? {} : {
    method: 'POST', headers: {'Content-Type': 'application/json'}, body: JSON.stringify(body),
  });
  const data = await response.json();
  if (!response.ok) throw new Error(data.error ?? data.reason ?? '本地服务请求失败');
  return data;
}

function showMap() {
  const {stations, edges, name} = geometry;
  const names = Object.keys(stations);
  if ($('map-caption')) $('map-caption').textContent = `${names.length} 个站点 · ${edges.length} 条有向路径`;
  if ($('map-detail-name')) $('map-detail-name').textContent = name;
  if ($('export-map')) $('export-map').href = `/api/maps/${loadedMap}/file`;
  if ($('map-stations')) {
    setMarkup($('map-stations'), `<ul>${names.map(key => `<li><strong>${escape(key)}</strong><small>${stations[key].map(n => n.toFixed(2)).join(', ')} m</small></li>`).join('')}</ul>`);
  }
  Object.assign(view, {zoom: 1, x: 0, y: 0});
}

function table(headers, rows, empty = '暂无记录') {
  if (!rows.length) return `<div class="empty-state"><span aria-hidden="true">—</span><p>${escape(empty)}</p></div>`;
  return `<div class="table-wrap"><table><thead><tr>${headers.map(item => `<th scope="col">${item}</th>`).join('')}</tr></thead><tbody>${rows.join('')}</tbody></table></div>`;
}

function vehicleStatus(value) {
  return value === null || value === undefined ? '未上报' : value ? '是' : '否';
}

function battery(vehicle) {
  return vehicle?.battery_percent == null ? '未上报' : `${vehicle.battery_percent}%`;
}

function telemetryText(telemetry) {
  const status = telemetry.mode === 'tcp' ? feedStatus(telemetry) : telemetry.status;
  return `${status} · 已接收 ${telemetry.frame_count ?? 0} 帧${telemetry.age_seconds == null ? '' : ` · 距最近接收 ${telemetry.age_seconds} 秒`}`;
}

function feedStatus(feed) {
  if (isTcpSimulation(feed?.mode)) {
    const label = feed.mode === 'fork_sample_tcp' ? '货叉升降模拟' : '历史模拟';
    return `${label} · ${feed.stream_active ? '接收中' : '等待车况'}`;
  }
  if (feed?.online) return '接收中';
  if (feed?.mode === 'tcp') return feed.frame_count ? '车况待更新' : '等待车况';
  return '已登记';
}

function renderVehicles() {
  const realRows = snapshot.vehicles.map(item => {
    const feed = item.telemetry;
    const connected = isTcpConnection(feed?.mode);
    return `<tr><td><a class="record-link" href="/vehicles/${item.id}">${escape(item.name)}</a><br><small>${escape(item.vehicle_id)}</small></td>
      <td><span class="badge">${isSimulation ? '历史样本' : '实车'}</span></td><td><span class="badge ${feed?.online ? 'teal' : ''}">${feedStatus(feed)}</span>
      ${feed ? `<br><small>${escape(telemetryText(feed))}</small>` : ''}</td>
      <td>状态监控</td><td><div class="row-actions"><a class="button" href="/vehicles/${item.id}">详情</a>
        <button type="button" data-vehicle-command="${connected ? 'disconnect' : 'connect'}" data-id="${item.id}">${connected ? '断开' : '连接'}</button></div></td></tr>`;
  });
  setMarkup($('registered-vehicles'), table(['车辆', '来源', '车况连接', '调度状态', '操作'],
    [...(isSimulation ? simulationRows() : []), ...realRows], '暂无车辆'));
}

function renderVehicleRecord() {
  const profile = snapshot.vehicles.find(item => item.id === recordId);
  if (!profile) return;
  const feed = profile.telemetry;
  $('vehicle-record-name').textContent = profile.name;
  $('vehicle-record-address').textContent = isSimulation ? profile.vehicle_id : `${profile.vehicle_id} · ${profile.host}:${profile.port}`;
  const badge = $('vehicle-record-status');
  badge.textContent = feedStatus(feed);
  badge.classList.toggle('teal', Boolean(feed?.online));
  const button = $('vehicle-record-connection');
  const connected = isTcpConnection(feed?.mode);
  if ($('vehicle-connect-mode')) {
    $('vehicle-connect-mode').disabled=connected;
    if (connected) $('vehicle-connect-mode').value=feed.mode;
  }
  button.dataset.id = profile.id;
  button.dataset.vehicleCommand = connected ? 'disconnect' : 'connect';
  button.textContent = connected ? '断开' : '连接';
  button.disabled = false;
  $('vehicle-record-remove').disabled = false;
  $('vehicle-remove-submit').dataset.id = profile.id;
  renderVehicleStatus(feed ?? {status: '车辆已登记'});
}

function renderVehicleStatus(telemetry) {
  const vehicle = telemetry.vehicle;
  if (!vehicle) {
    setMarkup($('vehicle-status-body'), `<p>${escape(telemetryText(telemetry))}</p>`);
    return;
  }
  const blockReasons = ['超声', '激光', '防跌落', '碰撞传感器', '红外', '锁车开关', '动态障碍物',
    '虚拟激光点', '3D 相机', '距离传感器', 'DI 超声'];
  const alarmNames = {fatals: '严重故障', errors: '错误', warnings: '警告', notices: '通知'};
  const alarms = Object.entries(vehicle.alarms).map(([key, entries]) =>
    `<div class="alarm-group"><h4>${alarmNames[key]} <span class="badge">${Array.isArray(entries) ? entries.length : '未上报'}</span></h4>
      ${Array.isArray(entries) && entries.length ? `<pre class="raw-data">${escape(JSON.stringify(entries, null, 2))}</pre>` : ''}</div>`);
  const identity = fields([
    ['车辆编号', vehicle.vehicle_id], ['数据来源', sourceLabels[telemetry.mode]], ['连接状态', feedStatus(telemetry)],
    ['已接收帧数',telemetry.frame_count], ['距最近接收（秒）',telemetry.age_seconds],
    ['接收时间', formatTime(vehicle.received_at)], ['报文时间', vehicle.source_time],
    ...(!isSimulation ? [['接收与车端报文时间差（秒）', vehicle.source_receive_delta_s]] : []),
  ]);
  const movement = fields([
    ['地图', vehicle.map_name], ['当前站点', vehicle.station],
    ['X（米）', vehicle.x], ['Y（米）', vehicle.y], ['朝向（弧度）', vehicle.angle], ['定位置信度', vehicle.confidence],
    ['定位状态码', vehicle.loc_state], ['重定位状态码', vehicle.reloc_status], ['载图状态码', vehicle.loadmap_status],
    ['建图状态码', vehicle.slam_status], ['纵向速度（米/秒）', vehicle.vx], ['横向速度（米/秒）', vehicle.vy],
    ['角速度（弧度/秒）', vehicle.w], ['里程（米）', vehicle.odo], ['今日里程（米）', vehicle.today_odo],
  ]);
  const protection = fields([
    ['阻挡', vehicleStatus(vehicle.blocked)], ['急停', vehicleStatus(vehicle.emergency)],
    ['软急停', vehicleStatus(vehicle.soft_emc)], ['停止', vehicleStatus(vehicle.is_stop)], ['抱闸', vehicleStatus(vehicle.brake)],
    ['阻挡原因', vehicle.blocked ? blockReasons[vehicle.block_reason] ?? vehicle.block_reason : null],
    ['阻挡坐标（米）', vehicle.blocked && vehicle.block_x != null && vehicle.block_y != null ? `${vehicle.block_x}, ${vehicle.block_y}` : null],
    ['减速', vehicleStatus(vehicle.slowed)], ['减速原因', vehicle.slowed ? blockReasons[vehicle.slow_reason] ?? vehicle.slow_reason : null],
  ]);
  const power = fields([
    ['电量', battery(vehicle)], ['充电', vehicleStatus(vehicle.charging)],
    ['电压', vehicle.voltage], ['电流', vehicle.current],
    ['电池温度', vehicle.battery_temp], ['控制器温度（原值）', vehicle.controller_temp],
    ['运行时间（毫秒）', vehicle.time], ['累计运行（毫秒）', vehicle.total_time],
  ]);
  const fork = fields([
    ['货叉高度（原值）', Number.isFinite(vehicle.fork_height) ? vehicle.fork_height.toFixed(4) : '未上报'],
    ['货叉信息（原值）', vehicle.fork == null ? null : JSON.stringify(vehicle.fork)],
  ]);
  const groups = [['接入信息', identity], ['货叉', fork], ['定位与行驶', movement], ['运行保护', protection], ['电源', power]];
  setMarkup($('vehicle-status-body'), `${!isSimulation && !telemetry.online ? '<p>以下为最后一次接收的车况。</p>' : ''}
    <div class="record-groups">${groups.map(([title, content]) =>
    `<div class="record-group"><h3>${title}</h3>${content}</div>`).join('')}</div>
    <h3 class="recent">车端告警</h3><div class="alarm-list">${alarms.join('')}</div>
    <details class="subnote"><summary>任务状态、控制权和 I/O</summary><pre class="raw-data">${escape(JSON.stringify(
    {task: vehicle.task_status, chain: vehicle.tasklist_status, move: vehicle.move_status, control: vehicle.control_lock, io: vehicle.io}, null, 2))}</pre></details>`);
}

function render() {
  if (!snapshot) return;
  if (activePage === 'vehicles') renderVehicles();
  if (activePage === 'vehicle-detail') renderVehicleRecord();
  if (activePage === 'telemetry') {
    $('telemetry-health').textContent = telemetryText(snapshot.telemetry);
    $('vehicle-detail-source').textContent = sourceLabels[snapshot.telemetry.mode];
    renderVehicleStatus(snapshot.telemetry);
  }
  if (activePage === 'maps') {
    const canDeleteMap = snapshot.map_capabilities?.archive === true;
    const running = snapshot.running_map_id;
    const selected = running ?? snapshot.preview_map_id;
    $('map-service-version').hidden = canDeleteMap;
    setMarkup($('map-list'), table(['编号', '地图名称', '状态', '操作'], snapshot.maps.map(map =>
      `<tr><td>#${map.id}</td><td><a class="record-link" href="/maps/${map.id}">${escape(map.name)}</a></td>
      <td><span class="badge ${map.id === selected ? 'teal' : ''}">${map.id === selected ? (running ? '运行中' : '使用中') : '已导入'}</span></td>
      <td><div class="row-actions"><a class="button" href="/maps/${map.id}">预览</a><button data-map="${map.id}" ${map.id === selected ? 'disabled' : ''}>${running ? '应用' : '使用'}</button><a class="button" href="/api/maps/${map.id}/file" download>下载</a><a class="button" href="/map-editor?id=${map.id}">编辑</a><button data-delete-map="${map.id}" ${!canDeleteMap || selected === map.id || snapshot.preview_map_id === map.id ? 'disabled' : ''}>删除</button></div></td></tr>`)));
  }
  if (activePage === 'overview' && geometry) drawMap();
  if (activePage === 'map-detail' && geometry) {
    const running = snapshot.running_map_id;
    const enabled = recordId === (running ?? snapshot.preview_map_id);
    $('map-detail-status').textContent = enabled ? (running ? '运行中' : '使用中') : '已导入';
    $('map-enable').textContent = running ? '应用到仿真' : '使用';
    $('map-detail-status').classList.toggle('teal', enabled);
    $('map-enable').disabled = enabled;
    setMarkup($('map-detail-stats'), fields([['地图版本', `#${recordId}`],
      ['站点', Object.keys(geometry.stations).length], ['路径', geometry.edges.length], ['底图点', geometry.background.length]]));
    drawMap();
  }

}

async function refresh() {
  if (['fleet','fleet-task','tasks','task-new','task-edit','field-tasks','not-found'].includes(activePage)) {
    await request('/api/health');
  } else if (activePage === 'sim-vehicle') {
    await refreshSimulation();
  } else {
    const load = request('/api/state');
    if (isSimulation && activePage === 'vehicles') await Promise.all([load, refreshSimulation()]);
    const current = await load;
    const mapId = activePage === 'map-detail' ? recordId : current.preview_map_id;
    if (activePage === 'overview' && mapId === null) {
      $('map-caption').textContent = '请在地图管理导入现场地图。';
    }
    if ($('export-map')) $('export-map').href = `/api/maps/${mapId}/file`;
    const edit = $('edit-current-map');
    if (edit && mapId !== null) {
      edit.href = `/map-editor?id=${mapId}`;
      edit.hidden = false;
    }
    const editor = $('editor-frame');
    if (editor && !editor.hasAttribute('src')) {
      const id = new URLSearchParams(location.search).get('id') ?? String(mapId);
      if (!current.maps.some(map => String(map.id) === id)) {
        $('editor-status').textContent = '地图不存在，请从地图库重新选择。';
        return;
      }
      try {
        await request(`/api/maps/${id}/edit`);
      } catch {
        $('editor-status').textContent = '编辑器接口不可用。请重启本地控制台后刷新；如果仍失败，请从地图库重新打开地图。';
        return;
      }
      editor.src = `/smap-editor/index.html?id=${id}`;
      editor.hidden = false;
      $('editor-status').textContent = `正在编辑地图 #${id}，保存将创建新版本。`;
    }
    if (canvas && mapId !== null && loadedMap !== mapId) {
      geometry = await request(`/api/maps/${mapId}`);
      loadedMap = mapId;
      snapshot = current;
      showMap();
    }
    snapshot = current;
    render();
  }
  $('connection').textContent = '服务在线';
  $('connection').classList.add('teal');
}

let refreshChain = Promise.resolve();
function poll() {
  const refreshResult = refreshChain.then(refresh);
  refreshChain = refreshResult.catch(error => {
    if ($('connection').textContent !== '服务连接中断') console.error('控制台刷新失败', error);
    $('connection').textContent = '服务连接中断';
    $('connection').classList.remove('teal');
  });
  return refreshResult;
}

async function perform(work, message) {
  if (busy) return;
  busy = true;
  try {
    await work();
    await poll();
    if (message) notify(message);
  } catch (error) {
    notify(error.message, true);
    await poll().catch(() => {});
  } finally {
    busy = false;
  }
}

function drawMap() {
  if (!geometry || !context || canvas.clientWidth <= 60 || canvas.clientHeight <= 60) return;
  const width = canvas.clientWidth;
  const height = canvas.clientHeight;
  const ratio = window.devicePixelRatio || 1;
  if (canvas.width !== Math.round(width * ratio) || canvas.height !== Math.round(height * ratio)) {
    canvas.width = Math.round(width * ratio);
    canvas.height = Math.round(height * ratio);
  }
  context.setTransform(ratio, 0, 0, ratio, 0, 0);
  context.clearRect(0, 0, width, height);
  const stations = Object.entries(geometry.stations);
  let minX = Infinity, maxX = -Infinity, minY = Infinity, maxY = -Infinity;
  function include(points) {
    for (const [x, y] of points) {
      minX = Math.min(minX, x);
      maxX = Math.max(maxX, x);
      minY = Math.min(minY, y);
      maxY = Math.max(maxY, y);
    }
  }
  include(Object.values(geometry.stations));
  include(geometry.background);
  for (const edge of geometry.edges) include(edge.points);
  const scale = view.zoom * Math.min((width - 60) / Math.max(1, maxX-minX), (height - 60) / Math.max(1, maxY-minY));
  project = ([x, y]) => [width/2 + view.x + (x - (minX+maxX)/2)*scale,
    height/2 + view.y - (y - (minY+maxY)/2)*scale];
  const gridSize = scale * Math.pow(10, Math.ceil(Math.log10(28/scale)));
  context.strokeStyle = '#1d2a35';
  context.lineWidth = 1;
  context.beginPath();
  const [ox, oy] = project([0, 0]);
  for (let x = ox % gridSize; x < width; x += gridSize) {
    context.moveTo(x, 0);
    context.lineTo(x, height);
  }
  for (let y = oy % gridSize; y < height; y += gridSize) {
    context.moveTo(0, y);
    context.lineTo(width, y);
  }
  context.stroke();
  context.fillStyle = '#536d7b';
  for (const point of geometry.background) context.fillRect(...project(point), 1.5, 1.5);
  function line(points, color, thickness) {
    context.beginPath();
    context.moveTo(...project(points[0]));
    for (const point of points.slice(1)) context.lineTo(...project(point));
    context.strokeStyle = color;
    context.lineWidth = thickness;
    context.stroke();
  }
  for (const edge of geometry.edges) {
    line(edge.points, '#53718b', 1.7);
    const middle = Math.floor((edge.points.length - 1) / 2);
    const [x, y] = project(edge.points[middle]);
    const [nextX, nextY] = project(edge.points[middle + 1]);
    const direction = Math.atan2(nextY-y, nextX-x);
    context.save();
    context.translate(x + (nextX-x)*.57, y + (nextY-y)*.57);
    context.rotate(direction);
    context.fillStyle = '#8aa9c5';
    context.beginPath();
    context.moveTo(4, 0);
    context.lineTo(-4, -3);
    context.lineTo(-4, 3);
    context.fill();
    context.restore();
  }
  context.font = '12px Segoe UI, sans-serif';
  const labelsDrawn = [];
  for (const [name, position] of stations) {
    const [x, y] = project(position);
    context.fillStyle = '#64aaf5';
    context.beginPath();
    context.arc(x, y, 4, 0, Math.PI*2);
    context.fill();
    if (stations.length <= 18 || view.zoom >= 2) {
      const w = context.measureText(name).width + 4;
      for (const [left, bottom] of [[x+7, y-6], [x+7, y+14], [x-w-5, y-6]]) {
        if (left < 4 || left+w > width-4 || bottom < 14 || bottom > height-4) continue;
        if (labelsDrawn.some(([l, b, size]) => left < l+size && l < left+w && Math.abs(b-bottom) < 13)) continue;
        context.fillStyle = '#c4d8e9';
        context.fillText(name, left, bottom);
        labelsDrawn.push([left, bottom, w]);
        break;
      }
    }
  }
  $('map-scale').textContent = `${Math.round(view.zoom * 100)}% · 悬停查看站点`;
  if (activePage === 'map-detail') return;
  const feeds = [snapshot.telemetry, ...(snapshot.vehicles ?? []).map(item => item.telemetry)];
  const positions = new Map();
  for (const feed of feeds) {
    const reported = feed?.vehicle;
    if (feed?.online && reported?.map_name === geometry.name && reported.confidence > 0
        && Number.isFinite(reported.x) && Number.isFinite(reported.y)) {
      positions.set(reported.vehicle_id, reported);
    }
  }
  for (const reported of positions.values()) {
    const [x, y] = project([reported.x, reported.y]);
    context.fillStyle = '#dbb1ff';
    context.beginPath();
    context.arc(x, y, 6, 0, Math.PI*2);
    context.fill();
    context.fillText(reported.vehicle_id, x + 9, y - 9);
  }
}

function redrawMap() {
  if (activePage === 'overview' && snapshot) drawMap();
  if (activePage === 'map-detail') drawMap();
}

document.addEventListener('click', event => {
  const button = event.target.closest('button');
  if (!button) return;
  const {id, map, vehicleCommand} = button.dataset;
  if (button.dataset.deleteMap) {
    if (snapshot?.map_capabilities?.archive !== true) return;
    const target = snapshot.maps.find(item => String(item.id) === button.dataset.deleteMap);
    if (target && window.confirm(`删除地图「${target.name}」？它将从地图库移除。`)) {
      perform(() => request(`/api/maps/${target.id}/archive`, {}), '已从地图库移除地图');
    }
  }
  if (map) perform(() => request(snapshot.running_map_id ? '/api/fleet/map-application' : '/api/map-selection',
    {id: Number(map)}), snapshot.running_map_id ? '已应用仿真地图' : '已使用地图');
  if (vehicleCommand) {
    if (vehicleCommand === 'remove') {
      perform(async () => {
        await request(`/api/vehicles/${id}/remove`, {});
        window.location.assign('/vehicles');
      });
      return;
    }
    perform(() => request(`/api/vehicles/${id}/${vehicleCommand}`, {
      mode: $('vehicle-connect-mode')?.value ?? (isSimulation ? 'sample_tcp' : 'tcp'),
    }),
      vehicleCommand === 'connect' ? '正在接收车辆推送' : '已停止接收该车辆的推送');
  }
});

$('vehicle-record-remove')?.addEventListener('click', () => { $('vehicle-remove-confirm').hidden = false; });
$('vehicle-remove-cancel')?.addEventListener('click', () => { $('vehicle-remove-confirm').hidden = true; });

$('map-enable')?.addEventListener('click', () => {
  perform(() => request(snapshot.running_map_id ? '/api/fleet/map-application' : '/api/map-selection',
    {id: recordId}), snapshot.running_map_id ? '已应用仿真地图' : '已使用地图');
});

$('map-import')?.addEventListener('submit', event => {
  event.preventDefault();
  perform(async () => {
    const file = $('map-file').files[0];
    if (!file || file.size > 11_000_000) throw new Error('请选择小于 11 MB 的 SMAP 文件');
    let document;
    try {
      document = JSON.parse(await file.text());
    } catch {
      throw new Error('文件无法解析，请选择有效的 SMAP JSON 文件');
    }
    await request('/api/maps', {document});
    event.target.reset();
  }, '已导入地图，可在列表中启用');
});

for (const [id, mode] of [['load-sample', 'sample'], ['replay', 'replay'], ['disconnect', 'stopped']]) {
  $(id)?.addEventListener('click', () => perform(() => request('/api/telemetry/source', {mode})));
}
$('vehicle-add')?.addEventListener('submit', event => {
  event.preventDefault();
  perform(async () => {
    const profile = await request('/api/vehicles', {
      vehicle_id: $('new-vehicle-id').value, name: $('new-vehicle-name').value,
      host: $('new-vehicle-host')?.value, port: Number($('new-vehicle-port')?.value || 0),
    });
    window.location.assign(`/vehicles/${profile.id}`);
  });
});


function zoom(factor) {
  view.zoom = Math.min(8, Math.max(.25, view.zoom * factor));
  redrawMap();
}
$('zoom-out')?.addEventListener('click', () => zoom(.8));
$('zoom-in')?.addEventListener('click', () => zoom(1.25));
$('fit')?.addEventListener('click', () => {
  Object.assign(view, {zoom: 1, x: 0, y: 0});
  redrawMap();
});
canvas?.addEventListener('wheel', event => {
  event.preventDefault();
  zoom(event.deltaY > 0 ? .8 : 1.25);
}, {passive: false});
canvas?.addEventListener('pointerdown', event => {
  drag = [event.clientX, event.clientY];
  canvas.setPointerCapture(event.pointerId);
});
canvas?.addEventListener('pointermove', event => {
  const tip = $('map-tip');
  tip.hidden = true;
  if (drag) {
    view.x += event.clientX - drag[0];
    view.y += event.clientY - drag[1];
    drag = [event.clientX, event.clientY];
    redrawMap();
    return;
  }
  if (!geometry || !project) return;
  const rect = canvas.getBoundingClientRect();
  let closest = 11;
  for (const [name, position] of Object.entries(geometry.stations)) {
    const [x, y] = project(position);
    const distance = Math.hypot(x - event.clientX + rect.left, y - event.clientY + rect.top);
    if (distance < closest) {
      closest = distance;
      tip.textContent = name;
      tip.hidden = false;
    }
  }
});
canvas?.addEventListener('pointerleave', () => { $('map-tip').hidden = true; });
canvas?.addEventListener('lostpointercapture', () => { drag = null; });
if (canvas) new ResizeObserver(redrawMap).observe(canvas);

async function monitor() {
  await poll().catch(() => {});
  setTimeout(monitor, ['overview', 'vehicle-detail', 'telemetry'].includes(activePage) ? 500 : 1500);
}
if (isSimulation && activePage === 'overview' && window.location.hash === '#fleet') window.location.replace('/fleet');
else document.addEventListener('DOMContentLoaded', monitor, {once: true});
