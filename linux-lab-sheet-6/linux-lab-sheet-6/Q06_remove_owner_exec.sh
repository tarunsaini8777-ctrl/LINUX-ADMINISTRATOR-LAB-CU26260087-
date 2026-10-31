#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q6
# Remove execute permission from the owner of permissions.txt using symbolic
# chmod notation.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod 755 permissions.txt      # start from a known state
chmod u-x permissions.txt
ls -l permissions.txt          # expect: -rw-r-xr-x
