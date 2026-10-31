#!/bin/bash
# Linux Lab 7: Process Management
# Q3
# Display a detailed process listing using ps aux and identify the CPU and
# memory usage fields.

# ---------- Solution ----------
ps aux | head -10

# FIELDS:  USER  PID  %CPU  %MEM  VSZ  RSS  TTY  STAT  START  TIME  COMMAND
#   %CPU = share of CPU time used       %MEM = share of physical RAM used
#   VSZ  = virtual memory size (KB)     RSS  = resident (physical) memory (KB)

echo "--- Top 5 by CPU ---"
ps aux --sort=-%cpu | head -6
echo "--- Top 5 by memory ---"
ps aux --sort=-%mem | head -6
