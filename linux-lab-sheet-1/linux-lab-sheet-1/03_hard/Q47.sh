#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 47:
# Use touch on an existing file to update its access and modification
# timestamp to the current system time without modifying its contents.

# ---------- Solution ----------
ls -l --time-style=full-iso class_list.txt   # before
touch class_list.txt
ls -l --time-style=full-iso class_list.txt   # after (timestamp updated)
