#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 4:
# Create an executable file named script.sh and grant execute permission
# exclusively to the owner using symbolic mode.

# ---------- Solution ----------
touch script.sh
chmod u+x script.sh
ls -l script.sh   # execute (x) only for the owner
