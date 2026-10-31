#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 17:
# Use pkill to terminate a test process running under the name sleep.

# ---------- Solution ----------
sleep 300 &
pkill sleep
jobs
