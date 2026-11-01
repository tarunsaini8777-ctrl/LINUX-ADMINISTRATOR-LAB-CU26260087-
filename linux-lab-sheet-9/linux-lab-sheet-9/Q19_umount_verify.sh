#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q19
# Unmount the practice file system and verify the mount point, device and
# partition information after unmounting.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# --- helper: attach the virtual practice disk (a 200 MB file) as a loop device ---
IMG=~/lab9/disk2.img
mkdir -p ~/lab9
[ -f "$IMG" ] || truncate -s 200M "$IMG"
LOOP=$(losetup -j "$IMG" | head -1 | cut -d: -f1)
[ -n "$LOOP" ] || LOOP=$(sudo losetup -fP --show "$IMG")
case "$LOOP" in
    /dev/loop*) ;;
    *) echo "SAFETY STOP: $LOOP is not a loop device. Never partition a real disk in this lab."; exit 1 ;;
esac
echo "Practice disk: $LOOP  (backed by $IMG)"
PART=${LOOP}p1
# ---------------------------------------------------------------------------------

findmnt -rn /mnt/labdisk >/dev/null && sudo umount /mnt/labdisk

echo "--- Mount point ---"
findmnt /mnt/labdisk || echo "/mnt/labdisk is not mounted"
ls -la /mnt/labdisk                       # empty directory

echo "--- Device and partition still exist ---"
lsblk "$LOOP"                             # MOUNTPOINTS column is empty now
ls -l "$LOOP" "$PART"
sudo fdisk -l "$LOOP" | tail -4           # partition table unchanged
sudo blkid "$PART"                        # filesystem (ext4, LABEL=LABDISK) is still there
