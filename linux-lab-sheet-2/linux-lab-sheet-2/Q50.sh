#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 50:
# Write a shell command pipeline that identifies the process consuming the
# most memory (%MEM), logs its PID and details to a file named top_memory.log,
# and gracefully requests its termination using SIGTERM.

# ---------- Solution ----------
# 1. Identify the process using the most memory (line 2 = top process)
TOP_LINE=$(ps -eo pid,user,%mem,%cpu,comm --sort=-%mem | sed -n 2p)
PID=$(echo "$TOP_LINE" | awk '{print $1}')

# 2. Log its PID and details
echo "=== $(date) ===" >> top_memory.log
echo "$TOP_LINE" >> top_memory.log
ps -p "$PID" -o pid,ppid,user,%mem,%cpu,etime,cmd >> top_memory.log

# 3. Gracefully request termination (SIGTERM = 15)
# WARNING: this may close your browser/desktop app! Uncomment only on a test VM.
# kill -SIGTERM "$PID"      # same as: kill -15 "$PID"

cat top_memory.log
