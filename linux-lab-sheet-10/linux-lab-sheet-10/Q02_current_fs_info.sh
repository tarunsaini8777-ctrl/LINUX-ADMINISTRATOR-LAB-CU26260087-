#!/bin/bash
# Linux Lab 10: File Systems
# Q2
# Display the current file-system type, UUID and mount-point information for
# the selected test partition.
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

lsblk -f "$DEV"                          # FSTYPE, LABEL, UUID, MOUNTPOINTS
sudo blkid "$DEV" || echo "No filesystem signature yet (blank device) - created in Q3"
findmnt -S "$DEV" || echo "$DEV is not mounted"

echo "--- For comparison: the root filesystem ---"
findmnt -o SOURCE,TARGET,FSTYPE,UUID /
