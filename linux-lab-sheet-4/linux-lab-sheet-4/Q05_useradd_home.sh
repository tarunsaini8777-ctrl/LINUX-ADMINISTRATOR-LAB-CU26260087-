#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q5
# Create labuser2 with a home directory and verify the home directory and its
# ownership.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo useradd -m labuser2        # -m = create home directory

getent passwd labuser2
ls -ld /home/labuser2           # owner and group should both be labuser2
ls -la /home/labuser2           # skeleton files copied from /etc/skel
