#!/bin/bash
# Linux Lab 7: Process Management
# Q16
# Use kill -TERM with a selected PID and explain why SIGTERM is normally
# preferred before forceful termination.

# ---------- Solution ----------
# EXPLANATION
#  SIGTERM (15) is a polite request: the program can catch it, finish its
#  work, save data, close files/connections, delete temp files and exit.
#  SIGKILL (9) cannot be caught: the kernel destroys the process at once, so
#  no clean-up is possible (risk of corrupted data, leftover locks/temp files,
#  orphaned child processes).  Therefore: try SIGTERM first, SIGKILL last.

# DEMO: a test process that cleans up when it receives SIGTERM
bash -c 'trap "echo \"[test] SIGTERM received - cleaning up and exiting\"; exit 0" TERM
         while true; do sleep 1; done' &
pid=$!
sleep 1

kill -TERM $pid                # same as: kill -15 $pid  /  kill $pid
wait $pid 2>/dev/null
ps -p $pid || echo "Process ended gracefully"
