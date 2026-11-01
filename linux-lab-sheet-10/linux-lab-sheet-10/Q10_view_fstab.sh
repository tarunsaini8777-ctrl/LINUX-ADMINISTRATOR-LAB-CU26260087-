#!/bin/bash
# Linux Lab 10: File Systems
# Q10
# Display the current contents of /etc/fstab and identify the fields used to
# define a persistent file-system mount.
# (Safe lab: only a VIRTUAL disk - a file attached as a loop device - is formatted; fstab edits are tagged and reversible.)

# ---------- Solution ----------
cat /etc/fstab
grep -v '^#' /etc/fstab | grep -v '^$' | awk '{printf "%-42s %-14s %-7s %-20s %s %s\n",$1,$2,$3,$4,$5,$6}'   # entries only, aligned

# FIELDS of one line (6 columns):
#   1 <file system>  device: UUID=..., LABEL=..., /dev/sdXN   (UUID is the most reliable)
#   2 <mount point>  directory where it is mounted (e.g. /mnt/labfs)
#   3 <type>         ext4, xfs, vfat, swap, nfs ...
#   4 <options>      defaults, ro, noexec, nofail, noatime ...
#   5 <dump>         0 = no backup by dump (almost always 0)
#   6 <pass>         fsck order at boot: 1 = root fs, 2 = other fs, 0 = never check
