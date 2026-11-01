#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q18
# Display the transaction history of DNF and identify a recent install, update
# or removal transaction.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

dnf history                      # ID | Command line | Date and time | Action(s) | Altered
dnf history list | head -10

# Details of the most recent transaction (packages installed/removed/upgraded):
sudo dnf history info last
# Details of a specific one:   sudo dnf history info <ID>

# Look for the Action(s) column:  Install / Upgrade / Removed / Erase
