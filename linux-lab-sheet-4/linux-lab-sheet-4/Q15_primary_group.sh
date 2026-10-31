#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q15
# Modify labuser1 so that a specified existing group becomes the user's
# primary group. Verify the result.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
echo "Before:"; id labuser1

sudo usermod -g userlabgroup labuser1     # -g (lower case) = PRIMARY group (must already exist)

echo "After:";  id labuser1
id -gn labuser1                           # primary group name
getent passwd labuser1 | cut -d: -f4      # GID field in /etc/passwd
