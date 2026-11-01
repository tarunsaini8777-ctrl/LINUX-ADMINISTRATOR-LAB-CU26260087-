#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q13
# Display available updates for installed packages using dnf without
# immediately applying them.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

dnf check-update                # lists updates only; nothing is installed
echo "exit status: $?"          # 100 = updates available, 0 = no updates

dnf list updates                # same idea, listing format
dnf updateinfo list             # advisories (security / bugfix / enhancement)
dnf updateinfo list security    # security updates only
