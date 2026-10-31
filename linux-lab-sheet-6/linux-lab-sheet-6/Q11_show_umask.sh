#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q11
# Display the current umask value and record the result.

# ---------- Solution ----------
umask                  # numeric, e.g. 0022
umask -S               # symbolic, e.g. u=rwx,g=rx,o=rx
# Record the result: e.g. umask = 0022 (typical default for normal users on Ubuntu/RHEL)
