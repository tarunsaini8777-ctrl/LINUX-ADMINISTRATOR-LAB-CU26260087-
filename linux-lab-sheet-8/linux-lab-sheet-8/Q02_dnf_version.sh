#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q2
# Display the installed DNF version and verify that the dnf command is
# available on the system.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
dnf --version
command -v dnf                 # path of the dnf command (e.g. /usr/bin/dnf)
rpm -qf "$(command -v dnf)"
if command -v dnf >/dev/null; then echo "dnf is available"; else echo "dnf is NOT available"; fi
