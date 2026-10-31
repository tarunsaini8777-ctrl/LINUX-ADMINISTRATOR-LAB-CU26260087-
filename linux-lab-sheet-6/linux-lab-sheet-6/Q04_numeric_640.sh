#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q4
# Change the permissions of permissions.txt using numeric mode 640 and verify
# the result.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod 640 permissions.txt
ls -l permissions.txt          # expect: -rw-r-----
stat -c '%a %A' permissions.txt
# 6 = rw- (owner), 4 = r-- (group), 0 = --- (others)
