#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q8
# Display additional file-system information for block devices using an
# appropriate lsblk option.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
lsblk -f              # NAME FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
lsblk -o NAME,FSTYPE,LABEL,UUID,SIZE,FSAVAIL,FSUSE%,MOUNTPOINTS
sudo blkid            # UUID / TYPE / LABEL of every block device
