#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q10
# Search the configured repositories for a package by name or keyword using
# dnf.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

dnf search tree                 # search name and summary
dnf search all "directory listing"   # search description too
dnf list available tree         # exact package name
dnf info tree                   # details of the available package
