#!/bin/bash
# Linux Lab 7: Process Management
# Q15
# Use kill with a selected PID to terminate a process and verify that the
# process has ended.

# ---------- Solution ----------
sleep 300 &
pid=$!
echo "Started test process PID $pid"
ps -p $pid -o pid,stat,cmd

kill $pid                      # sends SIGTERM (15) by default
wait $pid 2>/dev/null
sleep 1

# Verify
ps -p $pid || echo "Process $pid has ended"
kill -0 $pid 2>/dev/null && echo "still running" || echo "kill -0 check: process is gone"
