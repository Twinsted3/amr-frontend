# CAS 后端恢复包

原版 `cas-backend.exe` 用 Go 1.23.8 编译。入口 `main.main` 加载 `static/dist`，初始化 Gin 路由和调度模块，最后监听 `:8080`。这里提供了从该版本导出的后端伪代码，以及可独立编译运行的部分 Go 实现。

## 直接使用查询后端

在本目录运行下面的 PowerShell 命令。程序默认从上一级目录的 `data/amr.db` 只读打开交付数据库，监听本机 18080 端口。

```powershell
.\cas-readapi.exe
```

在另一个 PowerShell 窗口查询，也可以把 URL 粘贴到浏览器。接口返回 JSON。要退出，在启动程序的窗口按 Ctrl+C。

```powershell
Invoke-RestMethod 'http://127.0.0.1:18080/cas/biz/v1/map/?page=1&size=5'
```

| 数据 | GET 路径 | 查询参数 |
| --- | --- | --- |
| 地图 | `/cas/biz/v1/map/` | `page`、`size`、`search`。默认返回全部 |
| 车辆 | `/cas/biz/v1/vehicle/` | `page`、`size`、`search`、`ip`、`port` |
| 任务 | `/cas/biz/v1/task` | `page`、`size`、`search`、`status`、`priority` |
| 任务链 | `/cas/biz/v1/task-chain` | `page`、`size`、`search` |

用 `-db` 指定其他 SQLite 文件，用 `-port` 指定端口。原版和查询版可分别使用 8080 和 18080。查询版只实现表中的四条 GET 接口。登录、页面托管、任务下发、实时通信及车辆操作由原版提供。

## 修改和编译

HTTP 处理、搜索条件和 SQL 在 [main.go](readapi/main.go)，响应结构和 JSON 字段在 [models.go](readapi/models.go)。这部分根据原版控制器、DAO 指令和 Go 类型信息重新编写，采用 Go 标准 HTTP 库和可直接编译到 Windows 的 SQLite 驱动。为了兼容页面，地图、车辆、任务响应沿用了原版的 `sucess` 拼写，任务链使用 `success`。

使用 Go 1.23.8 进入 `readapi` 后执行以下命令。首次构建需要获取 `go.mod` 所列依赖。构建输出使用单独的文件名。

```powershell
cd .\readapi
go test ./...
go build -trimpath -o ..\cas-readapi.exe .
```

[pathplan.go](readapi/diapdu/pathplan.go) 提供可单独调用的 `PlanStationPath` 和 `StraightLineTaskDistance`。前者接受站点、带距离的边及途经点，后者计算车到取货点再到送货点的两段直线距离。该包重建了原版静态路网分支。多车占用、避让和实际下发仍在反编译结果中。图中存在多条等长最短路径时，具体站点序列可能随 Go 的映射遍历顺序变化。

## 查找 8080 页面的业务代码

从 [路由清单](routes.md) 选择 API，可跳到对应控制器文件，用处理函数名定位函数体。[业务路由 Go 参考代码](go-reference/biz/router/business_routes.go) 还原了 73 次注册。其中 64 次传入具名处理函数，9 次的专属处理函数数量为零。此参考文件用于恢复原项目的 Gin 路由，依赖原项目的 controller 包。

| 想查的功能 | 对应文件 |
| --- | --- |
| 程序入口、配置、启动顺序和监听地址 | [main.pseudo.c](backend/cmd/main.pseudo.c) |
| 页面托管、HTTP 路由和中间件 | [router.pseudo.c](backend/biz/router/router.pseudo.c) |
| 地图查询与管理 | [map_controller.pseudo.c](backend/biz/controller/map_controller.pseudo.c) 和 [map_dao.pseudo.c](backend/biz/dao/map_dao.pseudo.c) |
| 任务接口、任务链和自动分配 | [task_controller.pseudo.c](backend/biz/controller/task_controller.pseudo.c)、[task_chain_controller.pseudo.c](backend/biz/controller/task_chain_controller.pseudo.c) 和 [taskservice.pseudo.c](backend/pkg/diapdu/taskservice.pseudo.c) |
| 路径规划与多车交通管理 | [pathplan.pseudo.c](backend/pkg/diapdu/pathplan.pseudo.c)、[traffic.pseudo.c](backend/pkg/diapdu/traffic.pseudo.c) 和 [traffic_dynamic.pseudo.c](backend/pkg/diapdu/traffic_dynamic.pseudo.c) |
| 车辆管理与底层通信 | [vehicle_controller.pseudo.c](backend/biz/controller/vehicle_controller.pseudo.c) 和 [agvcontrol 目录](backend/pkg/agvcontrol/) |
| 浏览器实际加载的网页文件 | [static/dist](static/dist/) 中原样提取的 HTML、JS、CSS、图片和默认地图 |

[函数索引](functions.json) 收录 `main` 和 `CAS-Backend/` 命名空间下可独立定位的 475 个函数，含编译器生成的包装函数。各函数有虚拟地址、调试信息提供的参数与局部变量、伪代码和汇编路径。[内联索引](inlined-functions.json) 记录了另外可定位到调用点的内联信息。[结构体索引](structs.json) 收录 84 个结构，包含字段名、类型、偏移及可提取的标签。

`.pseudo.c` 供阅读，仍带有 Go 运行时调用和反编译器推断的类型。核对分支、参数或常量时，可以打开同目录、同名的 `.asm`，其中保留了原指令字节、调用名、源文件名和行号。仅凭这些文件无法直接重新编译整套厂商 Go 工程。网页目录同样是当时交付的构建产物。

## 验证与原版标识

- 8 个网页文件的内容均已与 Go 嵌入表中的校验值核对。475 个函数的伪代码均有对应的原始指令清单。
- 查询版通过了临时 SQLite 库的分页、搜索、字段映射、空结果及只读测试。实测本包的数据库，四个接口返回的总数是地图 24、车辆 1、任务 20、任务链 1，与直接 SQL 查询一致。验证前后数据库的 SHA-256 一致。
- 离线路径规划通过了途经点拼接、反向经过可通行边、禁用边、无效站点和距离计算测试。Go 测试和 `go vet` 均已通过。此次没有运行原版调度程序进行逐接口对测，也没有连接实车。
- 原 EXE 的 SHA-256 为 `31b7d75a42390436a33df3a45e7cccc16fdd8a452fd51d739c1c8693542d7653`。二进制记录了 Git 提交 `2bfca750b8a524071300485c82f2593229294315` 和 `vcs.modified=true`。向交付方索要完整源码时，应同时索取该提交和构建时工作区的改动。[原始构建信息](build-info.txt)
