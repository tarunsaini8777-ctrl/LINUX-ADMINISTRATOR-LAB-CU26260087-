#!/bin/bash
# Linux Administration Lab Sheet - 3
# Even or Odd
# Create even_odd.sh that accepts one integer as $1 and reports whether it is
# even or odd. If the argument is missing, display a usage message and exit
# with a non-zero status.

# ---------- Solution ----------
if [ $# -lt 1 ]; then
    echo "Usage: $0 <integer>"
    exit 1
fi

num=$1

if [ $((num % 2)) -eq 0 ]; then
    echo "$num is Even"
else
    echo "$num is Odd"
fi

# Run:
#   chmod +x Q06_even_odd.sh
#   ./Q06_even_odd.sh 10      -> Even
#   ./Q06_even_odd.sh 7       -> Odd
#   ./Q06_even_odd.sh         -> usage message, then: echo $?  (prints 1)
