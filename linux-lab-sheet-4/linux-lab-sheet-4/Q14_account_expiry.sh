#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q14
# Set an account expiration date for labuser3 and verify the expiration
# information.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# Expire 30 days from today (format YYYY-MM-DD)
sudo chage -E "$(date -d '+30 days' +%F)" labuser3
# or a fixed date: sudo chage -E 2027-12-31 labuser3

sudo chage -l labuser3 | grep "Account expires"

# To remove the expiry again:
# sudo chage -E -1 labuser3
