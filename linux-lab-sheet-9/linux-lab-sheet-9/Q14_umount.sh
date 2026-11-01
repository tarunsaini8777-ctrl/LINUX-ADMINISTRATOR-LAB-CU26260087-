#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q14
# Unmount /mnt/labdisk using umount and verify that the file system is no
# longer mounted.
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

sudo umount /mnt/labdisk                 # use the mount POINT (or the device)

# VERIFY
findmnt /mnt/labdisk || echo "/mnt/labdisk is NOT mounted"
mount | grep labdisk || echo "not in the mount list"
df -h /mnt/labdisk | tail -1             # now shows the parent filesystem
ls -la /mnt/labdisk                      # empty directory (testfile.txt is safe inside disk1.img)
lsblk | grep loop || echo "no loop device attached any more"
