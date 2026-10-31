#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q19
# Create a complete user-management workflow: create a user, set a password,
# assign a shell, add a supplementary group, lock/unlock the account and
# verify all settings.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
USER_NAME=labuser4
GROUP_NAME=labworkflowgrp

echo "1. Create user with home directory and bash shell"
sudo useradd -m -s /bin/bash $USER_NAME

echo "2. Set password"
echo "$USER_NAME:Lab@12345" | sudo chpasswd      # or interactive: sudo passwd $USER_NAME

echo "3. Create group and add user as supplementary member"
sudo groupadd $GROUP_NAME
sudo usermod -aG $GROUP_NAME $USER_NAME

echo "4. Lock the account"
sudo usermod -L $USER_NAME
sudo passwd -S $USER_NAME                         # L

echo "5. Unlock the account"
sudo usermod -U $USER_NAME
sudo passwd -S $USER_NAME                         # P

echo "6. Verify all settings"
getent passwd $USER_NAME
id $USER_NAME
ls -ld /home/$USER_NAME
sudo chage -l $USER_NAME
