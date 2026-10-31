#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 47:
# Set the Set Group ID (SGID) bit on a shared folder /shared_dir using octal
# mode (2775), and explain how newly created files inherit group ownership.

# ---------- Solution ----------
sudo mkdir -p /shared_dir
sudo chmod 2775 /shared_dir
ls -ld /shared_dir           # drwxrwsr-x  (s in the group's execute position)

# EXPLANATION:
#  With SGID on a directory, every new file/subdirectory created inside it
#  inherits the GROUP of the directory (not the creator's primary group).
#  New subdirectories also get the SGID bit. This keeps team files
#  consistently owned by one group for shared collaboration.
