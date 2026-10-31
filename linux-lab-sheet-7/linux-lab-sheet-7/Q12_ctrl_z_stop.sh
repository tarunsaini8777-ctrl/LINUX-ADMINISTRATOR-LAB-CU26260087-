#!/bin/bash
# Linux Lab 7: Process Management
# Q12
# Suspend a running foreground process using Ctrl+Z and verify that the job
# has been stopped.

# ---------- Solution ----------
set -m

# MANUAL (type in your terminal):
#   sleep 300          <- foreground
#   press Ctrl+Z       <- shell prints:  [1]+  Stopped   sleep 300
#   jobs               <- shows the job as Stopped

# AUTOMATED: Ctrl+Z sends SIGTSTP, so we send the same signal ourselves
sleep 300 &
pid=$!
kill -TSTP $pid
sleep 1

jobs -l                        # State: Stopped
ps -p $pid -o pid,stat,cmd     # STAT = T (stopped)

# Clean up (a stopped process must be continued before it can handle SIGTERM)
kill -CONT $pid
kill -TERM $pid
wait $pid 2>/dev/null
