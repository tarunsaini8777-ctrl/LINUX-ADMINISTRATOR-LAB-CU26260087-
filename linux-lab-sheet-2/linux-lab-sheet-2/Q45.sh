#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 45:
# Create two files owned by different users (using sudo chown), then write a
# single find command that filters and lists files owned by a specific user.

# ---------- Solution ----------
touch file1.txt file2.txt
sudo chown $USER file1.txt        # owned by you
sudo chown root file2.txt         # owned by root
ls -l file1.txt file2.txt

# list only files owned by root:
find . -type f -user root
# list only files owned by you:
find . -type f -user $USER
