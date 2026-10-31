#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q16
# Use setfacl to give a specified user read and write permission on
# aclfile.txt without changing the normal owner/group permission bits. Verify
# using getfacl.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

setfacl -m u:acluser:rw aclfile.txt     # -m = modify, u:<user>:<perms>

getfacl aclfile.txt                     # shows user:acluser:rw-
ls -l aclfile.txt                       # a '+' after the permissions means an ACL exists

# Note: once a named entry exists, the 'group' field of ls -l shows the MASK.
# The owner (user::) and owning group (group::) entries are NOT modified.
