#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q13
# Display detailed password-aging information for labuser3 using chage.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo chage -l labuser3
# Shows: Last password change, Password expires, Password inactive,
#        Account expires, Minimum/Maximum number of days, Warning days
