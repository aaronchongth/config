#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function add_to_bashrc
{
  for s in $SCRIPT_DIR/*
  do
    echo $s
    echo "source $s" >> ~/.bashrc
  done
}

alias tnew="tmux new -s"
alias tatt="tmux attach -t"
alias tlist="tmux list-session"
