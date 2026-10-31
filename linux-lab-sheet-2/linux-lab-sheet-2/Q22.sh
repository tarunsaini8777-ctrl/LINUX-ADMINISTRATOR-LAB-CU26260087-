#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 22:
# Explain the exact difference in rights between running chmod 700 file and
# running chmod 007 file.

# ---------- Solution ----------
# chmod 700 file  -> rwx------
#   Owner: read, write, execute | Group: nothing | Others: nothing
#   Only the owner can use the file.
#
# chmod 007 file  -> ------rwx
#   Owner: NOTHING | Group: nothing | Others: read, write, execute
#   Everyone EXCEPT the owner/group gets full access. Linux checks the
#   owner class first, so even the owner is denied (though the owner can
#   still change permissions back with chmod).
#   This is a very unusual and dangerous/illogical setting.
touch file
chmod 700 file && ls -l file
chmod 007 file && ls -l file
