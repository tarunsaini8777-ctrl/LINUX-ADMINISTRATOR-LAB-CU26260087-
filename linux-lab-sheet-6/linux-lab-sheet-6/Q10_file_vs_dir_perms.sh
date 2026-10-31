#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q10
# Explain and demonstrate the difference between file and directory read,
# write and execute permissions by testing access to a practice directory.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

# IMPORTANT: run as a NORMAL user. root bypasses permission checks, so the demo would not work.
if [ "$(id -u)" -eq 0 ]; then echo "Please run as a normal (non-root) user."; exit 1; fi

# ---------------- EXPLANATION ----------------
#              On a FILE                  On a DIRECTORY
#  r (read)    read the file contents     list the names inside (ls)
#  w (write)   modify the file contents   create / delete / rename files inside
#                                         (needs x as well)
#  x (execute) run it as a program        enter it (cd) and access items inside by name
#
rm -rf practice_dir
mkdir practice_dir
echo "hello" > practice_dir/file1.txt

echo "=== DIRECTORY: r-- (chmod 400) ==="
chmod 400 practice_dir
ls practice_dir                        # names are listed (r works)
cd practice_dir 2>&1 | head -1         # FAILS: no x permission
cat practice_dir/file1.txt 2>&1        # FAILS: cannot access items without x

echo "=== DIRECTORY: --x (chmod 100) ==="
chmod 100 practice_dir
ls practice_dir 2>&1                   # FAILS: no r permission
cat practice_dir/file1.txt             # WORKS if you know the name (x works)

echo "=== DIRECTORY: r-x (chmod 500) ==="
chmod 500 practice_dir
ls practice_dir                        # works
touch practice_dir/new.txt 2>&1        # FAILS: no w permission

echo "=== DIRECTORY: rwx (chmod 700) ==="
chmod 700 practice_dir
touch practice_dir/new.txt && echo "new.txt created (w + x work)"
rm practice_dir/new.txt && echo "new.txt deleted"

echo "=== FILE permissions ==="
chmod 444 practice_dir/file1.txt
cat practice_dir/file1.txt                          # read works
echo "more" >> practice_dir/file1.txt 2>&1          # FAILS: no write
chmod 222 practice_dir/file1.txt
echo "more" >> practice_dir/file1.txt && echo "write works"
cat practice_dir/file1.txt 2>&1                     # FAILS: no read

chmod 700 practice_dir ; chmod 644 practice_dir/file1.txt   # restore
