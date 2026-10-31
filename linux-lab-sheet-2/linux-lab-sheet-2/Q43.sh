#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 43:
# Install a package (e.g., tree), and use the low-level package tool (dpkg -L
# <pkg> or rpm -ql <pkg>) to list every file installed onto the filesystem by
# that package.

# ---------- Solution ----------
sudo apt install tree -y
dpkg -L tree            # Ubuntu/Debian: list files installed by 'tree'
# rpm -ql tree          # RHEL/Fedora
