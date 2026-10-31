#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q8
# Remove all permissions from others for permissions.txt and verify the
# result.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod 755 permissions.txt      # start: -rwxr-xr-x
chmod o-rwx permissions.txt    # or: chmod o= permissions.txt
ls -l permissions.txt          # expect: -rwxr-x---
