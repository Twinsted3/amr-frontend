#!/usr/bin/env python3
"""Export a standalone, visibly labelled replay of an actual overall run."""
import argparse
import json
from pathlib import Path
import sys

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'src/warehouse_sim'))
from warehouse_sim.route_graph import RouteGraph
from warehouse_sim.layout import obstacle_rectangles


def main():
    p=argparse.ArgumentParser();p.add_argument('run');p.add_argument('--output',default='artifacts/overall_replay.html');a=p.parse_args()
    run=Path(a.run);summary=json.loads((run/'summary.json').read_text(encoding='utf8'))
    traces=json.loads((run/'telemetry.json').read_text(encoding='utf8'))
    # A 2s downsample is for display only; original evidence remains unchanged.
    selected=[]
    for t in traces:
        if not selected or t['wall']-selected[-1]['wall']>=2:selected.append(t)
    if traces and selected[-1]!=traces[-1]:selected.append(traces[-1])
    g=RouteGraph(ROOT/'src/warehouse_sim/maps/warehouse.smap')
    m=dict(width=72,height=52,stations=g.stations,obstacles=obstacle_rectangles(),paths=[dict(start=x,end=y,points=g.path_points([x,y])) for x,y in g.edges])
    page=(ROOT/'src/warehouse_sim/web/dashboard.html').read_text(encoding='utf8')
    page=page.replace('● 实时ROS / Gazebo','历史记录回放 / 非实时')
    page=page.replace('工厂多叉车调度演示','工厂调度验收回放')
    start=page.index('async function poll()')
    end=page.index('</script>',start)
    data=json.dumps(dict(map=m,frames=selected,events=summary['events'],status=summary['status']),ensure_ascii=False).replace('<','\\u003c')
    js="""const replay=DATA;geometry=replay.map;let frame=0;let playing=true;
const controls=document.createElement('div');controls.style='padding:12px 24px;background:#1d3449;display:flex;gap:16px;align-items:center';controls.innerHTML='<button id="toggle">暂停</button><span>历史记录回放 · 非实时</span><input id="seek" type="range" min="0" max="'+(replay.frames.length-1)+'" value="0" style="flex:1"><span id="elapsed"></span>';document.querySelector('header').after(controls);
document.getElementById('toggle').onclick=()=>{playing=!playing;document.getElementById('toggle').textContent=playing?'暂停':'播放'};
document.getElementById('seek').oninput=e=>{frame=+e.target.value;show()};
function show(){const f=replay.frames[frame];render({state:f.state,events:replay.events.filter(e=>(e.wall_monotonic||e.since||Infinity)<=f.wall),age_s:0,scenario:{status:replay.status,message:'实际Gazebo运行记录回放；动作模型详见货叉与货物状态面板。'}});document.getElementById('live').textContent='历史记录回放 / 非实时';document.getElementById('elapsed').textContent=(f.wall-replay.frames[0].wall).toFixed(0)+' s';document.getElementById('seek').value=frame}
show();setInterval(()=>{if(playing){frame=(frame+1)%replay.frames.length;show()}},500);
""".replace('DATA',data)
    page=page[:start]+js+page[end:]
    out=Path(a.output);out.parent.mkdir(parents=True,exist_ok=True);out.write_text(page,encoding='utf8');print(out)


if __name__=='__main__':main()
