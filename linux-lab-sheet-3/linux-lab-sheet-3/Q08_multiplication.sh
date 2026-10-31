#!/bin/bash
# Linux Administration Lab Sheet - 3
# For Loop Practice
# Create multiplication.sh that accepts a number as $1 and prints its
# multiplication table from 1 to 10 using a for loop.

# ---------- Solution ----------
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

n=$1
for i in {1..10}; do
    echo "$n x $i = $((n * i))"
done

# Run: chmod +x Q08_multiplication.sh && ./Q08_multiplication.sh 7
