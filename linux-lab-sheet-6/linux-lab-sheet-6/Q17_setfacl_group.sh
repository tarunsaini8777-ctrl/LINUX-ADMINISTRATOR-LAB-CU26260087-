#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q17
# Use setfacl to give a specified group read permission on aclfile.txt and
# verify the ACL.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

setfacl -m g:aclgroup:r aclfile.txt     # g:<group>:<perms>

getfacl aclfile.txt                     # shows group:aclgroup:r--
