#!/bin/bash
# Linux Lab 11: Archive & Compression
# Q20
# Demonstrate a complete archive and compression workflow using tar, gzip,
# gunzip, zip, and unzip, including verification after each operation.

# ---------- Solution ----------
command -v zip >/dev/null || { echo "Install zip/unzip first: sudo apt install zip unzip   (RHEL: sudo dnf install zip unzip)"; exit 1; }

W=~/lab11/workflow
rm -rf "$W"; mkdir -p "$W/data" && cd "$W" || exit 1

echo "=== 1. Create sample data ==="
for i in 1 2 3; do seq 1 5000 | sed "s/^/file$i line /" > data/file$i.txt; done
ls -l data
( cd data && md5sum *.txt ) > original.md5      # checksums for verification

echo "=== 2. tar: create archive ==="
tar -cvf data.tar data
tar -tf data.tar                               # verify list
ls -l data.tar

echo "=== 3. gzip: compress the tar ==="
gzip -k data.tar                               # keeps data.tar, creates data.tar.gz
ls -l data.tar data.tar.gz
gzip -t data.tar.gz && echo "gzip integrity OK"

echo "=== 4. gunzip: decompress ==="
rm data.tar
gunzip data.tar.gz                             # data.tar is back
ls -l data.tar
tar -tf data.tar | head -4

echo "=== 5. tar: extract and verify with checksums ==="
mkdir extracted_tar && tar -xf data.tar -C extracted_tar
( cd extracted_tar/data && md5sum -c ../../original.md5 )

echo "=== 6. zip: create ZIP archive ==="
zip -r data.zip data
unzip -l data.zip
unzip -t data.zip                              # integrity test

echo "=== 7. unzip: extract and verify ==="
mkdir extracted_zip && unzip -q data.zip -d extracted_zip
( cd extracted_zip/data && md5sum -c ../../original.md5 )

echo "=== 8. Compare sizes ==="
tar -czf data.tar.gz data
ls -l data.tar data.tar.gz data.zip

echo "=== 9. Clean up ==="
cd ~ && rm -rf "$W"
echo "Workflow finished."
