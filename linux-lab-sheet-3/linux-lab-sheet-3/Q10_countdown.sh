#!/bin/bash
# Linux Administration Lab Sheet - 3
# While Loop
# Create countdown.sh that uses a while loop to print a countdown from 10 to 1
# and then prints 'Done!'.

# ---------- Solution ----------
count=10

while [ $count -ge 1 ]; do
    echo $count
    count=$((count - 1))
done

echo "Done!"

# Run: chmod +x Q10_countdown.sh && ./Q10_countdown.sh
