#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q5
# Change the permissions of permissions.txt using numeric mode 755 and verify
# the result.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod 755 permissions.txt
ls -l permissions.txt          # expect: -rwxr-xr-x
stat -c '%a %A' permissions.txt
# 7 = rwx (owner), 5 = r-x (group), 5 = r-x (others)
