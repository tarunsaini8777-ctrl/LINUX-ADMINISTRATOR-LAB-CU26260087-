#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 6:
# Run the ps command in your terminal and record how many processes are active
# in your current shell session.

# ---------- Solution ----------
ps
# count of processes (excluding the header line):
ps | tail -n +2 | wc -l
