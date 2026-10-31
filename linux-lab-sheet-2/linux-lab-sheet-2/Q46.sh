#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 46:
# Set the Set User ID (SUID) bit on an executable binary custom_tool, write
# the chmod command, and explain its execution privilege implications.

# ---------- Solution ----------
chmod u+s custom_tool        # symbolic
# chmod 4755 custom_tool     # numeric (4 = SUID)
ls -l custom_tool            # -rwsr-xr-x  (s in the owner's execute position)

# IMPLICATIONS:
#  When anyone runs a SUID file, it executes with the privileges of the
#  FILE'S OWNER (not the user who launched it). Example: /usr/bin/passwd is
#  owned by root with SUID so normal users can update /etc/shadow.
#  Risk: if the program has a bug or is writable by others, an attacker can
#  gain owner (often root) privileges. Use SUID sparingly and audit it with:
#      find / -perm -4000 -type f 2>/dev/null
