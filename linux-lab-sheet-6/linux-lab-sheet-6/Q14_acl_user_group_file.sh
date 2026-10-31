#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q14
# Create a new user and group for ACL practice, then create a file named
# aclfile.txt for testing.

# ---------- Solution ----------
cd ~/lab6 || { echo "Run Q01 first (creates ~/lab6)"; exit 1; }

# ACL tools (install if missing):  sudo apt install acl -y   (Ubuntu/Debian)
#                                  sudo dnf install acl -y   (RHEL/Fedora)
command -v setfacl >/dev/null || sudo apt install acl -y

sudo groupadd aclgroup
sudo useradd -m acluser
getent group aclgroup
id acluser

touch aclfile.txt
ls -l aclfile.txt
