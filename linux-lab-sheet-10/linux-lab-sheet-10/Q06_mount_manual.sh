#!/bin/bash
# Linux Lab 10: File Systems
# Q6
# Mount the newly created file system manually on /mnt/labfs and verify that
# it is mounted correctly.
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

sudo mkdir -p /mnt/labfs
sudo mount "$DEV" /mnt/labfs             # or: sudo mount -t ext4 "$DEV" /mnt/labfs

# VERIFY
findmnt /mnt/labfs
mount | grep labfs
lsblk -f "$DEV"                          # MOUNTPOINTS column shows /mnt/labfs
ls -la /mnt/labfs                        # contains lost+found
