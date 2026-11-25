# AMR 调度控制台

完整操作和当轮验收以工作区根目录的《手动操作指南.md》为准。

| 部署 | 启动参数 | 默认入口 | 运行库 |
| --- | --- | --- | --- |
| 实车 | `python app.py --mode field --open-browser` | `127.0.0.1:8081` | `runtime/field/console.sqlite3` |
| 仿真 | `python app.py --mode sim --open-browser` | `127.0.0.1:8082/fleet` | `runtime/sim/console.sqlite3` |

`启动控制台.cmd` 默认启动实车版，`启动仿真控制台.cmd` 启动仿真版。两者共用页面组件与地图代码。实车目录首次启动为空库，在「地图管理」导入现场地图，在「车辆管理」登记车端编号和 19301 状态端口。网页的任务服务状态为未接通。旧版混合数据库 `runtime/dispatch.sqlite3` 可供运维查询，两套服务都拒绝直接复用它。

仿真版在「车队运行」连接 Ubuntu 的 ROS 调度服务。该服务使用 `warehouse_dispatch_ws_20261104` 中的现有 Gazebo/Nav2 场景与调度 SQLite 会话库。仿真只连接 Gazebo 车队接口及本机历史样本。历史样本登记号为 `SIM-DEMO-FORKLIFT`，历史模拟发送器只监听本机临时端口。

| 目录或文件 | 职责 |
| --- | --- |
| `app.py` | 共用 HTTP 启动入口，按模式加载服务和数据库 |
| `field/pages.py`、`field/web/` | 实车导航菜单、页面、车辆管理与任务状态 |
| `field/vehicles.py` | 实车车辆登记和 TCP 状态连接规则 |
| `sim/pages.py`、`sim/web/` | Gazebo 车队、仿真任务和充电页面 |
| `sim/fleet.py` | 核对仿真会话、连接配置和执行端状态后转发指令 |
| `sim/vehicles.py`、`sim/sample_vehicle.py` | 历史车况模拟和本机样本发送器 |
| `common/` | 页面框架、地图编辑器与地图库、SQLite 车辆登记和车况解析 |

要改实车专用页面，优先在 `field/web/` 下修改。已共用的页面、外壳和静态样式可在对应模式的 `web/` 放同名文件覆盖。新增实车导航和脚本入口在 `field/pages.py` 登记。改动公共模板或 API 时，启动两个模式复核。
