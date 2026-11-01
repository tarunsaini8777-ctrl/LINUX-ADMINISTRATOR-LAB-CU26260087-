#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q20
# Clean up the packages and repository changes created during the lab and
# verify that no required system package or repository has been
# unintentionally modified.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
# Remove the packages installed during this lab (only if present)
for pkg in tree wget; do
    if rpm -q $pkg >/dev/null 2>&1; then
        sudo dnf remove $pkg -y
    fi
done

# Clean the dnf cache (does not remove packages)
sudo dnf clean all

# If you added a custom repository during the lab, remove its file, e.g.:
#   sudo rm /etc/yum.repos.d/<your-test>.repo

echo "--- Lab packages should be gone ---"
rpm -q tree wget

echo "--- Core packages still installed and unmodified ---"
rpm -q bash coreutils glibc dnf rpm
rpm -V bash coreutils dnf rpm && echo "Core packages verified: no changes"

echo "--- Repositories ---"
dnf repolist all
ls /etc/yum.repos.d/

# Compare with the snapshot taken by 00_lab_setup.sh
if [ -d ~/lab8_snapshot ]; then
    echo "--- Packages: diff against snapshot (updates from Q15 may appear here) ---"
    rpm -qa | sort | diff ~/lab8_snapshot/rpm.before - && echo "Package list identical"
    echo "--- Repo files: diff against snapshot ---"
    ls /etc/yum.repos.d/ | diff ~/lab8_snapshot/repofiles.before - && echo "Repo files identical"
else
    echo "(No snapshot found - run 00_lab_setup.sh before Q01 next time)"
fi
