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
alias cbmi="colcon build --merge-install"
alias cbmipu="colcon build --merge-install --packages-up-to"
alias cbmips="colcon build --merge-install --packages-select"
alias cbmipa="colcon build --merge-install --packages-above"
alias cbrel="colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release"
alias cbmirel="colcon build --merge-install --cmake-args -DCMAKE_BUILD_TYPE=Release"
alias cbrelpu="cbrel --packages-up-to"
alias cbrelps="cbrel --packages-select"
alias ct="colcon test"
alias ctps="colcon test --packages-select"
alias ctmips="colcon test --merge-install --packages-select"
alias ctmipa="colcon test --merge-install --packages-above"
alias ctr="colcon test-result"

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
alias r2h="source /opt/ros/humble/setup.bash"
alias r2r="source /opt/ros/rolling/setup.bash"
alias r2rs="source ~/workspaces/ros2_rolling/install/setup.bash"

#==============================================================================
# rosdep
alias rosdep_install_call="rosdep install --from-paths src --ignore-src -y"

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

#===============================================================================
# RMF
alias rmf="source ~/workspaces/rmf/install/setup.bash"
alias get_rmf_repos="wget https://raw.githubusercontent.com/open-rmf/rmf/main/rmf.repos"
alias run_dashboard="rmf && npm run start:react"
alias run_api_server="rmf && RMF_SERVER_USE_SIM_TIME=true python3 -m pipenv run python -m api_server"

function uncrustify
{
  source /opt/ros/galactic/setup.bash
  ament_uncrustify $1 -c ~/workspaces/repos/rmf_utils/rmf_utils/test/format/rmf_code_style.cfg --linelength 80
}

#==============================================================================
# sdformat
alias igncollections="git clone https://github.com/ignition-tooling/gazebodistro"
alias get_sdf12_repos="wget https://raw.githubusercontent.com/ignition-tooling/gazebodistro/master/sdformat12.yaml"
alias get_sdf13_repos="wget https://raw.githubusercontent.com/ignition-tooling/gazebodistro/master/sdformat13.yaml"

#==============================================================================
# drake

function denv
{
  # $1 drake env name
  source $1/bin/activate
  export LD_LIBRARY_PATH="$(realpath $1)/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
}
