#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q13
# Restore the umask to its previous value and verify the current umask.

# ---------- Solution ----------
previous=$(umask)              # save the old value
echo "Previous umask : $previous"

umask 027
echo "Changed umask  : $(umask)"

umask "$previous"              # restore
echo "Restored umask : $(umask)"

# NOTE: a script runs in its own shell, so the umask of your terminal never changes.
# In an interactive terminal type the same commands directly:
#   old=$(umask); umask 027; ...; umask $old; umask
