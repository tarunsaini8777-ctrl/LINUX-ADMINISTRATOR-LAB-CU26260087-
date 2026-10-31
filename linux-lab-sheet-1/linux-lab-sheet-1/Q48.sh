#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 48:
# Create a file containing multiple duplicate lines, then use sort and uniq to
# display only unique lines from the file.

# ---------- Solution ----------
printf "apple\nbanana\napple\ncherry\nbanana\napple\n" > dup.txt
sort dup.txt | uniq
# one-step alternative:
# sort -u dup.txt
