"""Server-rendered navigation and separate pages for the local console."""

from pathlib import Path
import re
from string import Template


DIST = Path(__file__).resolve().parent / 'dist'
NAVIGATION = (
    ('调度中心', (
        ('overview', '/', '地图', '首页'),
        ('fleet', '/fleet', '车队运行', '车队'),
        ('tasks', '/tasks', '任务管理', '任务'),
    )),
    ('资源管理', (
        ('maps', '/maps', '地图管理', '地图'),
        ('vehicles', '/vehicles', '车辆管理', '车辆'),
    )),
)
PAGES = {
    '/': ('overview', 'overview', '地图', '查看当前使用的地图，或开启编辑。'),
    '/fleet': ('fleet', 'fleet', '车队运行', '查看 Gazebo 车队位置、当前许可路线和路权状态。'),
    '/fleet/task': ('fleet-task', 'fleet', '车队任务详情', '查看仿真调度、通行和到站反馈。'),
    '/maps': ('maps', 'maps', '地图管理', '管理 SMAP 地图版本、预览站点和路网。'),
    '/vehicles': ('vehicles', 'vehicles', '车辆管理', '登记叉车并查看各车辆的状态连接。'),
    '/vehicles/sim': ('sim-vehicle', 'vehicles', '仿真车辆详情', '查看车况并管理车辆调度。'),
    '/vehicles/telemetry': ('telemetry', 'vehicles', '临时车况', '查看历史样本，或临时接收指定地址的车辆推送。'),
    '/tasks': ('tasks', 'tasks', '任务管理', '管理与运行地图相同的调度队列。'),
    '/tasks/new': ('task-new', 'tasks', '创建任务', '创建搬运、移动或待命任务，由调度系统自动选车。'),
    '/tasks/edit': ('task-edit', 'tasks', '编辑任务', '修改尚未分配车辆的排队或暂停任务。'),
    '/tasks/detail': ('fleet-task', 'tasks', '任务详情', '查看执行反馈，并按当前状态暂停、继续或取消。'),
    '/map-editor': ('editor', 'overview', '地图编辑', '修改站点和路线并保存为新版本。'),
}
DETAILS = {
    'maps': ('map-detail', 'maps', '地图详情', '预览地图几何、站点和有向路径。'),
    'tasks': ('task-detail', 'tasks', '任务详情', '查看任务路线、执行进度和操作记录。'),
    'vehicles': ('vehicle-detail', 'vehicles', '车辆详情', '查看连接配置、定位、电源和车端告警。'),
}
NOT_FOUND = ('not-found', '', '页面未找到', '请从导航中选择模块，或返回运行总览。')


SIM_PAGES = {'/fleet', '/fleet/task', '/tasks', '/tasks/new', '/tasks/edit', '/tasks/detail',
             '/vehicles/sim', '/vehicles/telemetry'}


def find_page(path, mode='sim'):
    if mode == 'field' and path == '/tasks':
        return ('field-tasks', 'tasks', '任务管理', '查看车端任务服务状态。'), None
    if mode == 'field' and (path in SIM_PAGES or path.startswith('/tasks/')):
        return NOT_FOUND, None
    if path in PAGES:
        return PAGES[path], None
    match = re.fullmatch(r'/(maps|tasks|vehicles)/([1-9][0-9]{0,17})', path)
    if match:
        if match[1] == 'tasks':
            return PAGES['/tasks'], None
        return DETAILS[match[1]], int(match[2])
    return NOT_FOUND, None


def render_page(page, record_id=None, mode='sim'):
    name, active, title, subtitle = page
    navigation = []
    for group, entries in NAVIGATION:
        links = []
        for item, href, label, caption in entries:
            if mode == 'field' and href in SIM_PAGES and href != '/tasks':
                continue
            current = ' aria-current="page"' if item == active else ''
            links.append(f'<a href="{href}" aria-label="{label}"{current}><svg aria-hidden="true"><use href="#icon-{item}"/></svg>'
                         f'<span>{label}</span><small>{caption}</small></a>')
        navigation.append(f'<div class="nav-group"><p>{group}</p>{"".join(links)}</div>')
    content = (DIST / 'pages' / f'{name}.html').read_text(encoding='utf-8')
    if name == 'vehicles' and mode == 'field':
        content = re.sub(r'<!-- BEGIN SIM -->.*?<!-- END SIM -->', '', content, flags=re.S)
        content = content.replace('id="vehicle-add" class="panel-body form-line" hidden',
                                  'id="vehicle-add" class="panel-body form-line"')
        content = content.replace('<!-- FIELD CONNECTION -->',
                                  '<label>车辆 IPv4<input id="new-vehicle-host" required></label>'
                                  '<label>车况端口<input id="new-vehicle-port" type="number" min="1" '
                                  'max="65535" value="19301" required></label>')
    if name == 'vehicle-detail' and mode == 'field':
        content = re.sub(r'<!-- BEGIN SIM -->.*?<!-- END SIM -->', '', content, flags=re.S)
    if name == 'vehicle-detail' and mode == 'sim':
        content = content.replace('<span class="badge">实车</span>', '<span class="badge">历史样本</span>')
    if name == 'maps' and mode == 'field':
        content = content.replace('仿真任务使用车队运行中已加载的场景地图。', '')
    for marker, filename in (('CONNECTION', 'fleet-connection'), ('TASK_FORM', 'task-form'), ('TASK_LIST', 'task-list')):
        if f'<!-- {marker} -->' in content:
            content = content.replace(f'<!-- {marker} -->', (DIST/'pages'/f'{filename}.html').read_text(encoding='utf-8'))
    shell = Template((DIST / 'shell.html').read_text(encoding='utf-8'))
    scripts = ''
    if mode == 'sim' and active in ('fleet', 'tasks'):
        scripts = '<script src="/fleet.js" defer></script>'
    elif mode == 'sim' and name in ('vehicles', 'sim-vehicle'):
        scripts = '<script src="/vehicles.js" defer></script>'
    return shell.substitute(
        page=name, record_id=record_id or '', title=title, subtitle=subtitle,
        navigation=''.join(navigation), content=content,
        mode=mode, mode_suffix='（仿真）' if mode == 'sim' else '',
        environment='ROS2 / Gazebo' if mode == 'sim' else '车辆管理',
        page_scripts=scripts,
    ).encode('utf-8')
