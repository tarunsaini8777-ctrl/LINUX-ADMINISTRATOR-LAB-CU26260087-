#!/bin/bash
# Linux Lab 7: Process Management
# Q18
# Use pkill to terminate a selected test process by its process name and
# verify that it has ended.

# ---------- Solution ----------
sleep 777 &                    # test process
sleep 1

echo "--- Before ---"
pgrep -a sleep                 # preview what pkill will match (ALWAYS check first)

pkill -f "sleep 777"           # -f matches the full command line; safe, specific pattern
# pkill sleep                  # would kill ALL of your processes named 'sleep'
sleep 1

echo "--- After ---"
pgrep -af "sleep 777" || echo "Process 'sleep 777' has ended"
