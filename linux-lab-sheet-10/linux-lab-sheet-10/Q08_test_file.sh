#!/bin/bash
# Linux Lab 10: File Systems
# Q8
# Create a test file inside /mnt/labfs and verify that the file is stored on
# the mounted file system.
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

echo "File system lab test" | sudo tee /mnt/labfs/testfile.txt
ls -l /mnt/labfs

# VERIFY the file is on the mounted filesystem (not on the root disk)
df /mnt/labfs/testfile.txt               # Filesystem column = the loop device
findmnt -T /mnt/labfs/testfile.txt       # TARGET = /mnt/labfs
cat /mnt/labfs/testfile.txt
