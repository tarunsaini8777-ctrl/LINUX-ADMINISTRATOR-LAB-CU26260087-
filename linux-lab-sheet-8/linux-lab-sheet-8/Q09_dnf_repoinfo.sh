#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q9
# Display detailed information about a selected DNF repository.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

# Pick the first enabled repository automatically
repo=$(dnf repolist --enabled -q | awk 'NR>1 {print $1; exit}')
echo "Selected repository: $repo"

dnf repoinfo "$repo"            # id, name, revision, size, packages, base URL, status
# older dnf: dnf repolist -v "$repo"

# Repository definition file contents:
grep -l "\[$repo\]" /etc/yum.repos.d/*.repo 2>/dev/null | head -1 | xargs -r cat
