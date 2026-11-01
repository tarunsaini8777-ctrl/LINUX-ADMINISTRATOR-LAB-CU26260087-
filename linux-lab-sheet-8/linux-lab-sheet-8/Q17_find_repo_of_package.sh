#!/bin/bash
# Linux Lab 8: Package Management (RHEL / Rocky / AlmaLinux)
# Q17
# Demonstrate how to identify the repository that provides a selected package.
# (sudo is needed for install/update/remove. Use a test machine or VM.)

# ---------- Solution ----------
command -v dnf >/dev/null || { echo "This lab needs a RHEL-family system (RHEL/Rocky/AlmaLinux) with dnf."; exit 1; }

pkg=tree

dnf info $pkg | grep -E '^(Name|Version|Repository|From repo)'   # repo of available / installed package
dnf list available $pkg                     # last column = repository ID (e.g. baseos)
dnf list installed $pkg                     # last column = @repo it was installed from
dnf repoquery --qf '%{name}-%{version}-%{release} from %{repoid}' $pkg
dnf provides $pkg                           # which package/repo provides it
dnf provides /usr/bin/tree                  # by file path
