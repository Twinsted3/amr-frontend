"""Routes and navigation owned by the real-vehicle console."""

PAGES = {
    '/tasks': ('field-tasks', 'tasks', '任务管理', '查看车端任务服务状态。'),
}

NAVIGATION = (
    ('调度中心', (
        ('overview', '/', '地图', '首页'),
        ('tasks', '/tasks', '任务管理', '任务'),
    )),
    ('资源管理', (
        ('maps', '/maps', '地图管理', '地图'),
        ('vehicles', '/vehicles', '车辆管理', '车辆'),
    )),
)

PAGE_SCRIPTS = {}
