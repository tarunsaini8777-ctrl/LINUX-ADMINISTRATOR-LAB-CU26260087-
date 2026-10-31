#!/bin/bash
# Linux Administration Lab Sheet - 3
# Number Classification
# Create number_type.sh that reads an integer and reports whether it is
# positive, negative or zero using if/elif/else.

# ---------- Solution ----------
read -p "Enter an integer: " num

if [ "$num" -gt 0 ]; then
    echo "$num is Positive"
elif [ "$num" -lt 0 ]; then
    echo "$num is Negative"
else
    echo "The number is Zero"
fi

# Run: chmod +x Q05_number_type.sh && ./Q05_number_type.sh
