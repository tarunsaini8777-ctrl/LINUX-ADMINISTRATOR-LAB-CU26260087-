#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q2
# Display the account entry of a test user from /etc/passwd and identify the
# fields stored in the entry.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# Using the current user as the test user (works before any lab user exists)
grep "^$(whoami):" /etc/passwd
# or: getent passwd $(whoami)

# FIELDS (separated by ':'):
#   username : x : UID : GID : comment(GECOS) : home directory : login shell
#     1       2    3     4        5                 6                 7
#   1 = login name                 2 = 'x' means the password hash is in /etc/shadow
#   3 = user ID                    4 = primary group ID
#   5 = full name / description    6 = home directory   7 = login shell

# Print each field on its own line:
getent passwd $(whoami) | awk -F: '{print "Username: "$1"\nPassword: "$2"\nUID: "$3"\nGID: "$4"\nComment: "$5"\nHome: "$6"\nShell: "$7}'
