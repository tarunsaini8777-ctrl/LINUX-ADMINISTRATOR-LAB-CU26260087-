#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q12
# Temporarily change the umask value to 027 and create a new file and
# directory. Observe and verify their resulting permissions.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

echo "Current umask: $(umask)"

umask 027                      # temporary: affects only the current shell session
touch umask_file.txt
mkdir umask_dir

ls -ld umask_file.txt umask_dir
stat -c '%a %A %n' umask_file.txt umask_dir

# CALCULATION:
#   files start from 666, directories from 777
#   file : 666 - 027 = 640  (rw-r-----)
#   dir  : 777 - 027 = 750  (rwxr-x---)
