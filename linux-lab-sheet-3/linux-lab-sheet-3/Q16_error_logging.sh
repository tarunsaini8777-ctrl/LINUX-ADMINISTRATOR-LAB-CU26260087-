#!/bin/bash
# Linux Administration Lab Sheet - 3
# Error Logging
# Run a command that deliberately produces an error, redirect only standard
# error to logs/errors.log, and then display the log.

# ---------- Solution ----------
cd ~/linux_lab3 || exit 1

# 2> redirects only STDERR (file descriptor 2)
ls /nonexistent_directory 2> logs/errors.log

echo "--- Contents of logs/errors.log ---"
cat logs/errors.log
