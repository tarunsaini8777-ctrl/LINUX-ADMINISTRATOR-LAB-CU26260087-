#!/bin/bash
# Linux Lab 7: Process Management
# Q9
# Start a long-running command in the background using the & operator and
# display the assigned job information.

# ---------- Solution ----------
set -m                         # enable job control inside the script (not needed in a terminal)

sleep 300 &
# Bash prints:  [1] 12345     -> [job number] PID
echo "Last background PID (\$!): $!"

jobs -l                        # job number, PID, state and command
ps -p $! -o pid,stat,cmd

# Clean up
kill $!
wait $! 2>/dev/null
