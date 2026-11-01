#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q11
# Attach a suitable test storage device or partition to /mnt/labdisk and
# verify that it is mounted correctly.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# SAFE METHOD: use a VIRTUAL DISK = a 100 MB file formatted with ext4 and mounted as a loop device.
# No real disk is touched.
mkdir -p ~/lab9
sudo mkdir -p /mnt/labdisk

truncate -s 100M ~/lab9/disk1.img                       # create the 100 MB virtual disk file
sudo mkfs.ext4 -q -F -L LABDISK ~/lab9/disk1.img        # create an ext4 filesystem inside it
sudo mount -o loop ~/lab9/disk1.img /mnt/labdisk        # attach + mount

# VERIFY
findmnt /mnt/labdisk
mount | grep labdisk
df -h /mnt/labdisk
lsblk -f | grep -E 'NAME|loop'

# With a real, DEDICATED test USB disk/partition you would use (check lsblk first!):
#   sudo mount /dev/sdb1 /mnt/labdisk
