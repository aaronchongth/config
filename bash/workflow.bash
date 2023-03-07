#!/bin/bash

#==============================================================================
# git

function gitpullr
{
  # $1 path that contains all the git repositories
  # find $1 -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;
  find $1 -type d -name .git -print -exec git --git-dir={} --work-tree=$PWD/{}/.. pull \;
}

#==============================================================================
# vim

export FZF_DEFAULT_OPTS='-m --height 50% --border'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

#==============================================================================
# Wireguard

alias wg0_up='sudo wg-quick up wg0'
alias wg0_down='sudo wg-quick down wg0'

#==============================================================================
# Environment variables

function add_to_ld
{
  # $1 path to be added
  export LD_LIBRARY_PATH="$(realpath $1)${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
}

function add_to_path
{
  # $1 path to be added
  export PATH="$(realpath $1)${PATH:+:${PATH}}"
}

#==============================================================================
# tmux

alias tnew="tmux new -s"
alias tatt="tmux attach -t"
alias tlist="tmux list-session"
alias tshowb="tmux show-buffer"
alias tsaveb="tmux save-buffer "
