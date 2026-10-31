#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 41:
# Combine find and wc -l in a single pipeline to count how many total .txt
# files exist under your home directory tree.

# ---------- Solution ----------
find ~ -type f -name "*.txt" | wc -l
