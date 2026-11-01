#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q19
# Use rpm to verify package installation and use dnf to install, update and
# remove a suitable test package as a complete workflow.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

pkg=tree

echo "1. Check whether the package is installed (rpm)"
rpm -q $pkg || echo "$pkg is not installed"

echo "2. Search and inspect it (dnf)"
dnf info $pkg | head -8

echo "3. Install (dnf)"
sudo dnf install $pkg -y

echo "4. Verify installation (rpm)"
rpm -q $pkg
rpm -qi $pkg | grep -E 'Name|Version|Install Date'
rpm -V $pkg && echo "rpm -V: all files match the RPM database (no output = OK)"
rpm -ql $pkg

echo "5. Update (dnf)"
sudo dnf update $pkg -y
rpm -q $pkg

echo "6. Remove (dnf)"
sudo dnf remove $pkg -y

echo "7. Verify removal (rpm)"
rpm -q $pkg || echo "$pkg has been removed"

echo "8. History"
dnf history | head -6
