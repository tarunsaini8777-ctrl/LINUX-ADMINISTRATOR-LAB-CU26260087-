#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q10
# Create a dedicated directory named /mnt/labdisk to use as a mount point and
# verify its permissions and existence.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
sudo mkdir -p /mnt/labdisk

ls -ld /mnt/labdisk                      # expect: drwxr-xr-x root root
stat -c '%n | %A (%a) | owner=%U group=%G' /mnt/labdisk
[ -d /mnt/labdisk ] && echo "/mnt/labdisk exists"
