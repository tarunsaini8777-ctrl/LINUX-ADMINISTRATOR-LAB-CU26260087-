#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 48:
# Set the Sticky Bit on a directory /public_tmp using symbolic (chmod o+t) or
# octal (chmod 1777) mode, and explain why it prevents unauthorized file
# deletion.

# ---------- Solution ----------
sudo mkdir -p /public_tmp
sudo chmod 1777 /public_tmp      # octal (1 = sticky bit)
# sudo chmod o+t /public_tmp     # symbolic equivalent
ls -ld /public_tmp               # drwxrwxrwt  (t at the end)

# EXPLANATION:
#  Normally anyone with write permission on a directory can delete or rename
#  ANY file in it, even files owned by others. With the sticky bit set, a
#  file can be deleted/renamed only by its owner, the directory's owner, or
#  root. This is why /tmp (drwxrwxrwt) is safe for multi-user sharing.
