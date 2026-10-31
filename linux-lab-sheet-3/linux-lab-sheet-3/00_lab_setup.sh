#!/bin/bash
# Linux Administration Lab Sheet - 3
# Lab Setup
# Create the lab workspace, folders and sample files first (run this once
# before the questions).

# ---------- Solution ----------
# Create the lab workspace and move into it
mkdir -p ~/linux_lab3
cd ~/linux_lab3
pwd

# Create folders
mkdir -p data backups logs output

# Create sample files
touch data/names.txt data/students.txt data/notes.txt

# Sample names
printf 'Zara\nAmit\nNeha\nRavi\nAmit\n' > data/names.txt

# Sample student records
printf '101,Amit,85\n102,Neha,92\n103,Ravi,68\n104,Zara,76\n' > data/students.txt

# Sample notes
printf 'Linux shell scripting\nVariables and loops\nPipes and redirection\n' > data/notes.txt

# Sample backup files
touch backups/db_01.bak backups/db_02.bak

# Verify the structure
find . -maxdepth 2 -type f -print

# Make a script executable and test it:
#   chmod +x script.sh
#   ./script.sh
