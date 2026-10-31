#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q10
# Use usermod to change labuser2's home directory, first without moving the
# existing contents and then with the option that moves the contents.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# Put a test file in the current home so we can see what happens to it
sudo touch /home/labuser2/testfile.txt

# --- PART 1: change home WITHOUT moving contents (-d only) ---
sudo usermod -d /home/labuser2_nomove labuser2
getent passwd labuser2 | cut -d: -f6      # new path recorded in /etc/passwd
ls -l /home/labuser2/                     # old contents are still in the OLD directory
ls -ld /home/labuser2_nomove 2>/dev/null || echo "New directory does not exist / is empty"

# Restore the original home before part 2
sudo usermod -d /home/labuser2 labuser2

# --- PART 2: change home AND move contents (-m with -d) ---
sudo usermod -m -d /home/labuser2_moved labuser2
getent passwd labuser2 | cut -d: -f6
ls -l /home/labuser2_moved/               # testfile.txt moved here
ls -ld /home/labuser2 2>/dev/null || echo "Old directory /home/labuser2 no longer exists"
