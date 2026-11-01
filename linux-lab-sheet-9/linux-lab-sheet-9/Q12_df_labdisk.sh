#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q12
# Display the disk-space usage of the mounted /mnt/labdisk file system using
# df.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# --- helper: make sure the virtual test disk (a file) is mounted on /mnt/labdisk (same as Q11) ---
IMG=~/lab9/disk1.img
MP=/mnt/labdisk
if ! findmnt -rn "$MP" >/dev/null; then
    sudo mkdir -p "$MP"
    mkdir -p ~/lab9
    if [ ! -f "$IMG" ]; then
        truncate -s 100M "$IMG"
        sudo mkfs.ext4 -q -F -L LABDISK "$IMG"
    fi
    sudo mount -o loop "$IMG" "$MP"
fi
# --------------------------------------------------------------------------------------------------

df -h /mnt/labdisk
df -hT /mnt/labdisk                      # includes the filesystem type (ext4)
df -i /mnt/labdisk                       # inode usage
