#!/bin/bash
# Linux Lab 10: File Systems
# Q12
# Verify the syntax and test the /etc/fstab entry without rebooting by using
# the appropriate mount command.
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

# --- helper: make sure the lab fstab entry exists (only ever touches the line tagged LAB10-TEST) ---
UUID=$(sudo blkid -s UUID -o value "$DEV")
[ -f ~/lab10/fstab.orig ] || sudo cp -a /etc/fstab ~/lab10/fstab.orig       # backup of the ORIGINAL fstab
grep -q "LAB10-TEST" /etc/fstab || echo "UUID=$UUID  /mnt/labfs  ext4  defaults,nofail  0  2  # LAB10-TEST" | sudo tee -a /etc/fstab >/dev/null
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null

# --- helper: make sure /mnt/labfs is NOT mounted ---
findmnt -rn /mnt/labfs >/dev/null && sudo umount /mnt/labfs

sudo mkdir -p /mnt/labfs

echo "--- 1. Check fstab syntax / devices ---"
sudo findmnt --verify                    # reports problems (warnings about other entries may appear)

echo "--- 2. Dry run (fake mount, nothing is mounted) ---"
sudo mount -fav | grep labfs

echo "--- 3. Real test: mount everything listed in fstab ---"
sudo mount -a                            # an error here means a mistake in fstab
findmnt /mnt/labfs && echo "fstab entry works"
