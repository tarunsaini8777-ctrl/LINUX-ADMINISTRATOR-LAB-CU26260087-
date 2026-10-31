#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 29:
# Check your default umask setting, create a new file named test_mask.txt, and
# analyze how umask influenced its permissions.

# ---------- Solution ----------
umask                      # e.g. 0022
touch test_mask.txt
ls -l test_mask.txt        # e.g. -rw-r--r--

# ANALYSIS:
#  Files start with base permission 666, directories with 777.
#  Final permission = base - umask
#  With umask 022: 666 - 022 = 644 (rw-r--r--) for files
#                  777 - 022 = 755 (rwxr-xr-x) for directories
