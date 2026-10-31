#!/bin/bash
# Linux Lab 7: Process Management
# Q5
# Start the top command and observe the running processes, CPU usage, memory
# usage and process IDs.

# ---------- Solution ----------
# Non-interactive snapshot (works anywhere, also inside scripts):
top -b -n 1 | head -20

# Interactive top (runs only when started from a real terminal):
if [ -t 0 ]; then top; fi

# What to observe in top:
#   Line 1  : uptime, users, load average (1, 5, 15 min)
#   Tasks   : total / running / sleeping / stopped / zombie
#   %Cpu(s) : us (user), sy (system), id (idle), wa (I/O wait)
#   MiB Mem : total / free / used / buff-cache,  MiB Swap
#   Columns : PID USER PR NI VIRT RES SHR S %CPU %MEM TIME+ COMMAND
# Keys: q quit | P sort by CPU | M sort by memory | k kill a PID | h help
