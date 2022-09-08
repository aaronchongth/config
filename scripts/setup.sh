#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get install \
  build-essential \
  clang \
  cmake \
  curl \
  ffmpeg \
  gcc \
  git \
  gimp \
  htop \
  libeigen3-dev \
  make \
  meld \
  openssh* \
  openvpn* \
  python3-vcstools \
  ripgrep \
  silversearcher-ag \
  snapd \
  terminator \
  unzip \
  vim \
  vlc \
  wget \
  -y

# Setup Snap
sudo snap install \
  keepassxc \
  lxd \
  notion-snap \
  telegram-desktop \
  todoist \
  whatsie

# Setup ccache
sudo apt install ccache -y
sudo /usr/sbin/update-ccache-symlinks
echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc
source ~/.bashrc

