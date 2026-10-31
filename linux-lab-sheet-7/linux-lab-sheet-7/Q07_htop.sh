#!/bin/bash
# Linux Lab 7: Process Management
# Q7
# Start htop and use its interactive interface to view processes and resource
# usage.

# ---------- Solution ----------
# Install htop if it is missing (Ubuntu/Debian; use dnf on RHEL/Fedora)
command -v htop >/dev/null || sudo apt install htop -y

# htop is interactive, so it is started only from a real terminal
if [ -t 0 ] && command -v htop >/dev/null; then htop; fi

# Keys inside htop:
#   Up/Down  move selection         F3 or /   search
#   F4 or \  filter                 F5        tree view (parent-child)
#   F6       sort by column         F9        kill (choose signal)
#   F7 / F8  nice -/+               u         show processes of one user
#   F10 or q quit
# The top of the screen shows per-CPU bars, memory and swap usage.
