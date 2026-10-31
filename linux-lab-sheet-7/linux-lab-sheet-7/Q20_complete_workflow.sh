#!/bin/bash
# Linux Lab 7: Process Management
# Q20
# Perform a complete process-management workflow: inspect processes, start a
# foreground job, move a job to the background, suspend/resume it, terminate
# it with kill, and clean up all test processes.

# ---------- Solution ----------
set -m

echo "=== 1. Inspect processes ==="
ps -u $(whoami) -o pid,tty,stat,cmd | head -8
ps aux --sort=-%cpu | head -4

echo "=== 2. Foreground job ==="
# MANUAL: run 'sleep 300' and press Ctrl+Z to suspend it, then 'bg' to move it to the background
timeout 2 sleep 300            # a foreground job (auto-stopped after 2 s)
echo "Foreground job finished (status $?)"

echo "=== 3. Move a job to the background ==="
sleep 300 &
pid=$!
jobs -l

echo "=== 4. Suspend (Ctrl+Z equivalent) ==="
kill -TSTP $pid; sleep 1
jobs -l

echo "=== 5. Resume in the background (bg) ==="
bg %?300 >/dev/null; sleep 1
jobs -l

echo "=== 6. Terminate with kill ==="
kill $pid
wait $pid 2>/dev/null
sleep 1
ps -p $pid || echo "Process $pid terminated"

echo "=== 7. Clean up all test processes ==="
pkill -f "sleep 300" 2>/dev/null
pgrep -af "sleep 300" || echo "No test processes remain"
jobs
