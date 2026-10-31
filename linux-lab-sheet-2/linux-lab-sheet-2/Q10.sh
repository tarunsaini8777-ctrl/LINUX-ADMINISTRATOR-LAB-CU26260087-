#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 10:
# Search for an available software package named tree using your system's
# package manager without installing it.

# ---------- Solution ----------
apt search tree          # Ubuntu/Debian
apt-cache policy tree    # shows availability/version
# dnf search tree        # RHEL/Fedora
