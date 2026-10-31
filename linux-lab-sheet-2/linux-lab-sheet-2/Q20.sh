#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 20:
# Use chown to change the owner of script.sh to yourself explicitly, and
# verify with ls -l.

# ---------- Solution ----------
sudo chown $USER script.sh
ls -l script.sh
