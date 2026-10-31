#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 35:
# Explain why executing apt install <package> without running apt update first
# on a fresh session might cause installation failure.

# ---------- Solution ----------
# apt works from a LOCAL cache of package lists (the package index) that
# is downloaded from the repositories by 'apt update'.
#  - On a fresh system the index may be empty or outdated.
#  - apt may then say "Unable to locate package <package>", or try to
#    download an old version/URL that no longer exists on the server
#    (404 Not Found), so the installation fails.
#  - 'sudo apt update' refreshes the index so apt knows the latest
#    available versions and their correct download locations.
#
# Correct habit:
sudo apt update
sudo apt install <package>
