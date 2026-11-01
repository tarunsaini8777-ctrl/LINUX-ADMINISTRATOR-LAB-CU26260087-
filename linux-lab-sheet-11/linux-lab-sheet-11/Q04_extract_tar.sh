#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q4
# Extract files.tar into a new directory named extracted_tar.

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

[ -f files.tar ] || tar -cf files.tar archive_lab

mkdir -p extracted_tar
tar -xvf files.tar -C extracted_tar         # -x extract | -C change to this directory first

# VERIFY
ls -R extracted_tar
diff -r archive_lab extracted_tar/archive_lab && echo "Extracted files are identical to the originals"
