#!/bin/bash
# Linux Administration Lab Sheet - 3
# Pipeline Practice
# Use a pipeline with ps aux and grep to find processes matching a word of
# your choice. Then create another pipeline that counts the matching lines.

# ---------- Solution ----------
word="bash"

echo "--- Processes matching '$word' ---"
ps aux | grep "$word" | grep -v grep

echo "--- Number of matching lines ---"
ps aux | grep "$word" | grep -v grep | wc -l
