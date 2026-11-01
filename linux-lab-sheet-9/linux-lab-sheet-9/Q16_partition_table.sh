#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q16
# Display the partition table of a selected disk using an appropriate command
# and identify the partitions and their sizes.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# Select the first real disk (read-only commands only - nothing is modified)
disk=/dev/$(lsblk -dno NAME,TYPE | awk '$2=="disk" && $1 !~ /^(loop|zram)/ {print $1; exit}')
echo "Selected disk: $disk"

sudo fdisk -l "$disk"                    # partition table: Device, Start, End, Sectors, Size, Type
sudo parted "$disk" print 2>/dev/null    # alternative (works for MBR and GPT)
lsblk "$disk"

# In fdisk -l look at:  Disklabel type (dos/gpt), Device, Size, Type of each partition.
