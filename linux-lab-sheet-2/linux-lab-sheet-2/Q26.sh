#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 26:
# Use pkill with a safe target process name to terminate all active instances
# of that command simultaneously.

# ---------- Solution ----------
sleep 100 &
sleep 200 &
pkill sleep      # kills ALL processes named sleep
jobs
# Tip: use 'pgrep -l sleep' first to preview which processes will match.
