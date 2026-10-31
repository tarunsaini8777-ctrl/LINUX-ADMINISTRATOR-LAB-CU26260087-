#!/bin/bash
# Linux Lab 7: Process Management
# Q2
# Display all processes running on the system using an appropriate ps option
# and identify the PID, user and command fields.

# ---------- Solution ----------
ps -e | head -15                     # every process (PID TTY TIME CMD)
ps -ef | head -15                    # full format: UID PID PPID C STIME TTY TIME CMD
# ps -A is identical to ps -e

# FIELDS in 'ps -ef':
#   UID = user that owns the process   PID = process ID
#   PPID = parent process ID           CMD = command with arguments
