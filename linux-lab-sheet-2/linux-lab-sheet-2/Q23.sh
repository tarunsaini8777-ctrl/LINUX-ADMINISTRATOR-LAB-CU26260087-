#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 23:
# Use chown to change both the user owner and group owner of a file to
# student:student in a single command.

# ---------- Solution ----------
sudo chown student:student file.txt
ls -l file.txt
