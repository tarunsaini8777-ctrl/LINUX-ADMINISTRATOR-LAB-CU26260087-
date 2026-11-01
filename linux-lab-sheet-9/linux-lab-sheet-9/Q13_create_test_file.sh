#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q13
# Create a test file inside /mnt/labdisk and verify that the file is stored on
# the mounted file system.
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

echo "Hello from the lab disk" | sudo tee /mnt/labdisk/testfile.txt
ls -l /mnt/labdisk

# VERIFY that the file lives on the mounted filesystem (not on the root disk)
df /mnt/labdisk/testfile.txt             # Filesystem column shows the loop device
findmnt -T /mnt/labdisk/testfile.txt     # SOURCE = /dev/loopX, TARGET = /mnt/labdisk
df -h /mnt/labdisk                       # 'Used' increased slightly
cat /mnt/labdisk/testfile.txt
