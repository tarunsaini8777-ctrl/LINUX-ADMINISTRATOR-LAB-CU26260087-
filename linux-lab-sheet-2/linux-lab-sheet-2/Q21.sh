#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 21:
# Set permissions on script.sh so that the owner has full access (rwx), the
# group has read and execute (r-x), and others have zero permissions — write
# the numeric command.

# ---------- Solution ----------
chmod 750 script.sh
ls -l script.sh   # expect: -rwxr-x---
# 7 = rwx (owner), 5 = r-x (group), 0 = --- (others)
