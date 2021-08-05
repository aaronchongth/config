#!/bin/bash

#==============================================================================
# Workspace
alias sws="source install/setup.bash"

function stws
{
  pushd $1 > /dev/null
  sws
  popd > /dev/null
}

alias cb="colcon build"
alias cbpu="colcon build --packages-up-to"
alias cbps="colcon build --packages-select"
alias cbmipu="colcon build --merge-install --packages-up-to"
alias cbmips="colcon build --merge-install --packages-select"
alias ct="colcon test"
alias ctps="colcon test --packages-select"
alias ctmips="colcon test --merge-install --packages-select"

function delb
{
  for pkg in "$@"
  do
    [[ ! -d build/$pkg ]] && echo "build/${pkg} does not exist."
    rm -rf build/$pkg
  done
}

function deli
{
  for pkg in "$@"
  do
    [[ ! -d install/$pkg ]] && echo "install/${pkg} does not exist."
    rm -rf install/$pkg
  done
}

function delbi
{
  delb $@
  deli $@
}

#==============================================================================
# ROS
alias r1l="source /opt/ros/lunar/setup.bash"
alias r1m="source /opt/ros/melodic/setup.bash"
alias r1n="source /opt/ros/noetic/setup.bash"
alias r2d="source /opt/ros/dashing/setup.bash"
alias r2e="source /opt/ros/eloquent/setup.bash"
alias r2f="source /opt/ros/foxy/setup.bash"
alias r2g="source /opt/ros/galactic/setup.bash"
alias rr="source /opt/ros/rolling/setup.bash"

#==============================================================================
# rosdep
alias rosdep_install_call="rosdep install --from-paths src --ignore-src -yr"

function rosdep_install
{
  # $1 distro
  rosdep_install_call --rosdistro $1
}

#==============================================================================
# Middleware
alias rmwc="export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp"
alias rmwf="export RMW_IMPLEMENTATION=rmw_fastrtps_cpp"
export ROS_DOMAIN_ID=47

function ros2domain {
  # $1 domain ID
  export ROS_DOMAIN_ID=$1
}

#==============================================================================
# Turtlebot3
export TURTLEBOT3_MODEL="burger"
alias tb3b="export TURTLEBOT3_MODEL='burger'"
alias tb3w="export TURTLEBOT3_MODEL='waffle'"

#==============================================================================
# Simulation
alias killgazebo="pkill -9 gazebo && pkill -9 gzserver && pkill -9 gzclient"

#==============================================================================

