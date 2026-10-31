#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q20
# Clean up all test users and lab-only groups created during this lab. Verify
# that no unintended system account has been modified.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
# Remove only the lab users (skips users that do not exist)
for u in labuser1 labuser2 labuser3 labuser4; do
    if id "$u" &>/dev/null; then
        sudo userdel -r "$u" 2>/dev/null
        echo "Deleted user: $u"
    fi
done

# Remove lab-only groups (userdel may already have removed some)
for g in userlabgroup labworkflowgrp labuser1 labuser2 labuser3 labuser4; do
    if getent group "$g" &>/dev/null; then
        sudo groupdel "$g"
        echo "Deleted group: $g"
    fi
done

# Leftover lab home directories
sudo rm -rf /home/labuser1 /home/labuser2 /home/labuser2_nomove /home/labuser2_moved /home/labuser3 /home/labuser4

# ---- VERIFY ----
echo "--- Lab users/groups remaining (should be empty) ---"
getent passwd | grep -E '^labuser' ; getent group | grep -E '^(labuser|userlabgroup|labworkflowgrp)'

echo "--- Normal (human) accounts, UID >= 1000 ---"
getent passwd | awk -F: '$3>=1000 && $3<65534 {print $1" (UID "$3")"}'

# Compare with the snapshot taken by 00_lab_setup.sh (no output = nothing changed)
if [ -f ~/lab4_snapshot/passwd.before ]; then
    echo "--- diff /etc/passwd vs snapshot ---"
    diff ~/lab4_snapshot/passwd.before /etc/passwd && echo "/etc/passwd unchanged"
    echo "--- diff /etc/group vs snapshot ---"
    diff ~/lab4_snapshot/group.before /etc/group && echo "/etc/group unchanged"
else
    echo "(No snapshot found - run 00_lab_setup.sh before Q01 next time)"
fi
