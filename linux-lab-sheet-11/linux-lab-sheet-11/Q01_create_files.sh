#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q1
# Create a directory named archive_lab and create three text files inside it.
# Add sample content to each file.

# ---------- Solution ----------
mkdir -p ~/lab11/archive_lab
cd ~/lab11 || exit 1

echo "This is file 1: Linux archive and compression lab."  > archive_lab/file1.txt
echo "This is file 2: tar bundles many files into one."     > archive_lab/file2.txt
echo "This is file 3: gzip and zip compress data."          > archive_lab/file3.txt

ls -l archive_lab
head archive_lab/*.txt          # show the content of each file
