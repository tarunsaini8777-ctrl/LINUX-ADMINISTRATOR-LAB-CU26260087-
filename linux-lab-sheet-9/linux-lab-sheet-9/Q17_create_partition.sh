#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q17
# Create a practice partition on a dedicated test disk or virtual disk using
# an appropriate partitioning tool, then verify it with lsblk. Do not modify
# the system disk.
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

# Create an MBR (dos) partition table with ONE primary partition covering the whole virtual disk
# fdisk keys:  o = new DOS table | n = new partition | p = primary | 1 = number | (Enter,Enter) = defaults | w = write
printf 'o\nn\np\n1\n\n\nw\n' | sudo fdisk "$LOOP"

# Alternative with parted:
#   sudo parted -s "$LOOP" mklabel msdos mkpart primary ext4 1MiB 100%

sudo partprobe "$LOOP" 2>/dev/null || sudo blockdev --rereadpt "$LOOP"   # tell the kernel about the new partition
sleep 1

# VERIFY
lsblk "$LOOP"                            # shows loopXp1
sudo fdisk -l "$LOOP"
ls -l "$PART"
