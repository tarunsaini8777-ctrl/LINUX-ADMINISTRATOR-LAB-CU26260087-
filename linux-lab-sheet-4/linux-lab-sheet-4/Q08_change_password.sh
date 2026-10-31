#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q8
# Change the password of labuser1 and verify the account status again.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
echo "Status BEFORE:"; sudo passwd -S labuser1

sudo passwd labuser1                    # enter a NEW password twice
# Non-interactive alternative:
# echo 'labuser1:NewLab@456' | sudo chpasswd

echo "Status AFTER:";  sudo passwd -S labuser1   # last-change date is updated
