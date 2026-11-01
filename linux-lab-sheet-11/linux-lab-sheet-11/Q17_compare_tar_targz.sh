#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q17
# Compare the archive contents and file sizes of a tar archive and a
# compressed tar.gz archive.

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

# Use a bigger text directory so the difference is visible
mkdir -p compare_dir
seq 1 50000 > compare_dir/numbers.txt
for i in 1 2 3; do cp compare_dir/numbers.txt compare_dir/copy$i.txt; done

tar -cf  compare.tar    compare_dir
tar -czf compare.tar.gz compare_dir

echo "--- File sizes ---"
ls -l compare.tar compare.tar.gz
du -b compare.tar compare.tar.gz
echo "Compression ratio: $(( 100 - 100 * $(stat -c %s compare.tar.gz) / $(stat -c %s compare.tar) ))% smaller"

echo "--- Contents (identical file lists) ---"
tar -tf  compare.tar
tar -tzf compare.tar.gz
diff <(tar -tf compare.tar) <(tar -tzf compare.tar.gz) && echo "Same list of files in both archives"

# RESULT: both contain the same files; the tar.gz is much smaller because it is compressed.
