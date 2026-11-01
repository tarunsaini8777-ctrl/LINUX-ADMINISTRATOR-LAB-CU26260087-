#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q7
# Query the RPM database and display the installation date and other available
# information for a selected package.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

pkg=bash

rpm -qi $pkg | grep -E 'Name|Version|Release|Install Date|Size|Vendor|Build Date'
rpm -q --last $pkg                          # install date/time (newest first)
rpm -q --qf 'Package: %{NAME}-%{VERSION}-%{RELEASE}.%{ARCH}\nInstalled: %{INSTALLTIME:date}\nBuilt: %{BUILDTIME:date}\nSize: %{SIZE} bytes\nSummary: %{SUMMARY}\n' $pkg

echo "--- 5 most recently installed packages ---"
rpm -qa --last | head -5
