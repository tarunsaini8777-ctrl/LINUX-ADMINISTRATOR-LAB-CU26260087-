#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q11
# Install a suitable package using dnf and verify that the package has been
# installed.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

sudo dnf install tree -y

# Verify
rpm -q tree
dnf list installed tree
tree --version
