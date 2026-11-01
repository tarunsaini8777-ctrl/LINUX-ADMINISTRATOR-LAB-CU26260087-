#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q5
# Create a gzip-compressed file from a text file and observe the change in its
# filename.

# ---------- Solution ----------
# --- helper: make sure ~/lab11/archive_lab with 3 text files exists (same as Q1) ---
mkdir -p ~/lab11/archive_lab
cd ~/lab11 || exit 1
[ -f archive_lab/file1.txt ] || {
    echo "This is file 1: Linux archive and compression lab."  > archive_lab/file1.txt
    echo "This is file 2: tar bundles many files into one."     > archive_lab/file2.txt
    echo "This is file 3: gzip and zip compress data."          > archive_lab/file3.txt
}
# ------------------------------------------------------------------------------

# Make a text file big enough to show compression
seq 1 20000 > numbers.txt
ls -l numbers.txt

gzip -f numbers.txt            # compresses and REPLACES the original: numbers.txt -> numbers.txt.gz (-f overwrites an old .gz)
echo "--- after gzip ---"
ls -l numbers.txt* 2>&1        # numbers.txt is gone, numbers.txt.gz exists (.gz added)
file numbers.txt.gz

# Keep the original too:  gzip -k numbers.txt      Better compression: gzip -9 numbers.txt
