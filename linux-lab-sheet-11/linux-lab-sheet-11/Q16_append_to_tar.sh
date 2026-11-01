#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q16
# Create a tar archive, add another file to the archive, and verify that the
# new file is present.

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

echo "This is an extra file added later." > extra.txt

tar -cvf mytar.tar archive_lab/file1.txt archive_lab/file2.txt     # create with two files
echo "--- before ---"; tar -tf mytar.tar

tar -rvf mytar.tar extra.txt           # -r append a file to an existing (uncompressed) tar
echo "--- after ---";  tar -tf mytar.tar

# VERIFY
tar -tf mytar.tar | grep extra.txt && echo "extra.txt is present in the archive"
# Note: -r works only on plain .tar files, not on .tar.gz
