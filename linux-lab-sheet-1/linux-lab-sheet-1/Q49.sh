#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 49:
# Redirect the stdout of a command (e.g., uname -a) to a file named
# sys_info.txt, then view its content.

# ---------- Solution ----------
uname -a > sys_info.txt
cat sys_info.txt
