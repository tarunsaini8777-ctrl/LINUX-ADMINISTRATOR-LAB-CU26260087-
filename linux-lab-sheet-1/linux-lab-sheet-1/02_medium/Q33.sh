#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 33:
# Copy an entire directory structure (project/) into a new folder named
# project_backup/ recursively.

# ---------- Solution ----------
cp -r project project_backup
ls -R project_backup
