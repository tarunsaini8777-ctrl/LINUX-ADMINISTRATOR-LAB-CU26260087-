#!/bin/bash
# Linux Lab 10: File Systems
# Q16
# Run an appropriate file-system checking command on the dedicated test file
# system after it has been safely unmounted.
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

# --- helper: make sure /mnt/labfs is NOT mounted ---
findmnt -rn /mnt/labfs >/dev/null && sudo umount /mnt/labfs

# Only check a filesystem that is UNMOUNTED
sudo fsck -N "$DEV"                      # -N = dry run: shows what would be executed

sudo fsck.ext4 -f -p "$DEV"              # -f = force a full check, -p = repair safe problems automatically
                                         # (same as: sudo e2fsck -fp "$DEV"; omit -p for interactive prompts, -y = answer yes to all)
echo "fsck exit status: $?"

# Exit codes: 0 = no errors | 1 = errors corrected | 2 = reboot needed | 4 = errors left uncorrected | 8 = operational error
# Read-only check (never modifies anything):  sudo fsck.ext4 -fn "$DEV"
