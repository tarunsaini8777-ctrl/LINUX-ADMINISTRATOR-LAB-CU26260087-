#!/bin/bash
# Linux Administration Lab Sheet - 3
# Input Redirection and Sorting
# Use data/names.txt and input redirection to sort the names. Extend the
# command so duplicate names are removed.

# ---------- Solution ----------
cd ~/linux_lab3 || exit 1

echo "--- Sorted names (input redirection) ---"
sort < data/names.txt

echo "--- Sorted, duplicates removed ---"
sort < data/names.txt | uniq
# one-step alternative: sort -u < data/names.txt
