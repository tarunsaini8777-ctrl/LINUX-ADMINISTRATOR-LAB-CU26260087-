#!/bin/bash
# Linux Lab 10: File Systems
# Q11
# Add an entry for the dedicated test file system to /etc/fstab using its UUID
# and an appropriate mount point.
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

UUID=$(sudo blkid -s UUID -o value "$DEV")
echo "UUID of $DEV = $UUID"

# 1. BACK UP fstab first - a wrong fstab can stop a system from booting normally
sudo cp -a /etc/fstab ~/lab10/fstab.orig 2>/dev/null || { mkdir -p ~/lab10; sudo cp -a /etc/fstab ~/lab10/fstab.orig; }

# 2. Add the entry (tagged '# LAB10-TEST' so that it can be removed safely later)
#    'nofail' = the system still boots even if this device is missing
grep -q "LAB10-TEST" /etc/fstab || \
  echo "UUID=$UUID  /mnt/labfs  ext4  defaults,nofail  0  2  # LAB10-TEST" | sudo tee -a /etc/fstab

# 3. Tell systemd to re-read fstab
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null

tail -3 /etc/fstab
