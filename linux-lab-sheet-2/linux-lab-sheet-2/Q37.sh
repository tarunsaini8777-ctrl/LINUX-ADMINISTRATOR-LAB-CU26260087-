#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 37:
# Set up permissions for shared.txt so the owner has read/write, the group has
# read-only, and others have zero access — write out both symbolic AND numeric
# commands.

# ---------- Solution ----------
touch shared.txt
# Symbolic:
chmod u=rw,g=r,o= shared.txt
# Numeric (same result):
chmod 640 shared.txt
ls -l shared.txt    # expect: -rw-r-----
