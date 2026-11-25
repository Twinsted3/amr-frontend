# 8080 后端路由

以下条目按原始 Gin 路由注册顺序列出。地址来自二进制内的路径字符串及长度，处理函数来自传入的函数指针。最后一列是调用 Gin 注册函数的虚拟地址。

| 方法 | 路径 | 业务处理函数 | 注册位置 |
| --- | --- | --- | --- |
| POST | `/cas/biz/v1/user/sign_in` | [LoginHandler](backend/biz/controller/user_controller.pseudo.c) | `0xe95bc9` |
| GET | `/cas/biz/v1/user/sign_out` | 只注册了路由，专属处理函数数量为 0 | `0xe95bf8` |
| POST | `/cas/biz/v1/user/sign_up` | [RegisterHandler](backend/biz/controller/user_controller.pseudo.c) | `0xe95c40` |
| POST | `/cas/biz/v1/user/new` | 只注册了路由，专属处理函数数量为 0 | `0xe95c6d` |
| DELETE | `/cas/biz/v1/user/del` | 只注册了路由，专属处理函数数量为 0 | `0xe95ca0` |
| POST | `/cas/biz/v1/user/alter` | 只注册了路由，专属处理函数数量为 0 | `0xe95ccf` |
| GET | `/cas/biz/v1/user` | 只注册了路由，专属处理函数数量为 0 | `0xe95cf6` |
| POST | `/cas/biz/v1/user_group/new` | 只注册了路由，专属处理函数数量为 0 | `0xe95d43` |
| DELETE | `/cas/biz/v1/user_group/del` | 只注册了路由，专属处理函数数量为 0 | `0xe95d72` |
| POST | `/cas/biz/v1/user_group/alter` | 只注册了路由，专属处理函数数量为 0 | `0xe95da1` |
| GET | `/cas/biz/v1/user_group` | 只注册了路由，专属处理函数数量为 0 | `0xe95dc8` |
| POST | `/cas/biz/v1/task/new` | [NewTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95e39` |
| DELETE | `/cas/biz/v1/task/del` | [DeleteTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95e80` |
| POST | `/cas/biz/v1/task/alter` | [UpdateTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95ec7` |
| GET | `/cas/biz/v1/task` | [GetAllTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95f06` |
| GET | `/cas/biz/v1/task/status1` | [HuifuTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95f4d` |
| GET | `/cas/biz/v1/task/status0` | [GuaqiTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95f94` |
| POST | `/cas/biz/v1/task/exc` | [ExcTaskHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe95fd9` |
| GET | `/cas/biz/v1/task/status` | [TaskStatusHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe96020` |
| POST | `/cas/biz/v1/task/pause` | [PauseNavigationHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe96067` |
| POST | `/cas/biz/v1/task/resume` | [ResumeNavigationHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe960ae` |
| POST | `/cas/biz/v1/task/cancel` | [CancelNavigationHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe960f5` |
| GET | `/cas/biz/v1/task/auto/status` | [GetAutoTaskScheduleStatusHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe96140` |
| POST | `/cas/biz/v1/task/auto` | [AutoTaskScheduleHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe96187` |
| POST | `/cas/biz/v1/task/auto/stop` | [StopAutoTaskScheduleHandler](backend/biz/controller/task_controller.pseudo.c) | `0xe961ce` |
| POST | `/cas/biz/v1/task-chain/new` | [NewTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe96240` |
| DELETE | `/cas/biz/v1/task-chain/del` | [DeleteTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe96287` |
| POST | `/cas/biz/v1/task-chain/alter` | [UpdateTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe962ce` |
| GET | `/cas/biz/v1/task-chain` | [GetAllTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe9630d` |
| POST | `/cas/biz/v1/task-chain/exc` | [ExcTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe96352` |
| GET | `/cas/biz/v1/task-chain/status` | [TaskChainStatusHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe963a0` |
| POST | `/cas/biz/v1/task-chain/pause` | [PauseTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe963e7` |
| POST | `/cas/biz/v1/task-chain/resume` | [ResumeTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe9642e` |
| POST | `/cas/biz/v1/task-chain/cancel` | [CancelTaskChainHandler](backend/biz/controller/task_chain_controller.pseudo.c) | `0xe96475` |
| POST | `/cas/biz/v1/traffic/monitor-push` | [MonitorTrafficPushHandler](backend/biz/controller/monitor_traffic_controller.pseudo.c) | `0xe964e4` |
| POST | `/cas/biz/v1/vehicle/new` | [NewVehHandler](backend/biz/controller/vehicle_controller.pseudo.c) | `0xe96551` |
| DELETE | `/cas/biz/v1/vehicle/del` | [DeleteVehHandler](backend/biz/controller/vehicle_controller.pseudo.c) | `0xe965a0` |
| POST | `/cas/biz/v1/vehicle/alter` | [UpdateVehHandler](backend/biz/controller/vehicle_controller.pseudo.c) | `0xe965e7` |
| GET | `/cas/biz/v1/vehicle/` | [GetAllVehHandler](backend/biz/controller/vehicle_controller.pseudo.c) | `0xe9662b` |
| GET | `/cas/biz/v1/vehicle/runtime/ws` | [VehicleRuntimeWSHandler](backend/biz/controller/vehicle_runtime_stream_controller.pseudo.c) | `0xe96672` |
| POST | `/cas/biz/v1/vehicle/runtime-push` | [VehicleRuntimePushHandler](backend/biz/controller/vehicle_runtime_controller.pseudo.c) | `0xe966c0` |
| POST | `/cas/biz/v1/control/forward` | [Move_forword](backend/biz/controller/control_controller.pseudo.c) | `0xe9672f` |
| POST | `/cas/biz/v1/control/take-control` | [Qiangzhan](backend/biz/controller/control_controller.pseudo.c) | `0xe96780` |
| POST | `/cas/biz/v1/control/release-control` | [Shifang](backend/biz/controller/control_controller.pseudo.c) | `0xe967c7` |
| POST | `/cas/biz/v1/control/backward` | [Move_back](backend/biz/controller/control_controller.pseudo.c) | `0xe9680e` |
| POST | `/cas/biz/v1/control/left` | [Turn_left](backend/biz/controller/control_controller.pseudo.c) | `0xe96855` |
| POST | `/cas/biz/v1/control/right` | [Turn_right](backend/biz/controller/control_controller.pseudo.c) | `0xe968a0` |
| POST | `/cas/biz/v1/control/lift` | [Huocha_up](backend/biz/controller/control_controller.pseudo.c) | `0xe968e7` |
| POST | `/cas/biz/v1/control/hcset` | [Huocha_set](backend/biz/controller/control_controller.pseudo.c) | `0xe9692e` |
| POST | `/cas/biz/v1/control/lower` | [Huocha_down](backend/biz/controller/control_controller.pseudo.c) | `0xe96975` |
| POST | `/cas/biz/v1/control/guiling` | [Guiling](backend/biz/controller/control_controller.pseudo.c) | `0xe969c0` |
| POST | `/cas/biz/v1/control/relocation` | [Chongdingwei](backend/biz/controller/control_controller.pseudo.c) | `0xe96a07` |
| POST | `/cas/biz/v1/control/stop` | [Ruanjiting](backend/biz/controller/control_controller.pseudo.c) | `0xe96a4e` |
| POST | `/cas/biz/v1/control/translate` | [Pingdong](backend/biz/controller/control_controller.pseudo.c) | `0xe96a95` |
| POST | `/cas/biz/v1/control/rotate` | [Zhuandong](backend/biz/controller/control_controller.pseudo.c) | `0xe96ae0` |
| POST | `/cas/biz/v1/control/arcMove` | [Yuanhuyundong](backend/biz/controller/control_controller.pseudo.c) | `0xe96b27` |
| POST | `/cas/biz/v1/control/manurelocation` | [ChongdingweiManu](backend/biz/controller/control_controller.pseudo.c) | `0xe96b6e` |
| POST | `/cas/biz/v1/map/new` | [StartMap](backend/biz/controller/control_controller.pseudo.c) | `0xe96be0` |
| POST | `/cas/biz/v1/map/stopnew` | [StopMap](backend/biz/controller/control_controller.pseudo.c) | `0xe96c27` |
| GET | `/cas/biz/v1/map/stream` | [MapStream](backend/biz/controller/control_controller.pseudo.c) | `0xe96c6e` |
| POST | `/cas/biz/v1/map/del` | [DeleteMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96cb3` |
| POST | `/cas/biz/v1/map/alter` | [UpdateMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96d00` |
| GET | `/cas/biz/v1/map/` | [GetAllMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96d44` |
| GET | `/cas/biz/v1/map/overview` | [GetOverviewMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96d8b` |
| GET | `/cas/biz/v1/map/file` | [GetMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96dd2` |
| POST | `/cas/biz/v1/map/push` | [Jieshoutuisong](backend/biz/controller/map_controller.pseudo.c) | `0xe96e20` |
| POST | `/cas/biz/v1/map/query` | [QMapRHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96e67` |
| POST | `/cas/biz/v1/map/save` | [DownloadMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96eae` |
| POST | `/cas/biz/v1/map/upload` | [UploadMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96ef5` |
| POST | `/cas/biz/v1/map/load` | [LoadMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96f40` |
| POST | `/cas/biz/v1/map/uploadload` | [UploadLoadMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96f87` |
| POST | `/cas/biz/v1/map/list` | [QMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe96fce` |
| POST | `/cas/biz/v1/map/delete` | [DelVehMapHandler](backend/biz/controller/map_controller.pseudo.c) | `0xe97015` |
