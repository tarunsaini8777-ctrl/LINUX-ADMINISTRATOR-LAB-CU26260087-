#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 2:
# Change the permissions of notes.txt to 644 using numeric (octal) mode, and
# verify the changes using ls -l.

# ---------- Solution ----------
chmod 644 notes.txt
ls -l notes.txt   # expect: -rw-r--r--
