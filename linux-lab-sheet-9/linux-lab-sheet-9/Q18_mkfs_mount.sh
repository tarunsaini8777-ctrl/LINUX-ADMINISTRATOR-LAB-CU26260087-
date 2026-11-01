#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q18
# Create a file system on a dedicated practice partition, mount it on
# /mnt/labdisk and verify the file system using df, lsblk and findmnt.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# --- helper: attach the virtual practice disk (a 200 MB file) as a loop device ---
IMG=~/lab9/disk2.img
mkdir -p ~/lab9
[ -f "$IMG" ] || truncate -s 200M "$IMG"
LOOP=$(losetup -j "$IMG" | head -1 | cut -d: -f1)
[ -n "$LOOP" ] || LOOP=$(sudo losetup -fP --show "$IMG")
case "$LOOP" in
    /dev/loop*) ;;
    *) echo "SAFETY STOP: $LOOP is not a loop device. Never partition a real disk in this lab."; exit 1 ;;
esac
echo "Practice disk: $LOOP  (backed by $IMG)"
PART=${LOOP}p1
# ---------------------------------------------------------------------------------

[ -b "$PART" ] || { echo "Partition $PART not found - run Q17 first"; exit 1; }

sudo mkfs.ext4 -F -L LABDISK "$PART"      # create the filesystem (ONLY on the practice partition)
sudo mkdir -p /mnt/labdisk
sudo mount "$PART" /mnt/labdisk

# VERIFY
df -hT /mnt/labdisk
lsblk -f "$LOOP"
findmnt /mnt/labdisk
