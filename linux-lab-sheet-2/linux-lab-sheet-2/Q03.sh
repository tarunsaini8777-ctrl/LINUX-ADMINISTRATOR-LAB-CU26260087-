#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 3:
# Change notes.txt permissions to 600 (owner read/write only, no permissions
# for group and others) and verify.

# ---------- Solution ----------
chmod 600 notes.txt
ls -l notes.txt   # expect: -rw-------
