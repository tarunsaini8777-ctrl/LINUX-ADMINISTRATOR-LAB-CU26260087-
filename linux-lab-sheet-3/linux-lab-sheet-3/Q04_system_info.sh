#!/bin/bash
# Linux Administration Lab Sheet - 3
# Command Substitution
# Create system_info.sh that stores the current date, current working
# directory and logged-in username in variables using command substitution,
# then displays them.

# ---------- Solution ----------
current_date=$(date)
current_dir=$(pwd)
current_user=$(whoami)

echo "Current date      : $current_date"
echo "Working directory : $current_dir"
echo "Logged-in user    : $current_user"

# Run: chmod +x Q04_system_info.sh && ./Q04_system_info.sh
