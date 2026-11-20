# AMR 仿真调度工程

四／五台 Gazebo 叉车、ROS 2 调度、Nav2、充电和工位仿真。ROS 2 Kilted 与对应的 Gazebo、Nav2、colcon 等依赖需预先安装。Windows 控制台位于上一级的 console。

从本目录执行。

    ./sim.sh setup-dispatch
    ./sim.sh build
    SIM_ROBOTS=4 ./sim.sh start

Ubuntu 状态和任务 API 使用 8866 端口。在 Windows 8082 的「车队运行」填入实际仿真主机地址。详见[手动操作指南](../手动操作指南.md)。
