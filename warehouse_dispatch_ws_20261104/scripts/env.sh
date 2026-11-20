#!/usr/bin/env bash
# Source this file in each terminal used with this workspace.
WAREHOUSE_WS="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
source /opt/ros/kilted/setup.bash
if [ -d "$WAREHOUSE_WS/.dispatch-deps" ]; then
  export PYTHONPATH="$WAREHOUSE_WS/.dispatch-deps:${PYTHONPATH:-}"
fi
if [ -f "$WAREHOUSE_WS/install/setup.bash" ]; then
  source "$WAREHOUSE_WS/install/setup.bash"
fi
# Shared scheduling modules live alongside the ROS workspace in this checkout.
AMR_SOURCE_ROOT="$(cd -- "$WAREHOUSE_WS/.." && pwd)"
if [ ! -f "$AMR_SOURCE_ROOT/dispatch_core/__init__.py" ]; then
  echo '缺少同仓库的 dispatch_core 目录，请检出完整协作仓库。' >&2
  return 1
fi
export PYTHONPATH="$AMR_SOURCE_ROOT${PYTHONPATH:+:$PYTHONPATH}"
export FASTDDS_BUILTIN_TRANSPORTS=UDPv4
# VMware's default graphics path can produce empty GPU lidar frames. Use the
# verified software renderer unless the operator explicitly selects otherwise.
export LIBGL_ALWAYS_SOFTWARE="${LIBGL_ALWAYS_SOFTWARE:-1}"
export GZ_SIM_RESOURCE_PATH="$WAREHOUSE_WS/src/warehouse_sim/models:${GZ_SIM_RESOURCE_PATH:-}"
# API-launched shells may not inherit the desktop variables on Ubuntu GNOME.
if [ -z "${DISPLAY:-}" ] && [ -S /tmp/.X11-unix/X0 ]; then
  export DISPLAY=:0
fi
if [ -n "${DISPLAY:-}" ] && [ -z "${XAUTHORITY:-}" ]; then
  for WAREHOUSE_AUTH_FILE in "/run/user/$(id -u)"/.mutter-Xwaylandauth.*; do
    if [ -f "$WAREHOUSE_AUTH_FILE" ]; then
      export XAUTHORITY="$WAREHOUSE_AUTH_FILE"
      break
    fi
  done
  unset WAREHOUSE_AUTH_FILE
  if [ -z "${XAUTHORITY:-}" ] && [ -f "/run/user/$(id -u)/gdm/Xauthority" ]; then
    export XAUTHORITY="/run/user/$(id -u)/gdm/Xauthority"
  fi
fi
