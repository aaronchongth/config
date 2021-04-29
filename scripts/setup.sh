#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install \
  gcc \
  cmake \
  make \
  wget \
  build-essentials \
  vim \
  git \
  unzip \
  snapd \
  openvpn \
  openssh-client \
  openssh-server \
  python3-vcstool \
  libeigen3-dev \
  htop \
  ffmpeg \
  silversearcher-ag \
  ripgrep \
  -y

# Setup ccache
sudo apt install ccache -y
sudo /usr/sbin/update-ccache-symlinks
echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc
source ~/.bashrc

