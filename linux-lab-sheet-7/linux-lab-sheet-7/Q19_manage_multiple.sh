#!/bin/bash
# Linux Lab 7: Process Management
# Q19
# Use ps, jobs and appropriate process-control commands to identify and manage
# multiple test processes safely.

# ---------- Solution ----------
set -m

# 1. Start several test processes
sleep 401 &
sleep 402 &
sleep 403 &

# 2. Identify them
echo "--- jobs -l ---";  jobs -l
echo "--- ps ---";       ps -o pid,ppid,stat,cmd --ppid $$
echo "--- pgrep ---";    pgrep -a -f "sleep 40"

# 3. Control them
kill -TSTP %1                  # suspend job 1
sleep 1; echo "--- after suspending job 1 ---"; jobs
kill -CONT %1; bg %1 >/dev/null 2>&1       # resume job 1
kill %2                        # terminate job 2 (SIGTERM)
sleep 1; echo "--- after terminating job 2 ---"; jobs

# 4. Safe clean-up of all remaining test processes
pkill -f "sleep 40"            # specific pattern, only our test processes
wait 2>/dev/null
echo "--- final check ---"
pgrep -af "sleep 40" || echo "All test processes cleaned up"

# SAFETY HABITS: check with pgrep/ps before pkill, use specific patterns,
# never kill PID 1 or unknown system processes, try SIGTERM before SIGKILL.
