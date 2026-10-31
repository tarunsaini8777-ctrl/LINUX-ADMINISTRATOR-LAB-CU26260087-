#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 27:
# Install the tree package using your system's package manager (apt or dnf),
# and run tree on your home directory.

# ---------- Solution ----------
sudo apt install tree -y     # Ubuntu/Debian
# sudo dnf install tree -y   # RHEL/Fedora
tree ~
