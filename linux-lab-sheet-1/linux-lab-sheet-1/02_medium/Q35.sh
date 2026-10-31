#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 35:
# Move two files (a.txt and b.txt) simultaneously into a target folder named
# archive/.

# ---------- Solution ----------
mkdir -p archive
mv a.txt b.txt archive/
ls archive
