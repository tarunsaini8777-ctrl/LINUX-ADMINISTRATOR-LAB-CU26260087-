#!/bin/bash
# Linux Lab 10: File Systems
# Q13
# Reboot or remount the test system as appropriate and verify that the file
# system is automatically mounted according to /etc/fstab.
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

echo "--- Not mounted now ---"
findmnt /mnt/labfs || echo "/mnt/labfs is not mounted"

# 'Remount' instead of reboot: mount -a mounts every fstab entry that is not mounted
sudo mount -a
echo "--- After mount -a ---"
findmnt /mnt/labfs && echo "Automatically mounted according to /etc/fstab"

# REAL REBOOT (only on a VM with a REAL dedicated partition):  sudo reboot ; then: findmnt /mnt/labfs
# With our virtual disk the loop device disappears after a reboot (and 'nofail' lets the system boot anyway).
# To bring it back:  sudo losetup -f --show ~/lab10/labfs.img  &&  sudo mount -a
