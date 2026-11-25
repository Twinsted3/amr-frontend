# amr-frontend
AMR Intelligent Chache Server frontend code

## 百台轻量仿真协作版

本版交接包目录为 `amr-dispatch-forklift-fleet100-20261123`。从仓库根目录或解压后的该目录执行。联测回放不依赖 ROS 或本地历史数据库。

```powershell
python console/app.py --mode sim --lightweight --port 18086 --db runtime/fleet-replay-demo/maps.sqlite3 --fleet-replay docs/evidence/forklift-fleet100-20261123/forklift-replay-100.json --open-browser
```

浏览器进入「百台联测回放」，可按事件查看共享路网、六车死锁恢复、断联重启和满桩等待。本版在两套轻量仿真来单中各完成 317 项任务。批量高峰全量 1 秒派单、充电效率提升 25% 和实车验收仍待完成。[联测报告](docs/evidence/forklift-fleet100-20261123/forklift-report-100.json)

## AMR 联合开发基线

- `console/field/` 保存实车 8081 的页面、导航配置和车况连接规则。
- `console/sim/` 保存仿真 8082 的页面、ROS 调度接口转发和演示样本。
- `console/common/` 保存共用页面框架、地图编辑器、数据库和车况解析。
- `dispatch_core/` 保存可独立测试的选车匹配和优先级策略。
- `warehouse_dispatch_ws_20261104/` 保存 ROS 2、Nav2、Gazebo 和仿真执行。启动仿真时需要同仓库的 `dispatch_core/`。
- 实车控制及任务执行接口待接入，实车管理和仿真执行使用不同部署。
- 运行见[手动操作指南](手动操作指南.md)，设计见[调度算法说明](调度算法说明.md)，验收进度见[当前项目情况与阶段目标](当前项目情况与阶段目标.md)。
