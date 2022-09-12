# Setting up LXD

```bash
sudo snap install lxd
snap info lxd
lxd init
# default for all is ok

# enter root and update ip tables, otherwise containers don't get network
sudo -i
for ipt in iptables iptables-legacy ip6tables ip6tables-legacy; do $ipt --flush; $ipt --flush -t nat; $ipt --delete-chain; $ipt --delete-chain -t nat; $ipt -P FORWARD ACCEPT; $ipt -P INPUT ACCEPT; $ipt -P OUTPUT ACCEPT; done
systemctl reload snap.lxd.daemon

# setup x11 profiles, check which display is used
echo $DISPLAY
lxc profile create x11
lxc profile edit x11 < ~/.config/aaron/lxd/profiles/x11.profile

# if something graphical doesn't work, try adding this to bashrc
LIBGL_ALWAYS_SOFTWARE=1

# launch with profile and privileged
lxc launch ubuntu:20.04 --profile default --profile x11 rmfgalactic -c security.privileged=true
lxc config set rmfgalactic security.nesting true

# share directories, must be privileged
lxc config device add priv homedir disk source=/home/$USER path=/home/ubuntu

# Snapshot, export to a tarball in this directory
lxc snapshot CONTAINER_NAME
lxc publish CONTAINER_NAME/SNAPSHOT_NAME --alias my-export
lxc image export my-export .

# import
lxc image import TARBALL --alias my-export
lxc init my-export NEW-CONTAINER
```
