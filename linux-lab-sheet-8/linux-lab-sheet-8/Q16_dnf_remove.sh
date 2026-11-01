#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q16
# Remove a selected test package using dnf and verify that it has been
# removed.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

pkg=tree
rpm -q $pkg || sudo dnf install $pkg -y    # make sure there is something to remove

sudo dnf remove $pkg -y
# Tip: preview with  sudo dnf remove --assumeno $pkg  (shows dependent packages that would also go)

# Verify
rpm -q $pkg                                 # "package tree is not installed"
dnf list installed $pkg                     # "Error: No matching Packages to list"
command -v tree || echo "tree command no longer exists"
