#!/bin/bash
# Linux Lab Sheet 4: User Management
# Q11
# Create a supplementary group named userlabgroup and add labuser1 to it using
# usermod. Verify the membership.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
sudo groupadd userlabgroup
sudo usermod -aG userlabgroup labuser1    # -a (append) with -G is IMPORTANT, otherwise
                                          # existing supplementary groups are replaced

id labuser1
groups labuser1
getent group userlabgroup
