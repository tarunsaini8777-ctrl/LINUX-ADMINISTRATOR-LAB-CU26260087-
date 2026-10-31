#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 19:
# Display the list of currently installed packages on your system using apt
# list --installed (or dnf list installed).

# ---------- Solution ----------
apt list --installed | less
# dnf list installed     # RHEL/Fedora
