#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q6
# Identify which installed RPM package owns a specified file on the system.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

rpm -qf /etc/passwd             # package that owns /etc/passwd  (setup)
rpm -qf /usr/bin/ls             # coreutils
rpm -qf /bin/bash

# The file must exist on disk. For a file NOT installed yet use dnf:
#   dnf provides /usr/bin/tree
