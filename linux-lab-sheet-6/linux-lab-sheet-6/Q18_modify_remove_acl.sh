#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q18
# Modify and remove a specific ACL entry from aclfile.txt using setfacl.
# Verify the changes using getfacl.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

echo "--- Before ---"; getfacl aclfile.txt

# MODIFY: change acluser from rw to read-only
setfacl -m u:acluser:r aclfile.txt
echo "--- After modify (acluser = r--) ---"; getfacl aclfile.txt

# REMOVE one entry (-x)
setfacl -x u:acluser aclfile.txt
echo "--- After removing acluser entry ---"; getfacl aclfile.txt

# Other useful options:
#   setfacl -x g:aclgroup aclfile.txt     remove the group entry
#   setfacl -b aclfile.txt                remove ALL ACL entries
