#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q9
# Use usermod to change labuser2's login shell to /bin/bash and verify the
# change.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
echo "Before:"; getent passwd labuser2 | cut -d: -f7

sudo usermod -s /bin/bash labuser2

echo "After:";  getent passwd labuser2 | cut -d: -f7
# valid shells are listed in /etc/shells
