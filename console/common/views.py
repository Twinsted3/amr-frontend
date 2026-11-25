"""Server-rendered navigation and separate pages for the local console."""

from pathlib import Path
import re
from string import Template


DIST = Path(__file__).resolve().parent / 'web'
MODE_WEB = {mode: DIST.parent.parent / mode / 'web' for mode in ('field', 'sim')}
ASSET_TYPES = {'.js': 'application/javascript', '.css': 'text/css', '.svg': 'image/svg+xml'}
PAGES = {
    '/': ('overview', 'overview', '地图', '查看当前使用的地图，或开启编辑。'),
    '/maps': ('maps', 'maps', '地图管理', '管理 SMAP 地图版本、预览站点和路网。'),
    '/vehicles': ('vehicles', 'vehicles', '车辆管理', '登记叉车并查看各车辆的状态连接。'),
    '/map-editor': ('editor', 'overview', '地图编辑', '修改站点和路线并保存为新版本。'),
}
DETAILS = {
    'maps': ('map-detail', 'maps', '地图详情', '预览地图几何、站点和有向路径。'),
    'vehicles': ('vehicle-detail', 'vehicles', '车辆详情', '查看连接配置、定位、电源和车端告警。'),
}
NOT_FOUND = ('not-found', '', '页面未找到', '请从导航中选择模块，或返回运行总览。')


def mode_pages(mode):
    if mode == 'field':
        from field import pages
    else:
        from sim import pages
    return pages


def web_file(mode, name):
    local = MODE_WEB[mode] / name
    return local if local.is_file() else DIST / name


def web_asset(mode, path):
    if not re.fullmatch(r'/[a-zA-Z0-9_-]+\.(?:js|css|svg)', path):
        return None
    file = web_file(mode, path.removeprefix('/'))
    return (file, ASSET_TYPES[file.suffix]) if file.is_file() else None


def find_page(path, mode='sim'):
    specific = mode_pages(mode).PAGES
    if path in specific:
        return specific[path], None
    if path in PAGES:
        return PAGES[path], None
    match = re.fullmatch(r'/(maps|tasks|vehicles)/([1-9][0-9]{0,17})', path)
    if match:
        if match[1] == 'tasks':
            return (specific['/tasks'] if mode == 'sim' else NOT_FOUND), None
        return DETAILS[match[1]], int(match[2])
    return NOT_FOUND, None


def render_page(page, record_id=None, mode='sim', *, lightweight=False):
    name, active, title, subtitle = page
    pages = mode_pages(mode)
    navigation = []
    for group, entries in pages.NAVIGATION:
        links = []
        for item, href, label, caption in entries:
            current = ' aria-current="page"' if item == active else ''
            links.append(f'<a href="{href}" aria-label="{label}"{current}><svg aria-hidden="true"><use href="#icon-{item}"/></svg>'
                         f'<span>{label}</span><small>{caption}</small></a>')
        navigation.append(f'<div class="nav-group"><p>{group}</p>{"".join(links)}</div>')
    content = web_file(mode, f'pages/{name}.html').read_text(encoding='utf-8')
    if name == 'maps' and mode == 'field':
        content = content.replace('仿真任务使用车队运行中已加载的场景地图。', '')
    for marker, filename in (('CONNECTION', 'fleet-connection'), ('TASK_FORM', 'task-form'), ('TASK_LIST', 'task-list')):
        if f'<!-- {marker} -->' in content:
            content = content.replace(f'<!-- {marker} -->',
                                      web_file(mode, f'pages/{filename}.html').read_text(encoding='utf-8'))
    shell = Template(web_file(mode, 'shell.html').read_text(encoding='utf-8'))
    script = pages.PAGE_SCRIPTS.get(name)
    scripts = f'<script src="/{script}" defer></script>' if script else ''
    return shell.substitute(
        page=name, record_id=record_id or '', title=title, subtitle=subtitle,
        navigation=''.join(navigation), content=content,
        mode=mode, mode_suffix='（仿真）' if mode == 'sim' else '',
        environment=('仿真回放' if name == 'fleet-replay' else '轻量仿真' if lightweight
                     else 'ROS2 / Gazebo' if mode == 'sim' else '车辆管理'),
        page_scripts=scripts,
    ).encode('utf-8')
