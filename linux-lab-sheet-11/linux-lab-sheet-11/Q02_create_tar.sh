#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q2
# Create a tar archive named files.tar containing all files from archive_lab.
# Verify that the archive was created.

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

tar -cvf files.tar archive_lab
# -c create | -v verbose (list files) | -f file name of the archive

# VERIFY
ls -lh files.tar
file files.tar                 # 'POSIX tar archive'
tar -tf files.tar              # quick look at what is inside

# Without the directory name inside the archive:  tar -cvf files.tar -C archive_lab .
