#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 40:
# Display the top 5 CPU-consuming processes currently active on the system
# using ps aux --sort=-%cpu | head -5.

# ---------- Solution ----------
ps aux --sort=-%cpu | head -5
# (first line is the header, so 4 processes are shown; use head -6 for 5 processes)
