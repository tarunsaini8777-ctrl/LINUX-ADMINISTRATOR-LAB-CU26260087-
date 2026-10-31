#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q2
# Display the long listing of permissions.txt and identify the owner, group
# and current rwx permissions.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

ls -l permissions.txt
# Example:  -rw-rw-r-- 1 student student 0 Oct 31 10:00 permissions.txt
#           |||||||||| |  |       |
#           |||||||||| |  |       +-- group owner
#           |||||||||| |  +---------- user (owner)
#           |||||||||| +------------- hard-link count
#           ++++++++++--------------- type + permissions
#
# First character : - file, d directory, l symlink
# Next 9 characters in 3 sets:  rw-  = owner(user)
#                               rw-  = group
#                               r--  = others
# r = read (4), w = write (2), x = execute (1), - = not granted

stat -c 'Owner: %U | Group: %G | Permissions: %A (%a)' permissions.txt
