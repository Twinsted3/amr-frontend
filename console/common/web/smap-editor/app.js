let editorMapId = new URLSearchParams(location.search).get('id');
"use strict";

const canvas = document.querySelector("#mapCanvas");
const ctx = canvas.getContext("2d");
const workspace = document.querySelector("#workspace");
const $ = selector => document.querySelector(selector);

let map = null;
let mapPath = "";
let warehouseObstacles = [];
let showEntities = true;
let slamBackground = null;
let slamImage = null;
let tool = "select";
let selection = null; // {type: station|path, ...}
let pathStart = null;
let view = {scale: 35, x: 0, y: 0};
let dragging = null;
let dirty = false;
let versionedSave = false;
let canUseMap = false;
let undoStack = [];
let redoStack = [];
let toastTimer = null;

function clone(value) { return JSON.parse(JSON.stringify(value)); }
function points() { return map?.advancedPointList || []; }
function curves() { return map?.advancedCurveList || []; }
function matchesPosition(a, b) {
  return a && b && Math.hypot(a.x - b.x, a.y - b.y) <= .02;
}
function routeAreas() { return map?.navigation?.route_areas || []; }
function areaMode() { return map?.navigation?.area_mode || "manual"; }
function routeBuffer() { return map?.navigation?.route_buffer ?? 1; }
function gatewayNames() {
  const neighbors=new Map(points().map(p=>[p.instanceName,new Set()]));
  for(const c of curves()){neighbors.get(c.startPos.instanceName)?.add(c.endPos.instanceName);neighbors.get(c.endPos.instanceName)?.add(c.startPos.instanceName);}
  return new Set(points().filter(p=>areaMode()==="auto" ? (neighbors.get(p.instanceName).size>0&&(p.navigationGateway||neighbors.get(p.instanceName).size===1)) : p.navigationGateway).map(p=>p.instanceName));
}
function station(name) { return points().find(p => p.instanceName === name); }
function curveKey(c) { return `${c.startPos.instanceName}\u0000${c.endPos.instanceName}`; }
function pathPair(c) { return curves().find(other => other.startPos.instanceName === c.endPos.instanceName && other.endPos.instanceName === c.startPos.instanceName); }
function selectedCurve() { return selection?.type === "path" ? curves().find(c => curveKey(c) === selection.key) : null; }
function selectedStation() { return selection?.type === "station" ? station(selection.name) : null; }

function showToast(message, error = false) {
  const toast = $("#toast");
  toast.textContent = message;
  toast.className = `show${error ? " error" : ""}`;
  clearTimeout(toastTimer);
  toastTimer = setTimeout(() => toast.className = "", 2600);
}

function markDirty() {
  dirty = true;
  $("#saveState").textContent = "有未保存修改";
  $("#saveState").className = "status dirty";
  updateStats();
}

function snapshot() {
  undoStack.push(clone(map));
  if (undoStack.length > 80) undoStack.shift();
  redoStack = [];
  updateHistoryButtons();
}

function undo() {
  if (!undoStack.length) return;
  redoStack.push(clone(map));
  map = undoStack.pop();
  selection = null;
  pathStart = null;
  markDirty(); updateHistoryButtons(); updateProperties(); renderAreas(); draw();
}

function redo() {
  if (!redoStack.length) return;
  undoStack.push(clone(map));
  map = redoStack.pop();
  selection = null;
  pathStart = null;
  markDirty(); updateHistoryButtons(); updateProperties(); renderAreas(); draw();
}

function updateHistoryButtons() {
  $("#undoBtn").disabled = !undoStack.length;
  $("#redoBtn").disabled = !redoStack.length;
}

function resize() {
  const ratio = window.devicePixelRatio || 1;
  const box = workspace.getBoundingClientRect();
  canvas.width = Math.round(box.width * ratio);
  canvas.height = Math.round(box.height * ratio);
  canvas.style.width = `${box.width}px`;
  canvas.style.height = `${box.height}px`;
  ctx.setTransform(ratio, 0, 0, ratio, 0, 0);
  draw();
}

function screen(pos) { return {x: view.x + pos.x * view.scale, y: view.y - pos.y * view.scale}; }
function world(x, y) { return {x: (x - view.x) / view.scale, y: (view.y - y) / view.scale}; }

function bounds() {
  const h = map.header || {};
  let minX = h.minPos?.x ?? -1, minY = h.minPos?.y ?? -1;
  let maxX = h.maxPos?.x ?? 1, maxY = h.maxPos?.y ?? 1;
  for (const p of points()) {
    minX = Math.min(minX, p.pos.x); minY = Math.min(minY, p.pos.y);
    maxX = Math.max(maxX, p.pos.x); maxY = Math.max(maxY, p.pos.y);
  }
  return {minX, minY, maxX, maxY};
}

function fitView() {
  if (!map) return;
  const b = bounds();
  const width = canvas.clientWidth, height = canvas.clientHeight;
  view.scale = Math.max(4, Math.min((width - 90) / (b.maxX - b.minX || 1), (height - 90) / (b.maxY - b.minY || 1)));
  view.x = width / 2 - (b.minX + b.maxX) / 2 * view.scale;
  view.y = height / 2 + (b.minY + b.maxY) / 2 * view.scale;
  draw();
}

function bezierPoint(c, t) {
  const p0 = c.startPos.pos, p1 = c.controlPos1, p2 = c.controlPos2, p3 = c.endPos.pos, u = 1 - t;
  return {x: u*u*u*p0.x + 3*u*u*t*p1.x + 3*u*t*t*p2.x + t*t*t*p3.x,
          y: u*u*u*p0.y + 3*u*u*t*p1.y + 3*u*t*t*p2.y + t*t*t*p3.y};
}

function bezierTangent(c, t) {
  const p0 = c.startPos.pos, p1 = c.controlPos1, p2 = c.controlPos2, p3 = c.endPos.pos, u = 1 - t;
  return {x: 3*u*u*(p1.x-p0.x) + 6*u*t*(p2.x-p1.x) + 3*t*t*(p3.x-p2.x),
          y: 3*u*u*(p1.y-p0.y) + 6*u*t*(p2.y-p1.y) + 3*t*t*(p3.y-p2.y)};
}

function canvasBezier(c) {
  const a = screen(c.startPos.pos), b = screen(c.controlPos1), d = screen(c.controlPos2), e = screen(c.endPos.pos);
  ctx.beginPath(); ctx.moveTo(a.x, a.y); ctx.bezierCurveTo(b.x, b.y, d.x, d.y, e.x, e.y);
}

function arrow(c, t, color, offset = 0) {
  let p = bezierPoint(c, t), tangent = bezierTangent(c, t);
  const length = Math.hypot(tangent.x, tangent.y) || 1;
  const ux = tangent.x / length, uy = tangent.y / length;
  p = {x: p.x - uy * offset / view.scale, y: p.y + ux * offset / view.scale};
  const s = screen(p), angle = Math.atan2(-uy, ux), size = 9;
  ctx.save(); ctx.translate(s.x, s.y); ctx.rotate(angle);
  ctx.fillStyle = color; ctx.beginPath(); ctx.moveTo(size, 0); ctx.lineTo(-size*.65, -size*.55); ctx.lineTo(-size*.35, 0); ctx.lineTo(-size*.65, size*.55); ctx.closePath(); ctx.fill(); ctx.restore();
}

function pathGroups() {
  const seen = new Set(), groups = [];
  for (const c of curves()) {
    const key = curveKey(c);
    if (seen.has(key)) continue;
    const reverse = pathPair(c);
    seen.add(key); if (reverse) seen.add(curveKey(reverse));
    groups.push({curve: c, reverse});
  }
  return groups;
}

function draw() {
  if (!map) return;
  const width = canvas.clientWidth, height = canvas.clientHeight;
  ctx.clearRect(0, 0, width, height);

  if (showEntities) {
    ctx.fillStyle = "rgba(50, 124, 143, .20)";
    ctx.strokeStyle = "rgba(92, 184, 204, .60)";
    ctx.lineWidth = 1;
    for (const obstacle of warehouseObstacles) {
      const topLeft = screen({x: obstacle.x - obstacle.width/2,
                              y: obstacle.y + obstacle.height/2});
      const w = obstacle.width * view.scale, h = obstacle.height * view.scale;
      ctx.fillRect(topLeft.x, topLeft.y, w, h);
      ctx.strokeRect(topLeft.x, topLeft.y, w, h);
    }
  }

  if (slamBackground && slamImage?.complete && slamImage.naturalWidth) {
    const topLeft = screen({x: slamBackground.origin[0],
                            y: slamBackground.origin[1] + slamBackground.height * slamBackground.resolution});
    ctx.drawImage(slamImage, topLeft.x, topLeft.y,
                  slamBackground.width * slamBackground.resolution * view.scale,
                  slamBackground.height * slamBackground.resolution * view.scale);
  }

  ctx.fillStyle = "rgba(205, 218, 230, .85)";
  const radius = Math.max(1.2, Math.min(2.0, view.scale * .10));
  for (const p of map.normalPosList || []) {
    const q = screen(p);
    if (q.x < -2 || q.y < -2 || q.x > width + 2 || q.y > height + 2) continue;
    ctx.fillRect(q.x, q.y, radius, radius);
  }

  if(areaMode()==="auto"){
    ctx.save();ctx.strokeStyle="rgba(251,191,36,.21)";ctx.lineWidth=routeBuffer()*2*view.scale;ctx.lineCap="round";ctx.lineJoin="round";ctx.beginPath();
    for(const {curve:c} of pathGroups()){
      const a=screen(c.startPos.pos),b=screen(c.controlPos1),d=screen(c.controlPos2),e=screen(c.endPos.pos);
      ctx.moveTo(a.x,a.y);ctx.bezierCurveTo(b.x,b.y,d.x,d.y,e.x,e.y);
    }
    ctx.stroke();ctx.restore();
  }
  for (const area of areaMode()==="manual"?routeAreas():[]) {
    const topLeft=screen({x:area.min_x,y:area.max_y});
    const w=(area.max_x-area.min_x)*view.scale,h=(area.max_y-area.min_y)*view.scale;
    ctx.fillStyle="rgba(251,191,36,.06)";ctx.fillRect(topLeft.x,topLeft.y,w,h);
    ctx.strokeStyle="#fbbf24";ctx.lineWidth=2;ctx.setLineDash([8,5]);ctx.strokeRect(topLeft.x,topLeft.y,w,h);ctx.setLineDash([]);
    ctx.fillStyle="#fbbf24";ctx.font="12px system-ui";ctx.textAlign="left";ctx.fillText(area.name||"指定路径区",topLeft.x+6,topLeft.y+16);
  }
  for (const group of pathGroups()) {
    const c = group.curve;
    const active = selection?.type === "path" && (selection.key === curveKey(c) || (group.reverse && selection.key === curveKey(group.reverse)));
    ctx.lineWidth = active ? 5 : 3;
    ctx.strokeStyle = active ? "#fbbf24" : "#f97360";
    ctx.shadowColor = active ? "rgba(251,191,36,.35)" : "transparent"; ctx.shadowBlur = active ? 8 : 0;
    canvasBezier(c); ctx.stroke(); ctx.shadowBlur = 0;
    if (group.reverse) {
      arrow(c, .42, active ? "#fff3b0" : "#ffd0c7", 4);
      arrow(group.reverse, .42, active ? "#fff3b0" : "#ffd0c7", 4);
    } else arrow(c, .5, active ? "#fff3b0" : "#ffd0c7", 0);
  }

  const gateways=gatewayNames();
  for (const p of points()) {
    const q = screen(p.pos), selected = selection?.type === "station" && selection.name === p.instanceName;
    const color = p.className === "ChargePoint" ? "#fb923c" : p.className === "ActionPoint" ? "#4ade80" : "#38bdf8";
    ctx.beginPath(); ctx.arc(q.x, q.y, selected ? 8 : 6, 0, Math.PI * 2);
    ctx.fillStyle = color; ctx.fill(); ctx.lineWidth = selected ? 3 : 1.5; ctx.strokeStyle = selected ? "#fff" : "#0b1119"; ctx.stroke();
    if(gateways.has(p.instanceName)){ctx.beginPath();ctx.arc(q.x,q.y,11,0,Math.PI*2);ctx.strokeStyle="#fbbf24";ctx.lineWidth=2;ctx.stroke();}
    ctx.font = `${selected ? 650 : 550} 11px system-ui`;
    ctx.textAlign = "left"; ctx.textBaseline = "bottom"; ctx.lineWidth = 3; ctx.strokeStyle = "#091019";
    ctx.strokeText(p.instanceName, q.x + 8, q.y - 7); ctx.fillStyle = selected ? "#fff" : color; ctx.fillText(p.instanceName, q.x + 8, q.y - 7);
    if (!p.ignoreDir && Number.isFinite(p.dir)) {
      const x2 = q.x + Math.cos(p.dir) * 18, y2 = q.y - Math.sin(p.dir) * 18;
      ctx.beginPath(); ctx.moveTo(q.x, q.y); ctx.lineTo(x2, y2); ctx.strokeStyle = color; ctx.lineWidth = 2; ctx.stroke();
    }
  }

  const c = selectedCurve();
  if (c) {
    const p0 = screen(c.startPos.pos), p1 = screen(c.controlPos1), p2 = screen(c.controlPos2), p3 = screen(c.endPos.pos);
    ctx.strokeStyle = "rgba(255,255,255,.42)"; ctx.lineWidth = 1; ctx.setLineDash([4,4]);
    ctx.beginPath(); ctx.moveTo(p0.x,p0.y); ctx.lineTo(p1.x,p1.y); ctx.moveTo(p3.x,p3.y); ctx.lineTo(p2.x,p2.y); ctx.stroke(); ctx.setLineDash([]);
    for (const [index, p] of [[1,p1],[2,p2]]) { ctx.fillStyle = "#fbbf24"; ctx.fillRect(p.x-5,p.y-5,10,10); ctx.strokeStyle="#151b24"; ctx.strokeRect(p.x-5,p.y-5,10,10); }
  }
  if (pathStart) {
    const q = screen(station(pathStart).pos); ctx.beginPath(); ctx.arc(q.x,q.y,13,0,Math.PI*2); ctx.strokeStyle="#fbbf24"; ctx.lineWidth=2; ctx.stroke();
  }
}

function nearestStation(x, y, limit = 13) {
  let found = null, best = limit;
  for (const p of points()) { const q = screen(p.pos), d = Math.hypot(q.x-x,q.y-y); if (d < best) {best=d; found=p;} }
  return found;
}

function nearestPath(x, y, limit = 10) {
  let found = null, best = limit;
  for (const group of pathGroups()) {
    let last = screen(bezierPoint(group.curve, 0));
    for (let i=1; i<=40; i++) {
      const now = screen(bezierPoint(group.curve, i/40));
      const d = segmentDistance(x,y,last.x,last.y,now.x,now.y);
      if (d < best) { best=d; found=group.curve; }
      last = now;
    }
  }
  return found;
}

function segmentDistance(px,py,ax,ay,bx,by) {
  const dx=bx-ax, dy=by-ay, len=dx*dx+dy*dy;
  const t=len ? Math.max(0,Math.min(1,((px-ax)*dx+(py-ay)*dy)/len)) : 0;
  return Math.hypot(px-(ax+t*dx),py-(ay+t*dy));
}

function controlHit(x,y) {
  const c=selectedCurve(); if (!c) return 0;
  for (const index of [1,2]) { const q=screen(c[`controlPos${index}`]); if (Math.hypot(q.x-x,q.y-y)<10) return index; }
  return 0;
}

function beginDrag(event) {
  const rect=canvas.getBoundingClientRect(), x=event.clientX-rect.left, y=event.clientY-rect.top;
  const pan = tool === "pan" || event.button === 2 || event.button === 1 || event.altKey || event.spaceKey;
  if (pan) { dragging={type:"pan",x,y,viewX:view.x,viewY:view.y}; canvas.setPointerCapture(event.pointerId); return; }
  if (tool === "station") { addStation(world(x,y)); return; }
  if (tool === "path") { choosePathStation(x,y); return; }
  const handle = controlHit(x,y);
  if (handle) { snapshot(); dragging={type:"control",handle}; canvas.setPointerCapture(event.pointerId); return; }
  const p=nearestStation(x,y);
  if (p) { selection={type:"station",name:p.instanceName}; updateProperties(); draw(); snapshot(); dragging={type:"station",name:p.instanceName,last:world(x,y)}; canvas.setPointerCapture(event.pointerId); return; }
  const c=nearestPath(x,y);
  selection=c ? {type:"path",key:curveKey(c)} : null;
  updateProperties(); draw();
}

function moveDrag(event) {
  const rect=canvas.getBoundingClientRect(), x=event.clientX-rect.left, y=event.clientY-rect.top, w=world(x,y);
  $("#cursorInfo").textContent=`x ${w.x.toFixed(3)} · y ${w.y.toFixed(3)} · ${Math.round(view.scale/35*100)}%`;
  if (!dragging) return;
  if (dragging.type === "pan") { view.x=dragging.viewX+x-dragging.x; view.y=dragging.viewY+y-dragging.y; draw(); return; }
  if (dragging.type === "control") {
    const c=selectedCurve(); if (!c) return;
    c[`controlPos${dragging.handle}`]={x:+w.x.toFixed(6),y:+w.y.toFixed(6)}; c.className="BezierPath";
    const reverse=pathPair(c); if (reverse) reverse[`controlPos${3-dragging.handle}`]=clone(c[`controlPos${dragging.handle}`]);
    markDirty(); updateProperties(); draw(); return;
  }
  if (dragging.type === "station") {
    const p=station(dragging.name), last=dragging.last, dx=w.x-last.x, dy=w.y-last.y;
    p.pos.x=+(p.pos.x+dx).toFixed(6); p.pos.y=+(p.pos.y+dy).toFixed(6);
    for (const c of curves()) {
      if (c.startPos.instanceName===p.instanceName) { c.startPos.pos=clone(p.pos); c.controlPos1.x+=dx; c.controlPos1.y+=dy; }
      if (c.endPos.instanceName===p.instanceName) { c.endPos.pos=clone(p.pos); c.controlPos2.x+=dx; c.controlPos2.y+=dy; }
    }
    dragging.last=w; markDirty(); updateProperties(); draw();
  }
}

function endDrag() { dragging=null; }

function addStation(pos) {
  snapshot();
  const type=$("#stationClass").value || "LocationMark";
  const prefix=type === "ActionPoint" ? "AP" : type === "ChargePoint" ? "CP" : "LM";
  let n=1; while (station(`${prefix}${n}`)) n++;
  const p={className:type,instanceName:`${prefix}${n}`,pos:{x:+pos.x.toFixed(3),y:+pos.y.toFixed(3)},dir:0,property:[{key:"spin",type:"bool",value:"ZmFsc2U=",boolValue:false}],ignoreDir:true};
  points().push(p); selection={type:"station",name:p.instanceName}; markDirty(); setTool("select"); updateProperties(); draw();
}

function choosePathStation(x,y) {
  const p=nearestStation(x,y,16);
  if (!p) { showToast("请单击站点来连接路径",true); return; }
  if (!pathStart) { pathStart=p.instanceName; $("#toolHint").textContent=`已选择 ${pathStart}，请单击终点`; draw(); return; }
  if (pathStart===p.instanceName) { pathStart=null; draw(); return; }
  if (curves().some(c=>(c.startPos.instanceName===pathStart&&c.endPos.instanceName===p.instanceName)||(c.startPos.instanceName===p.instanceName&&c.endPos.instanceName===pathStart))) { showToast("这两个站点之间已有路径；请选择已有路径修改方向",true); return; }
  snapshot();
  const start=station(pathStart), direction=$("#newPathDirection").value;
  const forward=makeCurve(start,p); curves().push(forward);
  if (direction==="both") curves().push(reverseCurve(forward));
  selection={type:"path",key:curveKey(forward)}; pathStart=null; markDirty(); setTool("select"); updateProperties(); draw();
}

function makeCurve(a,b) {
  return {className:"DegenerateBezier",instanceName:`${a.instanceName}-${b.instanceName}`,startPos:{instanceName:a.instanceName,pos:clone(a.pos)},endPos:{instanceName:b.instanceName,pos:clone(b.pos)},controlPos1:{x:a.pos.x+(b.pos.x-a.pos.x)/3,y:a.pos.y+(b.pos.y-a.pos.y)/3},controlPos2:{x:a.pos.x+2*(b.pos.x-a.pos.x)/3,y:a.pos.y+2*(b.pos.y-a.pos.y)/3},property:[{key:"direction",type:"int",value:"MA==",int32Value:0},{key:"movestyle",type:"int",value:"MA==",int32Value:0}]};
}

function reverseCurve(c) {
  return {className:c.className,instanceName:`${c.endPos.instanceName}-${c.startPos.instanceName}`,startPos:clone(c.endPos),endPos:clone(c.startPos),controlPos1:clone(c.controlPos2),controlPos2:clone(c.controlPos1),property:clone(c.property||[])};
}

function removeSelection() {
  if (!selection) {
    showToast("请先选择要删除的站点或路线");
    return;
  }
  snapshot();
  if (selection.type==="station") {
    const name=selection.name;
    const position = selectedStation().pos;
    if (Array.isArray(map.advancedLineList)) {
      map.advancedLineList = map.advancedLineList.filter(({line}) =>
        !matchesPosition(line?.startPos, position) && !matchesPosition(line?.endPos, position));
    }
    map.advancedPointList=points().filter(p=>p.instanceName!==name);
    map.advancedCurveList=curves().filter(c=>c.startPos.instanceName!==name&&c.endPos.instanceName!==name);
  } else {
    const c=selectedCurve(); if (c) { const a=c.startPos.instanceName,b=c.endPos.instanceName; map.advancedCurveList=curves().filter(x=>!((x.startPos.instanceName===a&&x.endPos.instanceName===b)||(x.startPos.instanceName===b&&x.endPos.instanceName===a))); }
  }
  selection=null; markDirty(); updateProperties(); draw();
}

function setTool(next) {
  tool=next; pathStart=null;
  document.querySelectorAll(".tool[data-tool]").forEach(b=>b.classList.toggle("active",b.dataset.tool===tool));
  canvas.style.cursor=tool==="pan"?"grab":tool==="station"?"crosshair":tool==="path"?"cell":"default";
  $("#toolHint").textContent=tool==="station"?"单击地图空白位置添加站点":tool==="path"?"依次单击起点和终点":tool==="pan"?"拖动画布；滚轮缩放":"拖动站点；单击路径或站点可编辑";
  draw();
}

function updateProperties() {
  const p=selectedStation(), c=selectedCurve();
  $("#emptyProperties").classList.toggle("hidden",!!(p||c));
  $("#stationProperties").classList.toggle("hidden",!p);
  $("#pathProperties").classList.toggle("hidden",!c);
  $("#stationGateway").checked=!!p?.navigationGateway;
  $("#selectionType").textContent=p?"站点":c?"路径":"未选择";
  if (p) { $("#stationName").value=p.instanceName; $("#stationClass").value=p.className; $("#stationX").value=p.pos.x; $("#stationY").value=p.pos.y; $("#stationHeading").value=((p.dir||0)*180/Math.PI).toFixed(1); $("#stationIgnoreDir").checked=!!p.ignoreDir; }
  if (c) { const reverse=pathPair(c); $("#pathStart").value=c.startPos.instanceName; $("#pathEnd").value=c.endPos.instanceName; $("#pathDirection").value=reverse?"both":"forward"; $("#pathClass").value=c.className||"DegenerateBezier"; }
}

function updateStation(field) {
  const p=selectedStation(); if (!p) return;
  snapshot();
  if (field==="name") {
    const old=p.instanceName, next=$("#stationName").value.trim();
    if (!next || (next!==old&&station(next))) { showToast("站点名称不能为空且不能重复",true); updateProperties(); undoStack.pop(); return; }
    p.instanceName=next; selection.name=next;
    for (const c of curves()) { if(c.startPos.instanceName===old)c.startPos.instanceName=next;if(c.endPos.instanceName===old)c.endPos.instanceName=next;c.instanceName=`${c.startPos.instanceName}-${c.endPos.instanceName}`; }
  } else if (field==="class") p.className=$("#stationClass").value;
  else if (field==="gateway") p.navigationGateway=$("#stationGateway").checked;
  else if (field==="ignore") p.ignoreDir=$("#stationIgnoreDir").checked;
  else if (field==="heading") p.dir=+(parseFloat($("#stationHeading").value||0)*Math.PI/180).toFixed(12);
  else {
    const newPos={x:parseFloat($("#stationX").value),y:parseFloat($("#stationY").value)};
    if (!Number.isFinite(newPos.x)||!Number.isFinite(newPos.y)) { undoStack.pop(); return; }
    const dx=newPos.x-p.pos.x,dy=newPos.y-p.pos.y;p.pos=newPos;
    for(const c of curves()){if(c.startPos.instanceName===p.instanceName){c.startPos.pos=clone(p.pos);c.controlPos1.x+=dx;c.controlPos1.y+=dy;}if(c.endPos.instanceName===p.instanceName){c.endPos.pos=clone(p.pos);c.controlPos2.x+=dx;c.controlPos2.y+=dy;}}
  }
  markDirty(); updateProperties(); draw();
}

function updatePathDirection() {
  let c=selectedCurve(); if(!c)return; snapshot();
  const choice=$("#pathDirection").value, reverse=pathPair(c);
  if(choice==="both"&&!reverse) curves().push(reverseCurve(c));
  else if(choice==="forward"&&reverse) map.advancedCurveList=curves().filter(x=>x!==reverse);
  else if(choice==="reverse") { if(reverse) map.advancedCurveList=curves().filter(x=>x!==c); else { const r=reverseCurve(c),index=curves().indexOf(c);curves()[index]=r; } c=curves().find(x=>x.startPos.instanceName===$("#pathEnd").value&&x.endPos.instanceName===$("#pathStart").value); selection.key=curveKey(c); }
  markDirty(); updateProperties(); draw();
}

function updatePathClass() { const c=selectedCurve();if(!c)return;snapshot();c.className=$("#pathClass").value;const r=pathPair(c);if(r)r.className=c.className;markDirty();draw(); }
function straighten() { const c=selectedCurve();if(!c)return;snapshot();const a=c.startPos.pos,b=c.endPos.pos;c.controlPos1={x:a.x+(b.x-a.x)/3,y:a.y+(b.y-a.y)/3};c.controlPos2={x:a.x+2*(b.x-a.x)/3,y:a.y+2*(b.y-a.y)/3};c.className="DegenerateBezier";const r=pathPair(c);if(r){r.controlPos1=clone(c.controlPos2);r.controlPos2=clone(c.controlPos1);r.className=c.className;}markDirty();updateProperties();draw(); }

function updateStats() {
  if(!map)return; const groups=pathGroups(),two=groups.filter(g=>g.reverse).length;
  $("#stationCount").textContent=points().length;$("#pathCount").textContent=groups.length;$("#twoWayCount").textContent=two;$("#oneWayCount").textContent=groups.length-two;
}

function renderAreas(){
  const automatic=areaMode()==="auto";
  $("#routeAreaMode").value=areaMode();$("#routeBuffer").value=routeBuffer();
  $("#routeBufferLabel").hidden=!automatic;$("#autoRouteInfo").hidden=!automatic;
  $("#routeAreas").hidden=automatic;$("#addRouteArea").hidden=automatic;
  $("#stationGatewayLabel").textContent=automatic?"附加衔接点（路线端点自动识别）":"指定路径区入口 / 出口";
  const container=$("#routeAreas");container.replaceChildren();
  routeAreas().forEach((area,index)=>{
    const block=document.createElement("div");block.className="route-area";
    for(const [key,label] of [["name","名称"],["min_x","最小 X"],["min_y","最小 Y"],["max_x","最大 X"],["max_y","最大 Y"]]){
      const wrapper=document.createElement("label");wrapper.textContent=label;
      const input=document.createElement("input");input.type=key==="name"?"text":"number";input.step="0.1";input.value=area[key];
      input.addEventListener("change",()=>{const value=key==="name"?input.value:Number(input.value);if(key!=="name"&&!Number.isFinite(value))return;snapshot();area[key]=value;markDirty();draw();});
      wrapper.append(input);block.append(wrapper);
    }
    const remove=document.createElement("button");remove.type="button";remove.textContent="删除区域";
    remove.addEventListener("click",()=>{snapshot();map.navigation.route_areas.splice(index,1);markDirty();renderAreas();draw();});block.append(remove);container.append(block);
  });
}

async function save(use = false) {
  if (!versionedSave) {
    showToast("当前服务版本不支持版本保存，请重启控制台后刷新", true);
    return;
  }
  if (use && !canUseMap) {
    showToast("车队换图尚未接通，请使用「保存新版本」", true);
    return;
  }
  if (!map || !dirty) {
    showToast("地图没有改动，无需创建新版本");
    return;
  }
  const buttons = [$("#saveBtn"), $("#saveUseBtn")];
  if (buttons[0].disabled) return;
  const name = window.prompt("请输入新地图名称", `${map.header.mapName}-新版`)?.trim();
  if (!name) return;
  const document = {...map, header: {...map.header, mapName: name}};
  const pendingContent = JSON.stringify(map);
  buttons.forEach(button => button.disabled = true);
  $("#saveState").textContent = "正在保存…";
  try {
    const response = await fetch(`/api/maps/${editorMapId}/edit`, {
      method: "POST", headers: {"Content-Type": "application/json"},
      body: JSON.stringify({map: document, use}),
    });
    const result = await response.json();
    if (!response.ok) throw new Error(result.error || "保存失败");
    const changedWhileSaving = JSON.stringify(map) !== pendingContent;
    map.header.mapName = result.name;
    editorMapId = result.id;
    $("#filePath").textContent = `SMAP: ${result.name} · 地图库版本 #${result.id}`;
    if (changedWhileSaving) {
      markDirty();
      showToast(`已保存版本 #${result.id}，仍有后续改动未保存`);
      return;
    }
    dirty = false;
    $("#saveState").textContent = "已保存";
    $("#saveState").className = "status saved";
    if (use) window.top.location.assign(result.map_id ? "/maps" : "/");
    else showToast(`已保存为版本 #${result.id}：${result.name}`);
  } catch (error) {
    $("#saveState").textContent = "保存失败";
    $("#saveState").className = "status dirty";
    showToast(error.message, true);
  } finally {
    buttons[0].disabled = !versionedSave;
    buttons[1].disabled = !versionedSave || !canUseMap;
  }
}

function download() { const blob=new Blob([JSON.stringify(map,null,2)+"\n"],{type:"application/json"}),a=document.createElement("a");a.href=URL.createObjectURL(blob);a.download=`${map.header?.mapName||"map"}-edited.smap`;a.click();URL.revokeObjectURL(a.href); }

canvas.addEventListener("pointerdown",beginDrag);canvas.addEventListener("pointermove",moveDrag);canvas.addEventListener("pointerup",endDrag);canvas.addEventListener("pointercancel",endDrag);canvas.addEventListener("contextmenu",e=>e.preventDefault());
canvas.addEventListener("wheel",event=>{event.preventDefault();const rect=canvas.getBoundingClientRect(),x=event.clientX-rect.left,y=event.clientY-rect.top,before=world(x,y),factor=Math.exp(-event.deltaY*.001);view.scale=Math.max(4,Math.min(500,view.scale*factor));view.x=x-before.x*view.scale;view.y=y+before.y*view.scale;draw();},{passive:false});
window.addEventListener("resize",resize);window.addEventListener("beforeunload",e=>{if(dirty){e.preventDefault();e.returnValue="";}});
window.addEventListener("keydown",event=>{if(["INPUT","SELECT"].includes(document.activeElement.tagName))return;if((event.ctrlKey||event.metaKey)&&event.key.toLowerCase()==="s"){event.preventDefault();save();}else if((event.ctrlKey||event.metaKey)&&event.key.toLowerCase()==="z"){event.preventDefault();event.shiftKey?redo():undo();}else if((event.ctrlKey||event.metaKey)&&event.key.toLowerCase()==="y"){event.preventDefault();redo();}else if(event.key==="Delete"||event.key==="Backspace")removeSelection();else if(event.key.toLowerCase()==="v")setTool("select");else if(event.key.toLowerCase()==="s")setTool("station");else if(event.key.toLowerCase()==="p")setTool("path");else if(event.key.toLowerCase()==="h")setTool("pan");else if(event.key==="Escape"){pathStart=null;selection=null;setTool("select");updateProperties();}});
document.querySelectorAll(".tool[data-tool]").forEach(b=>b.addEventListener("click",()=>setTool(b.dataset.tool)));
$("#deleteBtn").addEventListener("click",removeSelection);$("#undoBtn").addEventListener("click",undo);$("#redoBtn").addEventListener("click",redo);$("#fitBtn").addEventListener("click",fitView);$("#saveBtn").addEventListener("click",()=>save());$("#saveUseBtn").addEventListener("click",()=>save(true));$("#downloadBtn").addEventListener("click",download);
$("#toggleEntitiesBtn").addEventListener("click",()=>{showEntities=!showEntities;$("#toggleEntitiesBtn").textContent=showEntities?"隐藏实体参考":"显示实体参考";draw();});
$("#stationName").addEventListener("change",()=>updateStation("name"));$("#stationClass").addEventListener("change",()=>updateStation("class"));$("#stationX").addEventListener("change",()=>updateStation("pos"));$("#stationY").addEventListener("change",()=>updateStation("pos"));$("#stationHeading").addEventListener("change",()=>updateStation("heading"));$("#stationIgnoreDir").addEventListener("change",()=>updateStation("ignore"));
$("#stationGateway").addEventListener("change",()=>updateStation("gateway"));
$("#routeAreaMode").addEventListener("change",()=>{snapshot();map.navigation??={};map.navigation.area_mode=$("#routeAreaMode").value;markDirty();renderAreas();draw();});
$("#routeBuffer").addEventListener("change",()=>{const value=Number($("#routeBuffer").value);if(!Number.isFinite(value)||value<.25||value>3){showToast("限制距离应在 0.25～3 米之间",true);renderAreas();return;}snapshot();map.navigation??={};map.navigation.route_buffer=value;markDirty();draw();});
$("#addRouteArea").addEventListener("click",()=>{snapshot();map.navigation??={};map.navigation.route_areas??=[];map.navigation.route_areas.push({name:"指定路径区",min_x:12,min_y:16,max_x:65,max_y:50});markDirty();renderAreas();draw();});
$("#pathDirection").addEventListener("change",updatePathDirection);$("#pathClass").addEventListener("change",updatePathClass);$("#straightenBtn").addEventListener("click",straighten);

(async()=>{try{const response=await fetch(`/api/maps/${editorMapId}/edit`);const data=await response.json();if(!response.ok)throw new Error(data.error);map=data.map;mapPath=data.map_path;
versionedSave = data.versioned_save === true;
canUseMap = data.can_use === true;
$("#saveBtn").disabled = !versionedSave;
$("#saveUseBtn").disabled = !versionedSave || !canUseMap;
if (!versionedSave) showToast("当前服务版本较旧，请重启控制台后刷新", true);
warehouseObstacles=data.warehouse_obstacles||[];slamBackground=data.slam_background||null;$("#toggleEntitiesBtn").hidden=!warehouseObstacles.length;if(slamBackground){slamImage=new Image();slamImage.onload=draw;slamImage.src=`${slamBackground.url}?v=${Date.now()}`;}$("#filePath").textContent=`SMAP: ${data.map_path}\n地图库版本: #${editorMapId}`;$("#saveState").textContent="已载入";$("#saveState").className="status saved";resize();fitView();updateStats();renderAreas();updateHistoryButtons();}catch(error){$("#saveState").textContent="载入失败";showToast(error.message,true);}})();
