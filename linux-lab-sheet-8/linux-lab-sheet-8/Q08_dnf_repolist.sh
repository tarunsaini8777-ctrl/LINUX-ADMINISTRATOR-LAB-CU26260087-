#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q8
# List the currently configured DNF repositories and identify their
# enabled/disabled status.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

dnf repolist                    # enabled repositories only
dnf repolist --enabled
dnf repolist --disabled         # disabled repositories only
dnf repolist all                # all repositories with a status column (enabled/disabled)

ls /etc/yum.repos.d/            # repository definition files
