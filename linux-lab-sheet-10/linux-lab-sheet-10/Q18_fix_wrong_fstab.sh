#!/bin/bash
# Linux Lab 10: File Systems
# Q18
# Correct an intentionally incorrect /etc/fstab entry for the dedicated test
# file system and verify that the corrected entry mounts successfully.
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

GOOD=$(sudo blkid -s UUID -o value "$DEV")
mkdir -p ~/lab10; [ -f ~/lab10/fstab.orig ] || sudo cp -a /etc/fstab ~/lab10/fstab.orig
sudo mkdir -p /mnt/labfs

# 1. Replace the lab entry by an INCORRECT one (wrong UUID)
sudo sed -i '/LAB10-TEST/d' /etc/fstab
echo "UUID=11111111-2222-3333-4444-555555555555  /mnt/labfs  ext4  defaults,nofail  0  2  # LAB10-TEST" | sudo tee -a /etc/fstab >/dev/null
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null

# 2. Detect the problem
sudo mount -a                            # error: can't find UUID=1111...
sudo findmnt --verify 2>&1 | grep -i -E 'labfs|uuid|11111111'
findmnt /mnt/labfs || echo "Not mounted because of the wrong entry"

# 3. CORRECT the entry (replace only the UUID on the tagged line)
sudo sed -i "/LAB10-TEST/ s|^UUID=[^ ]*|UUID=$GOOD|" /etc/fstab
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null
grep LAB10-TEST /etc/fstab

# 4. Verify
sudo mount -a && findmnt /mnt/labfs && echo "Corrected entry mounts successfully"
