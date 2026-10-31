#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 32:
# Display the last 5 lines of /var/log/dpkg.log or /var/log/syslog.

# ---------- Solution ----------
tail -n 5 /var/log/dpkg.log
# or (may need sudo):
sudo tail -n 5 /var/log/syslog
