#!/bin/bash
# Linux Administration Lab Sheet - 3
# Exit Codes
# Create status.sh that accepts a directory name. Exit with 0 when the
# directory exists and exit with 1 when it does not. After running it, inspect
# the result using echo $?.

# ---------- Solution ----------
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 2          # 2 = usage error
fi

if [ -d "$1" ]; then
    echo "Directory '$1' exists"
    exit 0
else
    echo "Directory '$1' does not exist"
    exit 1
fi

# Run:
#   chmod +x Q12_status.sh
#   ./Q12_status.sh ~/linux_lab3/data ; echo $?      -> 0
#   ./Q12_status.sh no_such_dir       ; echo $?      -> 1
