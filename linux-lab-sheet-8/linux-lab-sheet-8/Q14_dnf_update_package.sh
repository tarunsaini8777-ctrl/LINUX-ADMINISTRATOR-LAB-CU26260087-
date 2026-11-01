#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q14
# Update a selected installed package using dnf and verify the new version.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

pkg=tree
rpm -q $pkg || sudo dnf install $pkg -y     # make sure it is installed

echo "Version BEFORE: $(rpm -q $pkg)"
sudo dnf update $pkg -y                     # (dnf upgrade is the same command)
echo "Version AFTER : $(rpm -q $pkg)"

# "Nothing to do" means the package is already the latest version.
dnf history | head -5                       # the transaction is recorded
