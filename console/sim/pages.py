"""Routes, navigation and page scripts owned by the simulation console."""

PAGES = {
    '/fleet': ('fleet', 'fleet', '车队运行', '查看 Gazebo 车队位置、当前许可路线和路权状态。'),
    '/fleet/task': ('fleet-task', 'fleet', '车队任务详情', '查看仿真调度、通行和到站反馈。'),
    '/vehicles/sim': ('sim-vehicle', 'vehicles', '仿真车辆详情', '查看车况并管理车辆调度。'),
    '/vehicles/telemetry': ('telemetry', 'vehicles', '临时车况', '查看历史样本，或临时接收指定地址的车辆推送。'),
    '/tasks': ('tasks', 'tasks', '任务管理', '管理与运行地图相同的调度队列。'),
    '/tasks/new': ('task-new', 'tasks', '创建任务', '创建搬运、移动或待命任务，由调度系统自动选车。'),
    '/tasks/edit': ('task-edit', 'tasks', '编辑任务', '修改尚未分配车辆的排队或暂停任务。'),
    '/tasks/detail': ('fleet-task', 'tasks', '任务详情', '查看执行反馈，并按当前状态暂停、继续或取消。'),
}

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

PAGE_SCRIPTS = {
    'fleet': 'fleet.js', 'fleet-task': 'fleet.js', 'tasks': 'fleet.js',
    'task-new': 'fleet.js', 'task-edit': 'fleet.js', 'vehicles': 'vehicles.js',
    'sim-vehicle': 'vehicles.js',
}
