#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q4
# Create a new user named labuser1 using useradd and verify that the account
# has been created.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo useradd labuser1

# Verify
id labuser1
getent passwd labuser1
grep "^labuser1:" /etc/passwd
# NOTE: on Ubuntu/Debian plain 'useradd' does NOT create a home directory
#       (on RHEL/CentOS it does by default).
ls -ld /home/labuser1 2>/dev/null || echo "No home directory created (expected on Ubuntu/Debian)"
