#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q19
# Set a default ACL on a directory so that newly created files inside it
# inherit the required access permissions. Create a test file and verify the
# inherited ACL.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

mkdir -p acldir

# Access ACL (so acluser can enter the dir) + DEFAULT ACL (inherited by new files)
setfacl -m u:acluser:rwx acldir
setfacl -d -m u:acluser:rw acldir        # -d = default ACL
# same as: setfacl -m d:u:acluser:rw acldir

getfacl acldir                           # shows default:user:acluser:rw-

touch acldir/testfile.txt                # new file inherits the default ACL
getfacl acldir/testfile.txt              # shows user:acluser:rw-
ls -l acldir
