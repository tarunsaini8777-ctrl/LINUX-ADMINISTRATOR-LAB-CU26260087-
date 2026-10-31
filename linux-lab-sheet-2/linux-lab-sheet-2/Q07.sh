#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 7:
# Run ps aux and count or estimate the total number of running processes
# across the entire operating system.

# ---------- Solution ----------
ps aux
# total count (excluding the header line):
ps aux | tail -n +2 | wc -l
