#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 12:
# Use symbolic chmod syntax to remove write permissions from the group on a
# file named document.txt.

# ---------- Solution ----------
touch document.txt
chmod g-w document.txt
ls -l document.txt
