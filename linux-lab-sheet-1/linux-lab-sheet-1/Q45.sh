#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 45:
# Write a command that displays the 3 largest files in a directory by sorting
# ls output by file size.

# ---------- Solution ----------
ls -lS | grep '^-' | head -n 3
# names only:
# ls -S | head -n 3
