#!/bin/bash
# Linux Lab 10: File Systems
# Q17
# Demonstrate the difference between checking a mounted file system and
# checking an unmounted file system, using a dedicated test partition and
# appropriate precautions.
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

echo "=== A. MOUNTED filesystem ==="
sudo e2fsck -f "$DEV"                    # REFUSES: 'is mounted ... Cannot continue, aborting.'
echo "--- read-only (-n) check of a mounted fs: allowed but may show FALSE errors ---"
sudo e2fsck -fn "$DEV" 2>&1 | head -8

echo "=== B. UNMOUNTED filesystem ==="
cd ~
sudo umount /mnt/labfs
sudo e2fsck -f -p "$DEV"                 # full, reliable check; repairs safe problems automatically

# PRECAUTIONS:
#  * Never run a repairing fsck on a mounted filesystem - the kernel is changing it at the same time,
#    so repairs can corrupt data.  Always: backup -> umount -> fsck.
#  * Use -n first if unsure (it only reports).
#  * The root filesystem is checked at boot or from a rescue/live system.
