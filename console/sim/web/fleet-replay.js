'use strict';

(() => {
  const root = document.getElementById('fleet-replay');
  if (!root) return;
  const element = name => document.getElementById(`replay-${name}`);
  const canvas = element('map');
  const context = canvas.getContext('2d');
  const states = {
    idle: ['空闲', '#a0b2c8'], queued: ['已分配', '#a7e3ff'], moving: ['行驶', '#73c1ff'],
    waiting: ['路权等待', '#ffd075'], charging: ['充电', '#66e2bc'], handling: ['装卸', '#f5a8db'],
    recovering: ['恢复', '#c4b3ff'], offline: ['反馈不可用', '#ff8ca0'],
    low_power_waiting: ['低电等待', '#f8a266'],
  };
  const kinds = {
    submitted: '任务', complete: '任务', closure: '道路', reopened: '道路', reroute: '道路',
    outage: '故障', restart: '故障', feedback: '故障', protective_stop: '故障', rejoined: '故障',
    deadlock: '死锁', deadlock_held: '死锁', refuge_closed: '死锁', deadlock_planned: '死锁',
    deadlock_resolved: '死锁', first_full_charge: '充电', charge_redispatch: '充电',
  };
  const waits = {
    resource_conflict: '等待路权释放', closure: '前方路段关闭', closed_topology: '封路后暂无可达路线',
    zone_capacity: '限流区域已满', recovery_corridor: '等待死锁恢复路段释放', pickup_clearance: '等待叉取空间',
    forklift_geometry: '通行几何不满足要求', feedback_loss: '等待可信反馈',
    charge_capacity: '低电车辆等待可用充电位',
  };
  const countFields = {moving: 'moving', waiting: 'waiting', charging: 'charging', low: 'lowPowerWaiting', outages: 'outages'};
  const view = {width: 0, height: 0, ratio: 1, x: 0, y: 0, zoom: 1};
  const rate = 8;
  let recording, scene, index = 0, selected = -1, emphasized = new Set();
  let playing = false, playFrame = 0, nextFrame = 0, drag = null;
  let focusEvent = null, activeEvent = null, listedEvents = [];
  let loadRequest = 0;

  function write(name, value) {
    element(name).textContent = value;
  }

  function validate(data) {
    if (data?.schema_version !== 1 || data.source !== 'LIGHTWEIGHT_BENCHMARK' ||
        !Array.isArray(data.vehicles) || !data.vehicles.length ||
        !Array.isArray(data.frames) || !data.frames.length || !data.map?.stations || !Array.isArray(data.map.edges)) {
      throw new Error('文件缺少地图、车辆名单或仿真帧，或使用了未知版本。');
    }
    if (!data.frames.every((frame, position) => Number.isFinite(frame.tick) &&
        (position === 0 || frame.tick > data.frames[position - 1].tick) &&
        Array.isArray(frame.vehicles) && frame.vehicles.length === data.vehicles.length)) {
      throw new Error('回放帧的时间或车辆数量与记录不一致。');
    }
    return data;
  }

  function prepareScene(map) {
    const all = new Path2D();
    const edges = new Map();
    const stations = Object.entries(map.stations).filter(([, station]) =>
      Number.isFinite(station?.x) && Number.isFinite(station?.y));
    if (!stations.length) throw new Error('回放地图没有有效站点。');
    const xs = stations.map(([, station]) => station.x);
    const ys = stations.map(([, station]) => station.y);
    for (const edge of map.edges) {
      if (!Array.isArray(edge.points) || edge.points.length < 2) continue;
      const path = new Path2D();
      for (const [i, point] of edge.points.entries()) {
        if (i === 0) path.moveTo(point[0], point[1]);
        else path.lineTo(point[0], point[1]);
      }
      edges.set(edgeKey(edge.start, edge.end), path);
      all.addPath(path);
    }
    return {all, edges, stations, minX: Math.min(...xs), maxX: Math.max(...xs),
            minY: Math.min(...ys), maxY: Math.max(...ys)};
  }

  function edgeKey(start, end) {
    return `${start}\x00${end}`;
  }

  function load(data, origin) {
    const validated = validate(data);
    const geometry = prepareScene(validated.map);
    setPlaying(false);
    recording = validated;
    scene = geometry;
    index = 0;
    selected = -1;
    focusEvent = null;
    emphasized.clear();
    element('hover').hidden = true;
    element('error').hidden = true;
    element('content').hidden = false;
    element('timeline').max = recording.frames.length - 1;
    const last = recording.frames.at(-1);
    const tickLength = Number.isFinite(recording.tick_seconds) ? ` · 每步 ${recording.tick_seconds} 模型秒` : '';
    const seed = Number.isInteger(recording.seed) ? ` · 种子 ${recording.seed}` : '';
    write('source-detail', `${origin} · ${recording.vehicles.length} 台车${seed}${tickLength}`);
    write('map-title', `${recording.map.name || '百台联测路网'} · ${recording.vehicles.length} 台车`);
    element('play').disabled = recording.frames.length < 2;
    element('start').disabled = recording.frames.length < 2;
    const options = [new Option('选择车辆', '')];
    for (const [i, id] of recording.vehicles.entries()) options.push(new Option(id, String(i)));
    element('vehicle').replaceChildren(...options);
    recording.events = (Array.isArray(recording.events) ? recording.events : []).filter(event =>
      Number.isFinite(event?.tick) && event.tick >= recording.frames[0].tick && event.tick <= last.tick &&
      typeof event.label === 'string');
    const categories = [...new Set(recording.events.map(event => kinds[event.type] || '其他'))];
    element('event-filter').replaceChildren(new Option('全部事件', 'all'), ...categories.map(name => new Option(name, name)));
    renderEvents();
    renderResult();
    fitMap();
    resize();
    render();
  }

  function showError(message) {
    element('error').hidden = false;
    write('error', message);
    if (!recording) write('source-detail', '等待联测记录');
  }

  function frameForTick(tick) {
    let left = 0, right = recording.frames.length - 1;
    while (left < right) {
      const middle = Math.floor((left + right) / 2);
      if (recording.frames[middle].tick < tick) left = middle + 1;
      else right = middle;
    }
    return left;
  }

  function renderEvents() {
    const filter = element('event-filter').value;
    const list = element('events');
    const items = document.createDocumentFragment();
    listedEvents = [];
    activeEvent = null;
    for (const event of recording.events) {
      const category = kinds[event.type] || '其他';
      if (filter !== 'all' && category !== filter) continue;
      const item = document.createElement('li');
      const button = document.createElement('button');
      button.type = 'button';
      const step = document.createElement('span');
      step.className = 'replay-step';
      step.textContent = `第 ${event.tick} 步`;
      const label = document.createElement('span');
      label.textContent = event.label;
      const kind = document.createElement('span');
      kind.className = 'replay-event-kind';
      kind.textContent = category;
      button.append(step, label, kind);
      button.addEventListener('click', () => showEvent(event));
      item.append(button);
      items.append(item);
      listedEvents.push({button, event});
    }
    if (!listedEvents.length) {
      const empty = document.createElement('li');
      empty.className = 'replay-empty-events';
      empty.textContent = '该记录没有匹配的联测事件。';
      items.append(empty);
    }
    list.replaceChildren(items);
    currentEvent(recording.frames[index].tick);
  }

  function currentEvent(tick) {
    const item = listedEvents.find(entry => entry.event === focusEvent) ||
      listedEvents.findLast(entry => entry.event.tick <= tick);
    if (activeEvent === item) return;
    if (activeEvent) activeEvent.button.removeAttribute('aria-current');
    if (item) item.button.setAttribute('aria-current', 'true');
    activeEvent = item;
  }

  function showEvent(event) {
    setPlaying(false);
    index = frameForTick(event.tick);
    focusEvent = event;
    const indices = (Array.isArray(event.robots) ? event.robots : [])
      .map(id => recording.vehicles.indexOf(id)).filter(i => i >= 0);
    emphasized = new Set(indices);
    if (indices.length) {
      selected = indices[0];
      element('vehicle').value = String(selected);
      focusVehicles(indices);
    }
    render();
  }

  function modelTime(seconds) {
    const minutes = Math.floor(seconds / 60);
    return minutes >= 60 ? `${Math.floor(minutes / 60)} 小时 ${minutes % 60} 分`
      : `${minutes} 分 ${Math.floor(seconds % 60)} 秒`;
  }

  function render() {
    const frame = recording.frames[index];
    const end = recording.frames.at(-1);
    const elapsed = Number.isFinite(recording.tick_seconds) ? ` · 已模拟 ${modelTime(frame.tick * recording.tick_seconds)}` : '';
    const label = `仿真步 ${frame.tick} / ${end.tick}${elapsed}`;
    element('timeline').value = index;
    element('timeline').setAttribute('aria-valuetext', label);
    write('time', label);
    const counts = frame.counts || {};
    write('tasks', `${counts.done ?? '—'} / ${counts.submitted ?? '—'}`);
    for (const [name, field] of Object.entries(countFields)) write(name, counts[field] ?? '—');
    currentEvent(frame.tick);
    renderVehicle(frame);
    drawMap(frame);
  }

  function renderVehicle(frame) {
    const car = frame.vehicles[selected];
    element('car-empty').hidden = Boolean(car);
    element('car-detail').hidden = !car;
    if (!car) return;
    const [x, y, , , job, soc, loaded, wait, cargo] = car;
    const state = visualState(car);
    const id = recording.vehicles[selected];
    const nodes = frame.grants?.find(([robot]) => robot === id)?.[1];
    const waiting = typeof wait === 'string' ? (waits[wait] || wait) : '—';
    write('car-id', id);
    write('car-state', states[state]?.[0] || '未知状态');
    element('car-state').dataset.state = state;
    write('car-soc', Number.isFinite(soc) ? `${(soc * 100).toFixed(1)}%` : '—');
    write('car-task', job || '—');
    write('car-load', loaded ? (cargo || '载货') : '空载');
    write('car-position', Number.isFinite(x) && Number.isFinite(y) ? `${x.toFixed(1)}, ${y.toFixed(1)} 米` : '—');
    write('car-grant', nodes?.length ? nodes.join(' → ') : '—');
    write('car-wait', waiting);
  }

  function visualState(car) {
    return car[3] === 'waiting' && car[7] === 'charge_capacity' ? 'low_power_waiting' : car[3];
  }

  function renderResult() {
    const verification = recording.verification;
    const lines = [];
    if (typeof verification?.functional_passed === 'boolean') {
      lines.push(verification.functional_passed ? '本轮功能检查全部通过。' : '本轮功能检查尚未全部通过。');
    }
    if (Number.isFinite(verification?.business_done) && Number.isFinite(verification.scheduled)) {
      lines.push(`完成 ${verification.business_done} / ${verification.scheduled} 项业务任务。`);
    }
    if (Number.isFinite(verification?.shared_road_segments)) {
      lines.push(`${verification.shared_road_segments} 个路段由多台车先后共用。`);
    }
    const allocation = verification?.allocation_seconds;
    const submitted = recording.frames.at(-1)?.counts?.submitted ?? verification?.scheduled;
    if (Number.isFinite(allocation?.within_one_second) && Number.isFinite(submitted)) {
      lines.push(`从任务创建到记下车号，${allocation.within_one_second} / ${submitted} 项在 1 秒内。`);
    }
    const batch = verification?.batch_acceptance;
    if (Number.isFinite(batch?.vehicle_confirmed_within_one_second_in_reply) &&
        Number.isFinite(batch.submitted) && Number.isFinite(batch.vehicle_not_confirmed_in_reply)) {
      lines.push(`批量 HTTP 请求中，${batch.vehicle_confirmed_within_one_second_in_reply} / ${batch.submitted} 项在 1 秒内收到车号，${batch.vehicle_not_confirmed_in_reply} 项在原回复中仍待确认车辆。`);
    }
    const reduction = verification?.charging_comparison?.charging_unavailability_reduction_pct;
    if (Number.isFinite(reduction) && typeof verification.charge_target_met === 'boolean') {
      const direction = reduction >= 0 ? '下降' : '增加';
      const verdict = verification.charge_target_met ? '达到 25% 对照门槛' : '25% 对照门槛未达成';
      lines.push(`车队充电相关不可用时间${direction} ${Math.abs(reduction).toFixed(2)}%。${verdict}。`);
    }
    const items = lines.map(line => {
      const item = document.createElement('li');
      item.textContent = line;
      return item;
    });
    element('result-list').replaceChildren(...items);
    element('result').hidden = !items.length;
  }

  function setPlaying(value) {
    playing = value;
    cancelAnimationFrame(playFrame);
    playFrame = 0;
    nextFrame = 0;
    if (playing) playFrame = requestAnimationFrame(advance);
    write('play', playing ? '暂停' : '播放');
  }

  function advance(now) {
    if (!playing) return;
    const end = recording.frames.length - 1;
    const interval = 1000 / (rate * Number(element('speed').value));
    if (!nextFrame) nextFrame = now + interval;
    if (now >= nextFrame) {
      const steps = Math.floor((now - nextFrame) / interval) + 1;
      nextFrame += steps * interval;
      index = Math.min(end, index + steps);
      focusEvent = null;
      render();
    }
    if (index === end) setPlaying(false);
    else playFrame = requestAnimationFrame(advance);
  }

  function fitScale() {
    return Math.min(Math.max(1, view.width - 54) / Math.max(1, scene.maxX - scene.minX),
                    Math.max(1, view.height - 40) / Math.max(1, scene.maxY - scene.minY));
  }

  function scale() {
    return fitScale() * view.zoom;
  }

  function fitMap() {
    view.x = (scene.minX + scene.maxX) / 2;
    view.y = (scene.minY + scene.maxY) / 2;
    view.zoom = 1;
  }

  function clampCenter() {
    view.x = Math.min(scene.maxX, Math.max(scene.minX, view.x));
    view.y = Math.min(scene.maxY, Math.max(scene.minY, view.y));
  }

  function focusVehicles(indices) {
    const points = indices.map(i => recording.frames[index].vehicles[i]).filter(car =>
      Number.isFinite(car?.[0]) && Number.isFinite(car?.[1]));
    if (!points.length) return;
    const xs = points.map(car => car[0]), ys = points.map(car => car[1]);
    const left = Math.min(...xs), right = Math.max(...xs), bottom = Math.min(...ys), top = Math.max(...ys);
    const target = Math.min(view.width / Math.max(115, right - left + 65),
                            view.height / Math.max(50, top - bottom + 32));
    view.x = (left + right) / 2;
    view.y = (bottom + top) / 2;
    view.zoom = Math.max(1, Math.min(12, target / fitScale()));
  }

  function zoomBy(factor) {
    view.zoom = Math.min(12, Math.max(1, view.zoom * factor));
    if (view.zoom === 1) fitMap();
    drawMap(recording.frames[index]);
  }

  function pan(dx, dy) {
    view.x += dx / scale();
    view.y += dy / scale();
    clampCenter();
    drawMap(recording.frames[index]);
  }

  function resize() {
    if (!recording) return;
    const width = canvas.clientWidth, height = canvas.clientHeight;
    if (!width || !height) return;
    const ratio = Math.min(2, window.devicePixelRatio || 1);
    if (width === view.width && height === view.height && ratio === view.ratio) return;
    Object.assign(view, {width, height, ratio});
    canvas.width = Math.round(width * ratio);
    canvas.height = Math.round(height * ratio);
    drawMap(recording.frames[index]);
  }

  function screen(x, y) {
    const factor = scale();
    return [view.width / 2 + (x - view.x) * factor, view.height / 2 - (y - view.y) * factor];
  }

  function strokeRoute(pairs, color, width, dashed = false) {
    context.strokeStyle = color;
    context.lineWidth = width / scale();
    if (dashed) context.setLineDash([5 / scale(), 3 / scale()]);
    for (const [start, end] of pairs) {
      const path = scene.edges.get(edgeKey(start, end));
      if (path) context.stroke(path);
    }
    context.setLineDash([]);
  }

  function drawMap(frame) {
    if (!view.width || !view.height) return;
    const ratio = view.ratio, factor = scale();
    context.setTransform(ratio, 0, 0, ratio, 0, 0);
    context.fillStyle = '#0b192a';
    context.fillRect(0, 0, view.width, view.height);
    context.beginPath();
    context.strokeStyle = '#1a3049';
    context.lineWidth = 1;
    const interval = factor * (view.zoom < 3 ? 100 : 20);
    const [originX, originY] = screen(0, 0);
    for (let x = originX % interval; x < view.width; x += interval) {
      context.moveTo(x, 0);
      context.lineTo(x, view.height);
    }
    for (let y = originY % interval; y < view.height; y += interval) {
      context.moveTo(0, y);
      context.lineTo(view.width, y);
    }
    context.stroke();

    context.save();
    context.translate(view.width / 2, view.height / 2);
    context.scale(factor, -factor);
    context.translate(-view.x, -view.y);
    context.lineJoin = 'round';
    context.lineCap = 'round';
    context.lineWidth = (view.zoom > 2 ? 1.6 : 1) / factor;
    context.strokeStyle = '#3a5876';
    context.stroke(scene.all);
    strokeRoute(frame.closed_edges || [], '#ff8ca0', 2.3, true);
    if (selected >= 0) {
      const nodes = frame.grants?.find(([id]) => id === recording.vehicles[selected])?.[1];
      if (nodes?.length) strokeRoute(nodes.slice(1).map((end, i) => [nodes[i], end]), '#79bbff', 3.1);
    }
    context.restore();

    for (const [id, station] of scene.stations) {
      if (station.kind !== 'charger' && station.kind !== 'refuge') continue;
      const [x, y] = screen(station.x, station.y);
      context.strokeStyle = station.kind === 'charger' ? '#5fab98' : '#967be2';
      context.lineWidth = 1.2;
      context.strokeRect(x - 4, y - 4, 8, 8);
      if (view.zoom >= 3 && x > 0 && x < view.width && y > 14 && y < view.height) {
        context.font = '10px Segoe UI, sans-serif';
        context.fillStyle = '#9eb5cf';
        context.fillText(id, x + 6, y - 6);
      }
    }
    for (const [i, car] of frame.vehicles.entries()) {
      if (i === selected || emphasized.has(i)) continue;
      drawVehicle(car, i, false);
    }
    for (const i of emphasized) {
      if (i !== selected) drawVehicle(frame.vehicles[i], i, true);
    }
    if (selected >= 0) drawVehicle(frame.vehicles[selected], selected, true);
  }

  function drawVehicle(car, i, highlighted) {
    if (!Number.isFinite(car?.[0]) || !Number.isFinite(car?.[1])) return;
    const [x, y] = screen(car[0], car[1]);
    if (x < -15 || x > view.width + 15 || y < -15 || y > view.height + 15) return;
    const radius = highlighted ? 5.2 : (view.zoom >= 2.6 ? 4.3 : 3.05);
    context.fillStyle = states[visualState(car)]?.[1] || '#a0b2c8';
    context.strokeStyle = '#0b192a';
    context.lineWidth = 1.1;
    context.beginPath();
    context.arc(x, y, radius, 0, Math.PI * 2);
    context.fill();
    context.stroke();
    if (highlighted) {
      context.strokeStyle = '#fff';
      context.lineWidth = 1.2;
      context.beginPath();
      context.arc(x, y, radius + 2.4, 0, Math.PI * 2);
      context.stroke();
    }
    if (view.zoom >= 2.6 && Number.isFinite(car[2])) {
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x + Math.cos(car[2]) * radius, y - Math.sin(car[2]) * radius);
      context.strokeStyle = '#0b192a';
      context.stroke();
    }
    if (highlighted) {
      const label = recording.vehicles[i];
      context.font = '600 11px Segoe UI, sans-serif';
      const width = context.measureText(label).width;
      const left = Math.min(view.width - width - 7, x + 10);
      context.fillStyle = '#142a44';
      context.fillRect(left - 2, y - 11, width + 6, 15);
      context.fillStyle = '#f3f8ff';
      context.fillText(label, left + 1, y);
    }
  }

  function findVehicle(clientX, clientY) {
    const frame = recording.frames[index];
    const bounds = canvas.getBoundingClientRect();
    let nearest = -1, distance = 11;
    for (const [i, car] of frame.vehicles.entries()) {
      if (!Number.isFinite(car?.[0]) || !Number.isFinite(car?.[1])) continue;
      const [x, y] = screen(car[0], car[1]);
      const candidate = Math.hypot(clientX - bounds.left - x, clientY - bounds.top - y);
      if (candidate < distance) {
        nearest = i;
        distance = candidate;
      }
    }
    return nearest;
  }

  function selectVehicle(position) {
    selected = position;
    emphasized.clear();
    element('vehicle').value = selected >= 0 ? String(selected) : '';
    render();
  }

  canvas.addEventListener('pointerdown', event => {
    if (!recording || !event.isPrimary || event.button !== 0) return;
    drag = {id: event.pointerId, firstX: event.clientX, firstY: event.clientY,
            x: event.clientX, y: event.clientY, moved: false};
    canvas.setPointerCapture(event.pointerId);
  });
  canvas.addEventListener('pointermove', event => {
    if (!recording) return;
    if (drag?.id === event.pointerId) {
      drag.moved ||= Math.hypot(event.clientX - drag.firstX, event.clientY - drag.firstY) >= 6;
      if (drag.moved) pan(drag.x - event.clientX, event.clientY - drag.y);
      drag.x = event.clientX;
      drag.y = event.clientY;
      element('hover').hidden = true;
      return;
    }
    const hit = findVehicle(event.clientX, event.clientY);
    element('hover').hidden = hit < 0;
    if (hit >= 0) {
      const state = visualState(recording.frames[index].vehicles[hit]);
      write('hover', `${recording.vehicles[hit]} · ${states[state]?.[0] || '未知状态'}`);
    }
  });
  canvas.addEventListener('pointerup', event => {
    if (drag?.id !== event.pointerId) return;
    if (!drag.moved) selectVehicle(findVehicle(event.clientX, event.clientY));
    drag = null;
  });
  canvas.addEventListener('lostpointercapture', () => { drag = null; });
  canvas.addEventListener('pointerleave', () => { element('hover').hidden = true; });
  canvas.addEventListener('keydown', event => {
    if (!recording) return;
    const offsets = {ArrowLeft: [-35, 0], ArrowRight: [35, 0], ArrowUp: [0, 35], ArrowDown: [0, -35]};
    if (offsets[event.key]) pan(...offsets[event.key]);
    else if (event.key === '+' || event.key === '=') zoomBy(1.5);
    else if (event.key === '-') zoomBy(1 / 1.5);
    else if (event.key === 'Home') {
      fitMap();
      drawMap(recording.frames[index]);
    } else return;
    event.preventDefault();
  });

  element('fit').addEventListener('click', () => { fitMap(); drawMap(recording.frames[index]); });
  element('zoom-in').addEventListener('click', () => zoomBy(1.5));
  element('zoom-out').addEventListener('click', () => zoomBy(1 / 1.5));
  element('event-filter').addEventListener('change', renderEvents);
  element('vehicle').addEventListener('change', event => {
    const selection = event.target.value;
    selectVehicle(selection === '' ? -1 : Number(selection));
  });
  element('focus').addEventListener('click', () => {
    focusVehicles([selected]);
    drawMap(recording.frames[index]);
  });
  element('play').addEventListener('click', () => {
    if (playing) {
      setPlaying(false);
      return;
    }
    if (index === recording.frames.length - 1) {
      index = 0;
      focusEvent = null;
      render();
    }
    setPlaying(true);
  });
  element('start').addEventListener('click', () => {
    setPlaying(false);
    index = 0;
    focusEvent = null;
    selectVehicle(-1);
    fitMap();
    drawMap(recording.frames[index]);
  });
  element('timeline').addEventListener('input', event => {
    setPlaying(false);
    focusEvent = null;
    index = Number(event.target.value);
    render();
  });
  element('speed').addEventListener('change', () => { nextFrame = 0; });
  element('open').addEventListener('click', () => element('file').click());
  element('file').addEventListener('change', async event => {
    const [file] = event.target.files;
    if (!file) return;
    event.target.value = '';
    const request = ++loadRequest;
    try {
      const data = JSON.parse(await file.text());
      if (request === loadRequest) load(data, `本地文件 ${file.name}`);
    } catch (error) {
      if (request === loadRequest) showError(error.message || '无法读取回放文件。');
    }
  });

  new ResizeObserver(resize).observe(canvas);
  (async () => {
    const request = ++loadRequest;
    try {
      const reply = await fetch('/api/fleet/replay');
      if (!reply.ok) {
        throw new Error(reply.status === 404 ? '控制台尚未配置回放文件。可打开本地联测记录。' :
                        '未能读取控制台的回放文件。请检查服务端配置，或打开本地联测记录。');
      }
      const data = await reply.json();
      if (request === loadRequest) load(data, '控制台联测记录');
    } catch (error) {
      if (request === loadRequest) showError(error.message || '无法读取联测记录。');
    }
  })();
})();
