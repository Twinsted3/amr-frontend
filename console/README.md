# AMR 调度控制台

完整操作和当轮验收以工作区根目录的《手动操作指南.md》为准。

| 部署 | 启动参数 | 默认入口 | 运行库 |
| --- | --- | --- | --- |
| 实车 | `python app.py --mode field --open-browser` | `127.0.0.1:8081` | `runtime/field/console.sqlite3` |
| 仿真 | `python app.py --mode sim --open-browser` | `127.0.0.1:8082/fleet` | `runtime/sim/console.sqlite3` |

`启动控制台.cmd` 默认启动实车版，`启动仿真控制台.cmd` 启动仿真版。两者共用页面组件与地图代码。实车目录首次启动为空库，在「地图管理」导入现场地图，在「车辆管理」登记车端编号和 19301 状态端口。网页的任务服务状态为未接通。旧版混合数据库 `runtime/dispatch.sqlite3` 可供运维查询，两套服务都拒绝直接复用它。

仿真版在「车队运行」连接 Ubuntu 的 ROS 调度服务。该服务使用 `warehouse_dispatch_ws_20261104` 中的现有 Gazebo/Nav2 场景与调度 SQLite 会话库。仿真只连接 Gazebo 车队接口及本机历史样本。历史样本登记号为 `SIM-DEMO-FORKLIFT`，历史模拟发送器只监听本机临时端口。

| 文件 | 职责 |
| --- | --- |
| `app.py`、`views.py` | 绑定本机端口，按运行模式加载路由、页面和存储 |
| `fleet.py` | 核对仿真调度会话、连接配置和执行端就绪后转发指令 |
| `dispatch.py`、`maps.py` | 地图库和预览选择 |
| `telemetry.py`、`vehicles.py` | 解码车端状态，核对车辆编号，管理连接 |
| `sample_vehicle.py` | 仿真部署的本机样本发送器 |
