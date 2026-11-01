#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q6
# Display all available block devices, disks and partitions using lsblk.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
lsblk                 # tree of disks and partitions
lsblk -a              # include empty devices
