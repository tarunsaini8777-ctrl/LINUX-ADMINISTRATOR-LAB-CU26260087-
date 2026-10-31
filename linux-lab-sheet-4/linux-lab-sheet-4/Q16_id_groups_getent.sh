#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q16
# Display the users and groups associated with a selected account using id,
# groups and getent.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
user=labuser1

id $user                       # UID, GID, all groups
groups $user                   # group names
getent passwd $user            # account entry from /etc/passwd
getent group | grep "$user"    # every group in which the user appears
getent group userlabgroup      # a specific group and its members
