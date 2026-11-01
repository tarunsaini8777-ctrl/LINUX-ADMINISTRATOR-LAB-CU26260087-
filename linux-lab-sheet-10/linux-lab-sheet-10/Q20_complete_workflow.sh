#!/bin/bash
# Linux Lab 10: File Systems
# Q20
# Perform a complete file-system workflow: create a file system, mount it,
# verify it, configure /etc/fstab using UUID, check the file system safely,
# unmount it and clean up all lab changes.
# (Safe lab: only a VIRTUAL disk - a file attached as a loop device - is formatted; fstab edits are tagged and reversible.)

# ---------- Solution ----------
IMG=~/lab10/workflow.img
MP=/mnt/labfs

if findmnt -rn "$MP" >/dev/null || grep -q "LAB10-TEST" /etc/fstab; then
    echo "Clean up earlier lab work first (run Q19) and re-run."; exit 1
fi

echo "=== 1. Create and attach a VIRTUAL test disk ==="
mkdir -p ~/lab10
truncate -s 200M "$IMG"
DEV=$(sudo losetup -f --show "$IMG")
case "$DEV" in /dev/loop*) ;; *) echo "SAFETY STOP: not a loop device"; exit 1 ;; esac
lsblk "$DEV"

echo "=== 2. Create the file system ==="
sudo mkfs.ext4 -q -L LABFS "$DEV"
sudo blkid "$DEV"

echo "=== 3. Mount and verify ==="
sudo mkdir -p "$MP"
sudo mount "$DEV" "$MP"
findmnt "$MP"
df -hT "$MP"
echo "workflow data" | sudo tee "$MP/data.txt" >/dev/null
cat "$MP/data.txt"

echo "=== 4. Configure /etc/fstab using the UUID ==="
UUID=$(sudo blkid -s UUID -o value "$DEV")
sudo cp -a /etc/fstab ~/lab10/fstab.orig                      # backup of the original
echo "UUID=$UUID  $MP  ext4  defaults,nofail  0  2  # LAB10-TEST" | sudo tee -a /etc/fstab
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null
cd ~
sudo umount "$MP"
sudo findmnt --verify 2>&1 | tail -3
sudo mount -a                                                 # mounts via the fstab entry
findmnt "$MP" && echo "Automatic mount from fstab works"

echo "=== 5. Check the file system safely (unmounted) ==="
sudo umount "$MP"
sudo e2fsck -f -p "$DEV"

echo "=== 6. Clean up all lab changes ==="
sudo sed -i '/LAB10-TEST/d' /etc/fstab                        # remove the lab entry
command -v systemctl >/dev/null && sudo systemctl daemon-reload 2>/dev/null
sudo losetup -d "$DEV"                                        # detach the virtual disk
rm -f "$IMG"
# also detach/remove the virtual disk used by the earlier questions (if present)
old=$(losetup -j ~/lab10/labfs.img 2>/dev/null | head -1 | cut -d: -f1)
[ -n "$old" ] && sudo losetup -d "$old"
rm -f ~/lab10/labfs.img
sudo rmdir "$MP" 2>/dev/null

echo "=== 7. Verify the final state ==="
diff ~/lab10/fstab.orig /etc/fstab && echo "/etc/fstab is identical to the original"
findmnt "$MP" || echo "$MP is not mounted"
losetup -a
rm -f ~/lab10/fstab.orig
rmdir ~/lab10 2>/dev/null; true
