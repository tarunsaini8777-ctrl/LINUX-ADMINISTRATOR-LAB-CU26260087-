#!/bin/bash
# Linux Lab 7: Process Management
# Q10
# Display the jobs currently running in the shell using the jobs command.

# ---------- Solution ----------
set -m

sleep 301 &
sleep 302 &
sleep 303 &

jobs                           # [1] Running sleep 301 & ...
jobs -r                        # only running jobs
jobs -s                        # only stopped jobs

# Clean up (kill all jobs of this shell)
kill $(jobs -p)
wait 2>/dev/null
jobs
