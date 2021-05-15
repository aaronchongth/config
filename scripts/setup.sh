#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install \
  build-essentials \
  cmake \
  curl \
  ffmpeg \
  gcc \
  git \
  htop \
  libeigen3-dev \
  make \
  openssh* \
  openvpn \
  python3-vcstool \
  ripgrep \
  silversearcher-ag \
  snapd \
  unzip \
  vim \
  wget \
  -y

# Setup ccache
sudo apt install ccache -y
sudo /usr/sbin/update-ccache-symlinks
echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc
source ~/.bashrc

