#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q15
# Update all packages for which updates are available and verify the result.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

echo "--- Pending updates ---"
dnf check-update

# Preview first (answer 'no' automatically):
# sudo dnf update --assumeno

sudo dnf update -y              # update ALL packages (may take a while; test machine!)

echo "--- Verify ---"
dnf check-update; echo "exit status: $?"    # 0 = everything is up to date
dnf history | head -5
# A reboot may be needed after kernel/glibc updates:  needs-restarting -r
