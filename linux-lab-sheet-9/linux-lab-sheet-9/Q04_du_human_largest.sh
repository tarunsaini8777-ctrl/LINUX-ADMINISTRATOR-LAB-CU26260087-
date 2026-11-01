#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q4
# Display directory sizes in human-readable format and identify which
# directories are consuming the most space.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
du -h --max-depth=1 ~ 2>/dev/null                 # sizes of the first-level directories of your home
echo "--- Largest first ---"
du -h --max-depth=1 ~ 2>/dev/null | sort -rh | head -5

echo "--- System: largest directories under /var and /usr ---"
sudo du -h --max-depth=1 /var /usr 2>/dev/null | sort -rh | head -8

# sort -rh = sort Human-readable numbers (K, M, G) in Reverse (largest on top)
