#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q15
# Attempt to access a mounted file system that is currently in use, identify
# why unmounting may fail, and safely release the process before unmounting.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# --- helper: make sure the virtual test disk (a file) is mounted on /mnt/labdisk (same as Q11) ---
IMG=~/lab9/disk1.img
MP=/mnt/labdisk
if ! findmnt -rn "$MP" >/dev/null; then
    sudo mkdir -p "$MP"
    mkdir -p ~/lab9
    if [ ! -f "$IMG" ]; then
        truncate -s 100M "$IMG"
        sudo mkfs.ext4 -q -F -L LABDISK "$IMG"
    fi
    sudo mount -o loop "$IMG" "$MP"
fi
# --------------------------------------------------------------------------------------------------

# 1. Make the filesystem 'busy': a process whose working directory is inside it
( cd /mnt/labdisk && exec sleep 300 ) &
pid=$!
sleep 1

# 2. Try to unmount -> fails with:  target is busy
sudo umount /mnt/labdisk

# 3. IDENTIFY why: which process is using it
sudo fuser -vm /mnt/labdisk 2>&1 || true           # package: psmisc
sudo lsof /mnt/labdisk 2>&1 | head -5 || true      # package: lsof
ls -l /proc/$pid/cwd                               # its working directory is /mnt/labdisk

# 4. SAFELY release: end only that process (try SIGTERM first; do not use kill -9 / umount -l blindly)
kill $pid
wait $pid 2>/dev/null
sleep 1

# 5. Unmount again and verify
sudo umount /mnt/labdisk && echo "Unmounted successfully"
findmnt /mnt/labdisk || echo "/mnt/labdisk is not mounted"

# A common cause is a terminal whose current directory is inside the mount: just 'cd ~' first.
