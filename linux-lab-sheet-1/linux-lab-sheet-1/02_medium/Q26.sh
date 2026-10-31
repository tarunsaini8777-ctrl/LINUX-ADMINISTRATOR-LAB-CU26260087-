#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 26:
# Use grep to search inside class_list.txt for any name containing a specific
# letter (e.g., 'a' or 'R').

# ---------- Solution ----------
grep 'a' class_list.txt
# case-insensitive:
grep -i 'r' class_list.txt
