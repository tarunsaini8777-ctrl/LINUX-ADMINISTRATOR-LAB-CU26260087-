#!/bin/bash
# Linux Administration Lab Sheet - 3
# Append a Log
# Create log_entry.sh that appends the current date/time and a user-supplied
# message to logs/activity.log without overwriting previous entries.

# ---------- Solution ----------
LOG_DIR="$HOME/linux_lab3/logs"
mkdir -p "$LOG_DIR"

read -p "Enter log message: " message

echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$LOG_DIR/activity.log"

echo "Entry added. Current log:"
cat "$LOG_DIR/activity.log"

# Run it a few times; entries are appended (>>) and never overwritten.
