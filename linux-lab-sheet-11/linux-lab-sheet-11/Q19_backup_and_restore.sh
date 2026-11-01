#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q19
# Create a complete backup archive of a practice directory using tar.gz, then
# restore it into another directory.

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

backup="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# BACKUP  (-p keeps permissions)
tar -czpvf "$backup" archive_lab
ls -lh "$backup"
tar -tzf "$backup" | head

# RESTORE into another directory
mkdir -p restore_dir
tar -xzpvf "$backup" -C restore_dir

# VERIFY the restored data matches the original
diff -r archive_lab restore_dir/archive_lab && echo "Restore successful: restored files are identical to the original"
