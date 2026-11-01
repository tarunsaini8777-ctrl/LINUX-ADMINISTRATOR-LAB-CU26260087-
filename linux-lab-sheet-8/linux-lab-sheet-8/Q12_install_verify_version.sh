#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q12
# Install a package from an available repository and verify its installed
# version using rpm and dnf.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

sudo dnf install wget -y

echo "--- rpm ---"
rpm -q wget
rpm -q --qf '%{NAME} version %{VERSION}-%{RELEASE}\n' wget

echo "--- dnf ---"
dnf list installed wget
dnf info wget | grep -E '^(Name|Version|Release|Repository|From repo)'
wget --version | head -1
