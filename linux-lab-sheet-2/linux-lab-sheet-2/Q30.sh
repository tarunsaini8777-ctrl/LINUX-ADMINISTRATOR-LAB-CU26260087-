#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 30:
# Filter system processes to list only those belonging to your logged-in
# username using ps aux | grep $USER.

# ---------- Solution ----------
ps aux | grep $USER
# hide the grep process itself:
ps aux | grep $USER | grep -v grep
