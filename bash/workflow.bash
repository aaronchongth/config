#!/bin/bash

# git

function gitpullr
{
  # $1 path that contains all the git repositories
  # find $1 -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;
  find $1 -type d -name .git -print -exec git --git-dir={} --work-tree=$PWD/{}/.. pull \;
}

