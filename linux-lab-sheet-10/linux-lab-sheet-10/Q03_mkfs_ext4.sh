#!/bin/bash
# Linux Lab 10: File Systems
# Q3
# Create an ext4 file system on a dedicated test partition using mkfs and
# verify the file-system creation.
# (Safe lab: only a VIRTUAL disk - a file attached as a loop device - is formatted; fstab edits are tagged and reversible.)

# ---------- Solution ----------
# --- helper: attach the VIRTUAL test disk (a 200 MB file) as a loop device ---
IMG=~/lab10/labfs.img
mkdir -p ~/lab10
[ -f "$IMG" ] || truncate -s 200M "$IMG"
DEV=$(losetup -j "$IMG" | head -1 | cut -d: -f1)
[ -n "$DEV" ] || DEV=$(sudo losetup -f --show "$IMG")
case "$DEV" in
    /dev/loop*) ;;
    *) echo "SAFETY STOP: $DEV is not a loop device. Never use a real disk in this lab."; exit 1 ;;
esac
echo "Test device: $DEV  (backed by $IMG)"

# WARNING: mkfs destroys all data on the device. Here it is only our virtual disk.
sudo mkfs.ext4 -L LABFS "$DEV"           # same as: sudo mkfs -t ext4 -L LABFS "$DEV"

# VERIFY
sudo blkid "$DEV"                        # TYPE="ext4" LABEL="LABFS" UUID=...
lsblk -f "$DEV"
sudo file -s "$DEV"                      # 'Linux rev 1.0 ext4 filesystem data ...'
