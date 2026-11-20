# amr-frontend
AMR Intelligent Chache Server frontend code

## AMR 联合开发基线

- `console/field/` 保存实车 8081 的页面、导航配置和车况连接规则。
- `console/sim/` 保存仿真 8082 的页面、ROS 调度接口转发和演示样本。
- `console/common/` 保存共用页面框架、地图编辑器、数据库和车况解析。
- `dispatch_core/` 保存可独立测试的选车匹配和优先级策略。
- `warehouse_dispatch_ws_20261104/` 保存 ROS 2、Nav2、Gazebo 和仿真执行。启动仿真时需要同仓库的 `dispatch_core/`。
- 实车控制及任务执行接口待接入，实车管理和仿真执行使用不同部署。
- 运行见[手动操作指南](手动操作指南.md)，设计见[调度算法说明](调度算法说明.md)，验收进度见[当前项目情况与阶段目标](当前项目情况与阶段目标.md)。
