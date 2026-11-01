#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q8
# List the contents of archive.tar.gz without extracting it.

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

[ -f archive.tar.gz ] || tar -czf archive.tar.gz archive_lab

tar -tzf archive.tar.gz        # -t list, -z gzip
tar -tzvf archive.tar.gz       # verbose
# modern tar detects the compression automatically:  tar -tf archive.tar.gz
