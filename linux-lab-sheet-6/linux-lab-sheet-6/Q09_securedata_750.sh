#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q9
# Create a directory named securedata and set its permissions to 750 using
# numeric notation.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

mkdir -p securedata
chmod 750 securedata
ls -ld securedata              # expect: drwxr-x---
# 7 = rwx (owner), 5 = r-x (group), 0 = --- (others)
