#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 33:
# Modify the priority of an already running process using the renice command
# by specifying its PID.

# ---------- Solution ----------
sleep 300 &
PID=$!
renice -n 5 -p $PID          # set nice value to 5
ps -o pid,ni,cmd -p $PID
# (Raising niceness is allowed for normal users; lowering it needs sudo.)
