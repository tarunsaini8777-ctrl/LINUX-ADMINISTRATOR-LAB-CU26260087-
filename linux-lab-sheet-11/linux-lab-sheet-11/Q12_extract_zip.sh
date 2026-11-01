#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q12
# Extract files.zip into a directory named extracted_zip.

# ---------- Solution ----------
command -v zip >/dev/null || { echo "Install zip/unzip first: sudo apt install zip unzip   (RHEL: sudo dnf install zip unzip)"; exit 1; }

# --- helper: make sure ~/lab11/archive_lab with 3 text files exists (same as Q1) ---
mkdir -p ~/lab11/archive_lab
cd ~/lab11 || exit 1
[ -f archive_lab/file1.txt ] || {
    echo "This is file 1: Linux archive and compression lab."  > archive_lab/file1.txt
    echo "This is file 2: tar bundles many files into one."     > archive_lab/file2.txt
    echo "This is file 3: gzip and zip compress data."          > archive_lab/file3.txt
}
# ------------------------------------------------------------------------------

[ -f files.zip ] || zip -q files.zip archive_lab/file1.txt archive_lab/file2.txt archive_lab/file3.txt

unzip files.zip -d extracted_zip          # -d destination directory (created if missing)

# VERIFY
ls -R extracted_zip
