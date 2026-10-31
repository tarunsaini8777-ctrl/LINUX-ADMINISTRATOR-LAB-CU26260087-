#!/bin/bash
# Linux Administration Lab Sheet - 3
# File and Directory Tests
# Create file_check.sh that accepts a path as $1 and reports whether the path
# is a regular file, a directory, or neither. Also report whether a regular
# file is executable when applicable.

# ---------- Solution ----------
if [ $# -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

path=$1

if [ -f "$path" ]; then
    echo "$path is a regular file"
    if [ -x "$path" ]; then
        echo "The file is executable"
    else
        echo "The file is NOT executable"
    fi
elif [ -d "$path" ]; then
    echo "$path is a directory"
else
    echo "$path is neither a regular file nor a directory (or does not exist)"
fi

# Run:
#   ./Q07_file_check.sh ~/linux_lab3/data/names.txt
#   ./Q07_file_check.sh ~/linux_lab3/data
#   ./Q07_file_check.sh /dev/null
