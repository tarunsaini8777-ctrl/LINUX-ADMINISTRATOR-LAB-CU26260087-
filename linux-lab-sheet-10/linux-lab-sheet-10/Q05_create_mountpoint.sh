#!/bin/bash
# Linux Lab 10: File Systems
# Q5
# Create a directory named /mnt/labfs to use as the mount point for the test
# file system.
# (Safe lab: only a VIRTUAL disk - a file attached as a loop device - is formatted; fstab edits are tagged and reversible.)

# ---------- Solution ----------
sudo mkdir -p /mnt/labfs

ls -ld /mnt/labfs                        # drwxr-xr-x root root
[ -d /mnt/labfs ] && echo "/mnt/labfs exists"
