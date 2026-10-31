#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 28:
# Remove the tree package after testing, and verify its uninstallation using
# the package manager list command.

# ---------- Solution ----------
sudo apt remove tree -y
apt list --installed | grep '^tree/'    # no output = removed
# dpkg -l | grep tree
# dnf list installed | grep tree        # RHEL/Fedora
