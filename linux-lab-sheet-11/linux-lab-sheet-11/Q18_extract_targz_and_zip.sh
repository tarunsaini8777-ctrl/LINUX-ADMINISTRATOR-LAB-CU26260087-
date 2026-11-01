#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q18
# Use appropriate commands to decompress and extract a tar.gz archive and a
# ZIP archive into separate directories.

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

[ -f archive.tar.gz ] || tar -czf archive.tar.gz archive_lab
[ -f dir.zip ] || zip -qr dir.zip archive_lab

# --- tar.gz: decompress (gunzip) and then extract (tar) ---
mkdir -p out_targz
gunzip -kf archive.tar.gz                   # -k keeps the .gz, -f overwrites an old archive.tar ; produces archive.tar
tar -xvf archive.tar -C out_targz
# one-step alternative: tar -xzvf archive.tar.gz -C out_targz

# --- ZIP: unzip does decompress + extract together ---
mkdir -p out_zip
unzip dir.zip -d out_zip

# VERIFY
echo "--- tar.gz result ---"; ls -R out_targz
echo "--- zip result ---";    ls -R out_zip
