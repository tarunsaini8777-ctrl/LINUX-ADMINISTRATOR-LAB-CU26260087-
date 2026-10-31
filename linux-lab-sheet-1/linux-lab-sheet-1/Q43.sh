#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 43:
# Search for a specific file system configuration entry inside /etc/fstab
# using grep, ignoring case sensitivity.

# ---------- Solution ----------
grep -i "uuid" /etc/fstab
# another example:
grep -i "ext4" /etc/fstab
