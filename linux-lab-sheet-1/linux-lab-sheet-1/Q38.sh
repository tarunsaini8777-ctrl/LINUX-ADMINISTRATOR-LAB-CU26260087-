#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 38:
# Recursively search all files in your current directory tree for the word
# 'error' using grep -r.

# ---------- Solution ----------
grep -r "error" .
# case-insensitive with line numbers:
# grep -rni "error" .
