#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q6
# Create labuser3 with /bin/bash as the login shell and verify the assigned
# shell.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo useradd -s /bin/bash labuser3     # -s = login shell

getent passwd labuser3
getent passwd labuser3 | cut -d: -f7   # 7th field = login shell
