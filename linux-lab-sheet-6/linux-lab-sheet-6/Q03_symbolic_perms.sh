#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q3
# Change the permissions of permissions.txt using symbolic notation so that
# the owner has read, write and execute permissions, the group has read and
# write permissions, and others have no permissions.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

chmod u=rwx,g=rw,o= permissions.txt
ls -l permissions.txt          # expect: -rwxrw----
