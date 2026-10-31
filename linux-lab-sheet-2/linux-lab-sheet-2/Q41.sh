#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 41:
# Construct a single-line command using find and chmod to grant execute
# permissions (+x) to all .sh files in your working directory tree
# simultaneously.

# ---------- Solution ----------
find . -type f -name "*.sh" -exec chmod +x {} \;
# faster alternative (batches files):
# find . -type f -name "*.sh" -exec chmod +x {} +
