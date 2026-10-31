#!/bin/bash
# Linux Administration Lab Sheet - 3
# Loop Through Files
# Create list_txt.sh that loops through all .txt files inside the data
# directory and prints each filename with a short message.

# ---------- Solution ----------
DATA_DIR="$HOME/linux_lab3/data"

for file in "$DATA_DIR"/*.txt; do
    echo "Found text file: $(basename "$file")"
done

# Run: chmod +x Q09_list_txt.sh && ./Q09_list_txt.sh
