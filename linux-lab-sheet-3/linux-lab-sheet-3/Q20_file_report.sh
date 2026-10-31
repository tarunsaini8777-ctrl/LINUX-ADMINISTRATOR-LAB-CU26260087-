#!/bin/bash
# Linux Administration Lab Sheet - 3
# Integrated File Report
# Create file_report.sh that accepts exactly one filename, verifies that it
# exists and is readable, displays its line/word/character counts using wc,
# and appends a timestamped processing record to logs/execution_history.log.
# Test both successful and failure cases.

# ---------- Solution ----------
LOG_DIR="$HOME/linux_lab3/logs"
LOG_FILE="$LOG_DIR/execution_history.log"
mkdir -p "$LOG_DIR"
now() { date '+%Y-%m-%d %H:%M:%S'; }

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    echo "$(now) - FAILED: wrong number of arguments ($#)" >> "$LOG_FILE"
    exit 1
fi

file=$1

if [ ! -e "$file" ]; then
    echo "Error: '$file' does not exist"
    echo "$(now) - FAILED: '$file' does not exist" >> "$LOG_FILE"
    exit 1
fi

if [ ! -r "$file" ]; then
    echo "Error: '$file' is not readable"
    echo "$(now) - FAILED: '$file' is not readable" >> "$LOG_FILE"
    exit 1
fi

lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")

echo "File       : $file"
echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $chars"

echo "$(now) - PROCESSED: $file (lines=$lines, words=$words, chars=$chars)" >> "$LOG_FILE"

# Test:
#   ./Q20_file_report.sh ~/linux_lab3/data/notes.txt   (success)
#   ./Q20_file_report.sh missing.txt                    (failure)
#   ./Q20_file_report.sh                                (failure: no argument)
#   cat ~/linux_lab3/logs/execution_history.log
