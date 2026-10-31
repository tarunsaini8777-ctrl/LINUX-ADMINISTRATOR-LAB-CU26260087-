#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 28:
# Change permissions of class_list.txt so only the owner has read and write
# rights (no execute), and verify using long listing.

# ---------- Solution ----------
chmod 600 class_list.txt
# symbolic equivalent:
# chmod u=rw,go= class_list.txt
ls -l class_list.txt   # expect: -rw-------
