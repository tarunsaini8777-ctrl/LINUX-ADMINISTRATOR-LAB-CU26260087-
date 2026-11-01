#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q4
# Display detailed information about an installed package using rpm.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

rpm -qi bash
# Shows: Name, Version, Release, Architecture, Install Date, Group, Size, License,
#        Signature, Source RPM, Build Date, Vendor, URL, Summary, Description
