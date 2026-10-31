#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q15
# Display the current ACL of aclfile.txt using getfacl and identify the owner,
# group, user, group and mask entries.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

getfacl aclfile.txt

# Example output:
#   # file: aclfile.txt
#   # owner: student          <- file owner
#   # group: student          <- owning group
#   user::rw-                 <- permissions of the owner (user)
#   user:acluser:rw-          <- NAMED user entry (appears after Q16)
#   group::r--                <- permissions of the owning group
#   group:aclgroup:r--        <- NAMED group entry (appears after Q17)
#   mask::rw-                 <- MASK: maximum permissions for named users + groups
#   other::r--                <- permissions of others
#
# A file with no extra ACL shows only user::, group:: and other::.
# The mask:: entry appears once a named user/group entry is added (see Q16).
