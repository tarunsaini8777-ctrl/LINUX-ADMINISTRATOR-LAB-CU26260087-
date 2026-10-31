#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 50:
# Find all files in /var/log that were modified within the last 7 days using
# find -mtime.

# ---------- Solution ----------
find /var/log -type f -mtime -7
