#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 37:
# Use find paired with -exec to locate all .log files in your current working
# path and display their contents in a single command line.

# ---------- Solution ----------
find . -type f -name "*.log" -exec cat {} \;
