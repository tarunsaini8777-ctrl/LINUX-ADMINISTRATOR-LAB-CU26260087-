#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q7
# Add read and execute permissions for the group of permissions.txt without
# changing the owner's permissions.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod 600 permissions.txt      # start: -rw-------
chmod g+rx permissions.txt     # only the group class changes
ls -l permissions.txt          # expect: -rw-r-x---
