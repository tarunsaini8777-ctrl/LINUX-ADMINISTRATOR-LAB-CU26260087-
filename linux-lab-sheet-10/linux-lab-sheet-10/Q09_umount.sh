#!/bin/bash
# Linux Lab 10: File Systems
# Q9
# Unmount the test file system using umount and verify that /mnt/labfs is no
# longer an active mount point.
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

# --- helper: make sure the test device has an ext4 filesystem ---
sudo blkid -s TYPE -o value "$DEV" >/dev/null 2>&1 || sudo mkfs.ext4 -q -L LABFS "$DEV"

# --- helper: make sure /mnt/labfs exists and the test filesystem is mounted on it ---
sudo mkdir -p /mnt/labfs
findmnt -rn /mnt/labfs >/dev/null || sudo mount "$DEV" /mnt/labfs

cd ~                                     # never stay inside the mount point
sudo umount /mnt/labfs                   # or: sudo umount "$DEV"

# VERIFY
findmnt /mnt/labfs || echo "/mnt/labfs is NOT an active mount point"
mount | grep labfs || echo "not in the mount list"
ls -la /mnt/labfs                        # empty directory again (data is safe inside the image)
