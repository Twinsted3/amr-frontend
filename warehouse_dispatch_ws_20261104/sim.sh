#!/usr/bin/env bash
set -eo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"
source scripts/env.sh
export ROS_DOMAIN_ID="${ROS_DOMAIN_ID:-81}"
export GZ_PARTITION="${GZ_PARTITION:-warehouse_complete_sim}"
case "${1:-help}" in
 setup-dispatch) exec python3 tools/install_dispatch_dependencies.py;;
 build) exec ./warehouse.sh build;;
 start)
   python3 -c 'import networkx' || { echo '请先 ./sim.sh setup-dispatch 安装调度依赖'; exit 1; }
   SIM_ROBOTS="${SIM_ROBOTS:-5}"
   case "$SIM_ROBOTS" in
     4) SIM_SOC_DEFAULT='0.65,0.65,0.10,0.65';;
     5) SIM_SOC_DEFAULT='0.65,0.65,0.10,0.65,0.65';;
     *) echo '当前演示支持 SIM_ROBOTS=4 或 5'; exit 2;;
   esac
   SIM_SOC_PROFILE="${SIM_SOC_PROFILE:-$SIM_SOC_DEFAULT}"
   SIM_ROUTE_MODE="${SIM_ROUTE_MODE:-whole_route}"
   case "$SIM_ROUTE_MODE" in
     whole_route) ;;
     segmented)
       if [ -z "${SIM_TRAFFIC_POLICY:-}" ]; then
         echo '分段预约需要 SIM_TRAFFIC_POLICY 配置等待点'; exit 1
       fi;;
     *) echo 'SIM_ROUTE_MODE 可选 whole_route 或 segmented'; exit 2;;
   esac
   export SIM_ROUTE_MODE
   if [ ! -f install/setup.bash ]; then echo '请先 ./sim.sh build'; exit 1; fi
   if [ -f .warehouse_run.pid ] && kill -0 "$(cat .warehouse_run.pid)" 2>/dev/null; then echo '已有会话，请先 ./sim.sh stop'; exit 1; fi
   SIM_SESSION="$PWD/runtime/sim_$(date +%Y%m%dT%H%M%S)_$$"
   if [ -n "${SIM_TRAFFIC_POLICY:-}" ] && [ ! -f "$SIM_TRAFFIC_POLICY" ]; then
     echo 'SIM_TRAFFIC_POLICY 应指向交通规则 JSON 文件'; exit 1
   fi
   mkdir -p "$SIM_SESSION"
   if [ -n "${SIM_TRAFFIC_POLICY:-}" ]; then
     cp -- "$SIM_TRAFFIC_POLICY" "$SIM_SESSION/traffic_policy.json"
     export SIM_TRAFFIC_POLICY="$SIM_SESSION/traffic_policy.json"
   fi
   printf '%s\n' "$SIM_SESSION" > .sim_session
   nohup ./warehouse.sh fleet-demo robots:="$SIM_ROBOTS" gui:="${GAZEBO_GUI:-false}" soc_profile:="$SIM_SOC_PROFILE" feedback_handling:=true demo_controls:=true auto_return:=true respawn_scheduler:=true durable_db:="$SIM_SESSION/dispatch.sqlite3" executor_db:="$SIM_SESSION/executor.sqlite3" actions_db:="$SIM_SESSION/actions.sqlite3" battery_db:="$SIM_SESSION/battery.sqlite3" > "$SIM_SESSION/launch.log" 2>&1 < /dev/null &
   echo "已启动独立仿真会话：$SIM_SESSION"
   echo "路权模式：$SIM_ROUTE_MODE"
   echo "已选择 $SIM_ROBOTS 台车；浏览器 http://<虚拟机IP>:8866/，可手动派单"
   echo '五车短检查：./sim.sh short-test；完整检查：./sim.sh fleet-test；四车主验收须另开 SIM_ROBOTS=4 会话';;
 fleet-test) exec python3 tools/five_robot_probe.py;;
 short-test) exec python3 tools/five_short_probe.py;;
 run) exec python3 tools/simulation_acceptance.py;;
 batch-test) exec python3 tools/batch_simulation_probe.py;;
 watchdog-test) exec python3 tools/simulation_fault_probe.py watchdog;;
 traffic-test) exec python3 tools/simulation_fault_probe.py traffic;;
 deadlock-test) shift; exec python3 tools/deadlock_probe.py "$@";;
 segment-test) shift; exec python3 tools/segment_traffic_probe.py "$@";;
 segment-pose-test) exec python3 tools/segment_pose_probe.py;;
 workstation-recovery-test) shift; exec python3 tools/workstation_recovery_probe.py "$@";;
 driver-test) exec python3 tools/simulation_fault_probe.py driver;;
 charge-test) exec python3 tools/simulation_fault_probe.py charge;;
 parallel-test) exec python3 tools/simulation_fault_probe.py parallel;;
 cancel-test) exec python3 tools/simulation_fault_probe.py cancel;;
 restart-scheduler) exec python3 tools/restart_scheduler.py;;
 submit) shift; exec python3 tools/submit_job.py "$@";;
 status) exec ros2 topic echo /dispatch/state --once;;
 stop) exec ./warehouse.sh stop;;
 *) echo './sim.sh build | start | short-test | fleet-test | run | batch-test | watchdog-test | driver-test | traffic-test | deadlock-test | segment-test | segment-pose-test | workstation-recovery-test | charge-test | parallel-test | cancel-test | restart-scheduler | status | submit JSON | stop';;
esac
