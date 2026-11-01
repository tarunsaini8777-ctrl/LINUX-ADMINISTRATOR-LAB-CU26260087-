#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q7
# Use lsblk to identify the disk names, partition names, sizes, types and
# mount points on the system.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
lsblk -o NAME,TYPE,SIZE,MOUNTPOINTS
lsblk -p -o NAME,TYPE,SIZE,MOUNTPOINTS        # full device paths (/dev/...)

# COLUMNS:
#   NAME = disk/partition name (sda, sda1, nvme0n1p1, vda ...)
#   TYPE = disk, part (partition), loop, rom, lvm ...
#   SIZE = capacity               MOUNTPOINTS = where it is mounted (blank = not mounted)
