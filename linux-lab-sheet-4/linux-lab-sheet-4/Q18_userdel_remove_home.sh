#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q18
# Delete labuser2 and remove its home directory using the appropriate userdel
# option. Verify the result.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo userdel -r labuser2              # -r = remove home directory and mail spool

getent passwd labuser2 || echo "Account entry removed"
ls -ld /home/labuser2* 2>&1           # home (/home/labuser2_moved after Q10) should be gone
