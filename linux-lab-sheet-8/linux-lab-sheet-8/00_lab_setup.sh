#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Lab Setup (optional snapshot)
# Take a snapshot of the installed packages and repositories before starting,
# so that Q20 can verify nothing was unintentionally modified. Run this once
# BEFORE Q01.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v rpm >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with rpm."; exit 1; }

mkdir -p ~/lab8_snapshot
rpm -qa | sort            > ~/lab8_snapshot/rpm.before
dnf repolist all          > ~/lab8_snapshot/repolist.before
ls /etc/yum.repos.d/      > ~/lab8_snapshot/repofiles.before
echo "Snapshot saved in ~/lab8_snapshot"
ls -l ~/lab8_snapshot
