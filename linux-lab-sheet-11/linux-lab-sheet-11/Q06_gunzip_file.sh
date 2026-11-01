#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q6
# Use gunzip to decompress the gzip-compressed file and verify that the
# original file is restored.

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

# Prepare: original file + its checksum + compressed copy
seq 1 20000 > numbers.txt
md5sum numbers.txt > numbers.md5
gzip -f numbers.txt

echo "--- before gunzip ---"; ls -l numbers.txt* 
gunzip numbers.txt.gz          # same as: gzip -d numbers.txt.gz
echo "--- after gunzip ---";  ls -l numbers.txt*

# VERIFY the original is restored byte-for-byte
md5sum -c numbers.md5
