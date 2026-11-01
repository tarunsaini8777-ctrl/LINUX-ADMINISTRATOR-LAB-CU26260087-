#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q3
# Search the installed RPM database for a selected package and determine
# whether it is installed.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

pkg=bash

rpm -q $pkg                                   # prints name-version-release.arch  if installed
rpm -qa | grep -i $pkg                        # search the whole database by name
rpm -q $pkg >/dev/null && echo "$pkg is INSTALLED" || echo "$pkg is NOT installed"

# a package that is probably not installed yet:
rpm -q tree          # "package tree is not installed"  (before Q11)
