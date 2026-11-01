#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q15
# Create a gzip-compressed tar archive and explain the difference between tar
# and gzip in the command sequence used.

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

# EXPLANATION
#   tar  = ARCHIVER: bundles many files/directories into ONE file (no compression by itself).
#   gzip = COMPRESSOR: compresses ONE file (cannot bundle several files).
#   So compressing a directory is a 2-step sequence: tar (bundle) + gzip (compress).
#   'tar -czf' does both steps in a single command (-z calls gzip).

# METHOD 1: two separate steps
tar -cvf backup.tar archive_lab        # step 1: archive  -> backup.tar        (tar)
gzip -f backup.tar                     # step 2: compress -> backup.tar.gz     (gzip, removes backup.tar)

# METHOD 2: one command with -z
tar -czvf backup2.tar.gz archive_lab

# VERIFY
ls -lh backup.tar.gz backup2.tar.gz
file backup.tar.gz
tar -tzf backup.tar.gz
