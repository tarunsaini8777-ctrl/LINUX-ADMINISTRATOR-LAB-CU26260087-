#!/bin/bash
# Linux Lab Sheet 4: User Management
# Lab Setup (optional snapshot)
# Take a snapshot of /etc/passwd and /etc/group before starting, so that Q20
# can verify no unintended system account was modified. Run this once BEFORE
# Q01.
# (Requires sudo/root. Use a test machine or VM.)

# ---------- Solution ----------
mkdir -p ~/lab4_snapshot
cp /etc/passwd ~/lab4_snapshot/passwd.before
cp /etc/group  ~/lab4_snapshot/group.before
echo "Snapshot saved in ~/lab4_snapshot"
ls -l ~/lab4_snapshot
