#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q12
# Lock labuser3 and verify that the account is locked. Then unlock it and
# verify the result.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# Give labuser3 a password first (a brand-new user has no password and shows 'L' already)
echo 'labuser3:Lab@12345' | sudo chpasswd
sudo passwd -S labuser3                   # status P

# LOCK
sudo usermod -L labuser3                  # same as: sudo passwd -l labuser3
sudo passwd -S labuser3                   # status L (locked)
sudo getent shadow labuser3 | cut -d: -f2 | cut -c1          # prints '!' when locked (hash itself is not shown)

# UNLOCK
sudo usermod -U labuser3                  # same as: sudo passwd -u labuser3
sudo passwd -S labuser3                   # status P again
