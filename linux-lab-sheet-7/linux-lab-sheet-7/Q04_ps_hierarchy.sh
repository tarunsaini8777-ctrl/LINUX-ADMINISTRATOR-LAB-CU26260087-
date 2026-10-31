#!/bin/bash
# Linux Lab 7: Process Management
# Q4
# Display the process hierarchy using ps with an option that shows parent-
# child relationships.

# ---------- Solution ----------
ps -ef --forest | head -25           # tree drawn with ASCII art
ps axjf | head -25                   # BSD style: PPID PID PGID SID ...
ps -eo pid,ppid,cmd --forest | head -25

# pstree is another view (package 'psmisc'):
command -v pstree >/dev/null && pstree -p | head -20

# PPID = parent PID; every process (except PID 1: systemd/init) has a parent.
