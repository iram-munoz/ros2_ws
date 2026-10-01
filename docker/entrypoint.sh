#!/bin/bash
# First thing that runs in the container: loads ROS 2 and the workspace,
# then executes whatever command was requested (CMD or docker compose "command").
set -e

source /opt/ros/lyrical/setup.bash
if [ -f /ws/install/setup.bash ]; then
  source /ws/install/setup.bash
fi

exec "$@"
