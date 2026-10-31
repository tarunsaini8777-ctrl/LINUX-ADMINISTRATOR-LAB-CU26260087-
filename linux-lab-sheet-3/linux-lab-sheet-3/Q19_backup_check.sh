#!/bin/bash
# Linux Administration Lab Sheet - 3
# Backup Checker Script
# Create backup_check.sh that accepts a directory as $1, verifies that it
# exists, scans for .bak files, counts them, reports each backup found, and
# appends a 'No backup files found' message to logs/backup_log.txt when the
# count is zero.

# ---------- Solution ----------
LOG_DIR="$HOME/linux_lab3/logs"
mkdir -p "$LOG_DIR"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
    echo "Error: '$dir' is not a directory or does not exist"
    exit 1
fi

count=$(find "$dir" -type f -name "*.bak" | wc -l)

if [ "$count" -eq 0 ]; then
    echo "No backup files found in $dir"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - No backup files found in $dir" >> "$LOG_DIR/backup_log.txt"
else
    echo "Found $count backup file(s):"
    find "$dir" -type f -name "*.bak" | while read -r f; do
        echo "  Backup found: $f"
    done
fi

# Run:
#   ./Q19_backup_check.sh ~/linux_lab3/backups   (finds 2 files)
#   ./Q19_backup_check.sh ~/linux_lab3/data      (no .bak -> logged)
