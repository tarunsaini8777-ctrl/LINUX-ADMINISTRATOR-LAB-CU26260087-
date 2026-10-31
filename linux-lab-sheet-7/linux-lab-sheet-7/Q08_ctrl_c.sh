#!/bin/bash
# Linux Lab 7: Process Management
# Q8
# Start a long-running command in the foreground and terminate it using
# Ctrl+C.

# ---------- Solution ----------
# MANUAL (type in your terminal):
#   sleep 300          <- runs in the foreground; the prompt does not return
#   press Ctrl+C       <- sends SIGINT; the command stops, the prompt returns
#   echo $?            <- prints 130  (128 + signal 2)

# AUTOMATED equivalent: 'timeout' sends SIGINT (same signal as Ctrl+C) after 3 seconds
echo "Starting sleep 300 in the foreground..."
timeout --signal=INT 3 sleep 300
echo "Process interrupted (timeout exit status: $?)"
