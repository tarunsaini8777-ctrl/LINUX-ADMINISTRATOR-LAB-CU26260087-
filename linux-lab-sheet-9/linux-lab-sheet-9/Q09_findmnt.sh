#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q9
# Identify the currently mounted file systems and their mount points using
# findmnt or an appropriate command.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
findmnt                                  # tree of all mounts
findmnt -D | head                        # df-like view (size, used, avail)
findmnt -t ext4,xfs,btrfs,vfat           # only real disk filesystems
findmnt /                                # details of the root filesystem
findmnt -T /home                         # filesystem that contains /home

mount | head -10                         # classic alternative
cat /proc/mounts | head -10              # kernel's list of mounts
