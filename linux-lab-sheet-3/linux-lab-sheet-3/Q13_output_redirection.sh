#!/bin/bash
# Linux Administration Lab Sheet - 3
# Output Redirection
# Write commands that redirect the listing of the data directory to
# output/files.txt, first overwriting the file and then demonstrating the
# difference between > and >>.

# ---------- Solution ----------
cd ~/linux_lab3 || exit 1

# '>' creates the file / OVERWRITES existing content
ls data > output/files.txt
echo "--- After first '>' ---"
cat output/files.txt

# '>>' APPENDS to the end of the file (old content is kept)
ls data >> output/files.txt
echo "--- After '>>' (listing appears twice) ---"
cat output/files.txt

# '>' again overwrites everything
ls data > output/files.txt
echo "--- After '>' again (back to a single listing) ---"
cat output/files.txt
