#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q3
# Display the size of the current directory and its contents using du.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
du                    # size of every subdirectory, in 1K blocks (last line = current dir total)
du -s .               # only the total for the current directory
du -a | head -20      # also list individual FILES
