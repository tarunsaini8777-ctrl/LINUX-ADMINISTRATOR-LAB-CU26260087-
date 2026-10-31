#!/bin/bash
# Linux Lab 7: Process Management
# Q1
# Display the processes associated with the current user using ps and observe
# the PID, terminal and process status.

# ---------- Solution ----------
ps                                   # processes of the current terminal
ps -u $(whoami)                      # all processes of the current user
ps -u $(whoami) -o pid,tty,stat,time,cmd | head -15

# FIELDS:  PID = process ID | TTY = controlling terminal (? = none)
#          STAT = status    | TIME = CPU time used | CMD = command
# STAT codes: R running, S sleeping, D uninterruptible sleep,
#             T stopped, Z zombie;  extra: s session leader, + foreground, < high priority, N low priority
