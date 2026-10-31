#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q1
# Display the current logged-in username, UID, primary GID and supplementary
# groups.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
whoami                 # username
id -un                 # username (alternative)
id -u                  # UID
id -g                  # primary GID
id -Gn                 # all group names (primary + supplementary)
id                     # everything in one line
groups                 # group names
