#!/bin/bash
# Linux Administration Lab Sheet - 3
# Combined Output and Error Logging
# Run one command containing both a valid and invalid path and redirect
# standard output and standard error into logs/combined.log. Verify the file.

# ---------- Solution ----------
cd ~/linux_lab3 || exit 1

# valid path: data      invalid path: /nonexistent_directory
# > file 2>&1  sends STDOUT to the file, and STDERR to the same place
ls data /nonexistent_directory > logs/combined.log 2>&1

echo "--- Contents of logs/combined.log ---"
cat logs/combined.log
# shortcut in bash: ls data /nonexistent_directory &> logs/combined.log
