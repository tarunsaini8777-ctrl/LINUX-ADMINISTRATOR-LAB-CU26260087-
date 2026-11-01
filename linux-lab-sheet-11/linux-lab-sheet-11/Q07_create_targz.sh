#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q7
# Create a tar.gz archive named archive.tar.gz containing the complete
# archive_lab directory.

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

tar -czvf archive.tar.gz archive_lab
# -c create | -z compress with gzip | -v verbose | -f file name

ls -lh archive.tar.gz
file archive.tar.gz            # 'gzip compressed data'
