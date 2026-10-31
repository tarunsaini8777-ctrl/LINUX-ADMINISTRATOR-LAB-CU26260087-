#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q3
# Display the password/account status of a test user without displaying the
# actual password.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# passwd -S shows STATUS only (never the hash)
sudo passwd -S $(whoami)
# Output: <user> <status> <last-change-date> <min> <max> <warn> <inactive>
# Status: P = usable password, L = locked, NP = no password

# Detailed aging/expiry information:
sudo chage -l $(whoami)

# NOTE: do NOT 'cat /etc/shadow' - it contains the password hashes.
