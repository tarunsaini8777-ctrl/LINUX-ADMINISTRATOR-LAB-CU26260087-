#!/bin/bash
# Linux Lab 7: Process Management
# Q14
# Use jobs -l to display the job number and PID of background or stopped jobs.

# ---------- Solution ----------
set -m

sleep 301 &
sleep 302 &
p2=$!
kill -TSTP $p2                 # make job 2 stopped
sleep 1

jobs -l
# Output format:   [job number]+/-  PID  State  Command
#                  [1]-  4011 Running   sleep 301 &
#                  [2]+  4012 Stopped   sleep 302
# '+' = current job (default for fg/bg), '-' = previous job

# Clean up
kill -CONT $(jobs -p); kill $(jobs -p)
wait 2>/dev/null
