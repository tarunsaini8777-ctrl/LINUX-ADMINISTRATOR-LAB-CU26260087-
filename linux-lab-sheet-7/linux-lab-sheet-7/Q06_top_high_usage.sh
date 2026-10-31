#!/bin/bash
# Linux Lab 7: Process Management
# Q6
# Use top to identify a process with high CPU or memory usage and record its
# PID.

# ---------- Solution ----------
# Start a harmless CPU-hungry test process
yes > /dev/null &
pid=$!
sleep 2

echo "Test process PID: $pid"
# Find the highest CPU process in top (batch mode, sorted by CPU)
top -b -n 1 -o %CPU | head -12
echo "--- Top process by CPU (PID %CPU %MEM CMD) ---"
ps -eo pid,%cpu,%mem,cmd --sort=-%cpu | head -3

# In interactive top: press P (sort by CPU) or M (sort by memory) and note the PID in the first row.

# Clean up the test process
kill $pid
wait $pid 2>/dev/null
echo "Recorded PID $pid (now stopped)"
