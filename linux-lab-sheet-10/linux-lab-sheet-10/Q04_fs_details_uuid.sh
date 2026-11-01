#!/bin/bash
# Linux Lab 10: File Systems
# Q4
# Display detailed information about the newly created file system and
# identify its UUID.
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

sudo tune2fs -l "$DEV" | head -25        # superblock: Filesystem UUID, volume name, block size, counts, state
# sudo dumpe2fs -h "$DEV"                # same information (header only)

echo "--- UUID ---"
sudo blkid -s UUID -o value "$DEV"       # just the UUID
lsblk -no UUID "$DEV"
ls -l /dev/disk/by-uuid/ | grep "$(basename "$DEV")"
