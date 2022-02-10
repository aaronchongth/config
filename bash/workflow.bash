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
alias wg0_up_persistent='sudo systemctl enable wg-quick@wg0'
alias wg0_down_persistent='sudo systemctl disable wg-quick@wg0'
