#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q1
# Display the mounted file systems and their disk-space usage using df.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
df                    # sizes in 1K blocks
df -T                 # also show the filesystem type
df -a | head -15      # include pseudo filesystems
