#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 9:
# Use the kill command with the Process ID (PID) to terminate the active sleep
# process created in Exercise 8.

# ---------- Solution ----------
sleep 60 &
echo "PID of sleep: $!"
kill $!          # or: kill <PID>   (or: kill %1)
jobs             # shows Terminated
