#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q17
# Delete labuser1 without removing its home directory. Verify the account
# entry and home directory separately.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# (On Ubuntu labuser1 had no home - create one so the demo is meaningful)
[ -d /home/labuser1 ] || sudo mkdir -p /home/labuser1

sudo userdel labuser1                 # no -r  => home directory is kept

# Verify account entry
getent passwd labuser1 || echo "Account entry removed from /etc/passwd"
id labuser1 2>&1

# Verify home directory separately
ls -ld /home/labuser1                 # still exists (now owned by an orphaned UID)
# NOTE: userdel may print 'group labuser1 not removed' - that is normal if Q15
#       changed the primary group; Q20 removes the leftover group.
