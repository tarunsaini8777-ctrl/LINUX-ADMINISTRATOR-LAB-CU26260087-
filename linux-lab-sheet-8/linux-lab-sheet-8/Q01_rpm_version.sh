#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q1
# Display the installed RPM version and verify that the rpm command is
# available on the system.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
rpm --version
command -v rpm                 # path of the rpm command (e.g. /usr/bin/rpm)
which rpm
type rpm
rpm -qf "$(command -v rpm)"    # which package provides the rpm command itself
if command -v rpm >/dev/null; then echo "rpm is available"; else echo "rpm is NOT available"; fi
