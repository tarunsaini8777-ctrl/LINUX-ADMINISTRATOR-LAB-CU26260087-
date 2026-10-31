#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 1:
# Create a file named notes.txt and display its permissions string using the
# ls -l command.

# ---------- Solution ----------
touch notes.txt
ls -l notes.txt
# First column (e.g. -rw-r--r--) is the permission string
