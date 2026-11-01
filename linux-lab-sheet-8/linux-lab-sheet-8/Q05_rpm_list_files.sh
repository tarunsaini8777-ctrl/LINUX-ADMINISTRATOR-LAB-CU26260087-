#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q5
# List all files installed by a selected RPM package using rpm.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

rpm -ql bash                    # every file installed by the package
rpm -ql bash | wc -l            # number of files
rpm -qc bash                    # only configuration files
rpm -qd bash                    # only documentation files
rpm -ql bash | head -10
