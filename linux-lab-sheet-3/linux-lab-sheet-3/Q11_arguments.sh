#!/bin/bash
# Linux Administration Lab Sheet - 3
# Script Arguments
# Create arguments.sh that displays $0, $1, $2, $#, and $@. Test it with at
# least two different command-line argument sets.

# ---------- Solution ----------
echo 'Script name ($0)     :' "$0"
echo 'First argument ($1)  :' "$1"
echo 'Second argument ($2) :' "$2"
echo 'Number of args ($#)  :' "$#"
echo 'All arguments ($@)   :' "$@"

# Run (two different argument sets):
#   chmod +x Q11_arguments.sh
#   ./Q11_arguments.sh Linux Bash
#   ./Q11_arguments.sh one two three four
