#!/bin/bash
# Linux Lab 10: File Systems
# Q1
# Display the available block devices and identify a dedicated test partition
# that can be used for file-system practice.
# (Safe lab: only a VIRTUAL disk - a file attached as a loop device - is formatted; fstab edits are tagged and reversible.)

# ---------- Solution ----------
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

# RULE: only use a device that is NOT mounted and holds no data you need.
# Devices with a MOUNTPOINT of / , /boot or /home are SYSTEM disks - never touch them.

# SAFE test device for this lab = a VIRTUAL disk (a 200 MB file attached as a loop device)

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

echo "--- Test device now visible ---"
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS "$DEV"
# On a VM with a spare 2nd disk you could use e.g. /dev/sdb1 instead (check lsblk twice!).
