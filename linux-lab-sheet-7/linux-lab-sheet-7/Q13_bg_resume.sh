#!/bin/bash
# Linux Lab 7: Process Management
# Q13
# Resume a stopped job in the background using bg and verify its status using
# jobs.

# ---------- Solution ----------
set -m

sleep 300 &
pid=$!
kill -TSTP $pid                # same as pressing Ctrl+Z
sleep 1
echo "--- Stopped ---"; jobs

bg %?300                       # resume in the background (manual: bg %1)
sleep 1
echo "--- After bg ---"; jobs  # Running
ps -p $pid -o pid,stat,cmd

# Clean up
kill $pid
wait $pid 2>/dev/null
