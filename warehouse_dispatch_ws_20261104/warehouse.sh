#!/usr/bin/env bash
set -eo pipefail
WAREHOUSE_WS="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$WAREHOUSE_WS"
source scripts/env.sh
action="${1:-help}"
if [ "$#" -gt 0 ]; then shift; fi
if [ "$action" = build ]; then
  exec colcon build --symlink-install --packages-select warehouse_safety forklift_description warehouse_sim "$@"
fi
if [ "$action" = stop ]; then
  exec python3 tools/stop_warehouse.py
fi
if [ "$action" != help ] && [ ! -f install/setup.bash ]; then
  echo "请先运行 ./warehouse.sh build" >&2
  exit 1
fi
case "$action" in
  fleet-demo|demo|sim|mapping)
    if [ -f .warehouse_run.pid ]; then
      WAREHOUSE_OLD_PID="$(cat .warehouse_run.pid)"
      if kill -0 "$WAREHOUSE_OLD_PID" 2>/dev/null; then
        echo "已有仓库仿真运行，请先执行 ./warehouse.sh stop" >&2
        exit 1
      fi
    fi
    python3 tools/stop_warehouse.py --clean-orphans
    printf '%s\n' "$$" > .warehouse_run.pid
    if [ "$action" = fleet-demo ]; then exec ros2 launch warehouse_sim fleet_demo.launch.py "$@"; fi
    if [ "$action" = demo ]; then exec ros2 launch warehouse_sim demo.launch.py "$@"; fi
    if [ "$action" = sim ]; then exec ros2 launch warehouse_sim warehouse.launch.py robots:=2 gui:=true "$@"; fi
    exec ros2 launch warehouse_sim mapping.launch.py "$@"
    ;;
  nav) exec ros2 launch warehouse_sim navigation.launch.py robots:=2 "$@" ;;
  full-nav) exec ros2 launch warehouse_sim navigation_full.launch.py "$@" ;;
  dispatch) exec ros2 launch warehouse_sim dispatcher.launch.py robots:=2 "$@" ;;
  editor) exec python3 tools/warehouse_smap_editor/server.py "$@" ;;
  task) exec ros2 run warehouse_sim send_task "$@" ;;
  patrol) exec ros2 run warehouse_sim mapping_patrol "$@" ;;
  save-map) exec ros2 run warehouse_sim save_slam_map --output "$WAREHOUSE_WS/src/warehouse_sim/maps/warehouse_slam" "$@" ;;
  test) exec python3 -m unittest discover -s tests -v "$@" ;;
  help|*)
    cat <<'HELP'
用法：./warehouse.sh 命令 [参数]
  build                         编译
  demo [gui:=false]             复杂仓库 + 两台车 + Nav2 + 调度器
  stop                          停止由此脚本启动的仿真
  editor                        编辑新仓库站点与路线
  task agv01 AP_PICK_01          指定车辆去指定站点
  task agv01 A B C D            按顺序经过多个站点，最后到达 D
  mapping [gui:=false]           单车 29 点自动巡航建图（约 9 分钟）
  save-map                      保存并对齐 Cartographer 地图
  sim / nav / dispatch          分别启动仿真、路线导航、调度器
  full-nav                      启动完整 Nav2（默认单车）
  test                          运行路线与地图单元检查
HELP
    ;;
esac
