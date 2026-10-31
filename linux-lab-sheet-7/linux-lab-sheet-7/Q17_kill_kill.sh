#!/bin/bash
# Linux Lab 7: Process Management
# Q17
# Use kill -KILL with a selected test process when normal termination does not
# work, and verify the result.

# ---------- Solution ----------
# Test process that IGNORES SIGTERM
bash -c 'trap "" TERM; while true; do sleep 1; done' &
pid=$!
sleep 1

kill -TERM $pid                # polite request - ignored
sleep 1
ps -p $pid -o pid,stat,cmd && echo "Still alive after SIGTERM"

kill -KILL $pid                # same as: kill -9 $pid  (cannot be ignored)
wait $pid 2>/dev/null
sleep 1

ps -p $pid || echo "Process $pid is gone after SIGKILL"
# Use kill -9 only as a last resort: the process cannot clean up.
