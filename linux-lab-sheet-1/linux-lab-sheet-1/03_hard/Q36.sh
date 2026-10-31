#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 36:
# Combine commands: Create a directory logs, inside it create app.log with 10
# lines of dummy text using a loop or repeated echo >>, then view the last 3
# lines using tail.

# ---------- Solution ----------
mkdir logs
for i in $(seq 1 10); do
    echo "Dummy log line $i" >> logs/app.log
done
tail -n 3 logs/app.log
