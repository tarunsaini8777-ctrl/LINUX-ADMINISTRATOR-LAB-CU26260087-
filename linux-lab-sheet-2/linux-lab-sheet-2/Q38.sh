#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 38:
# Start a background task with nice -n 15 sleep 300 &, locate its PID in top,
# and explain how the 'nice value' impacts CPU time allocation.

# ---------- Solution ----------
nice -n 15 sleep 300 &
echo "PID: $!"
top -p $!            # NI column shows 15 (press q to exit)

# EXPLANATION:
#  Nice value ranges from -20 (highest priority) to +19 (lowest priority).
#  A higher nice value means the process is "nicer" to others, so the CPU
#  scheduler gives it a smaller share of CPU time when the CPU is busy.
#  Nice 15 -> low priority; it gets less CPU than normal (nice 0) processes.
#  Only root can set negative nice values.
