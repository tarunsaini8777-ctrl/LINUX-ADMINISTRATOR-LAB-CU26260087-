#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q7
# Set a password for labuser1 and verify the password/account status.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo passwd labuser1                    # type the new password twice
# Non-interactive alternative (for scripts/testing only):
# echo 'labuser1:Lab@12345' | sudo chpasswd

sudo passwd -S labuser1                 # status should now be P (usable password)
