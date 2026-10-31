#!/bin/bash
# Linux Administration Lab Sheet - 3
# User Input Script
# Create user_input.sh that asks for a student's name, branch and semester
# using read, then prints a formatted welcome message.

# ---------- Solution ----------
read -p "Enter student name: " name
read -p "Enter branch: " branch
read -p "Enter semester: " semester

echo "----------------------------------------"
echo " Welcome, $name!"
echo " Branch   : $branch"
echo " Semester : $semester"
echo "----------------------------------------"

# Run: chmod +x Q02_user_input.sh && ./Q02_user_input.sh
