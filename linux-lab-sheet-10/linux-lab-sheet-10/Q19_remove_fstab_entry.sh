#!/bin/bash
# Linux Lab 10: File Systems
# Q19
# Unmount the test file system, remove the lab-specific /etc/fstab entry and
# verify that the system no longer attempts to mount it automatically.
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

# 1. Unmount
cd ~
findmnt -rn /mnt/labfs >/dev/null && sudo umount /mnt/labfs

# 2. Remove ONLY the tagged lab line
sudo sed -i '/LAB10-TEST/d' /etc/fstab
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null

# 3. Verify
grep LAB10-TEST /etc/fstab || echo "Lab entry removed from /etc/fstab"
sudo mount -a                            # nothing should be mounted for /mnt/labfs
findmnt /mnt/labfs || echo "/mnt/labfs is not mounted and will not be mounted automatically"
[ -f ~/lab10/fstab.orig ] && { diff ~/lab10/fstab.orig /etc/fstab && echo "/etc/fstab is identical to the original"; }
