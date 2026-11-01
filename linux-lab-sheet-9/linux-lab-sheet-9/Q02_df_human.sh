#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q2
# Display disk-space usage in human-readable format using df and identify the
# filesystem, total, used, available and mounted-on fields.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
df -h
df -hT                # with filesystem type
df -h /home           # only the filesystem that contains /home

# FIELDS:
#   Filesystem = device or filesystem name     Size  = total size
#   Used       = space in use                  Avail = space available
#   Use%       = percentage used               Mounted on = mount point (directory)
