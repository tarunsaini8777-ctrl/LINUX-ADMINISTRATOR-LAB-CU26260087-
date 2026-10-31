#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 42:
# Explain the security risks associated with running chmod 777 on a sensitive
# system configuration file in production.

# ---------- Solution ----------
# chmod 777 -> rwxrwxrwx : EVERY user can read, modify and execute the file.
# RISKS:
#  1. Any local user or compromised service account can edit the config
#     (e.g. add a malicious setting, change users/ports/firewall rules).
#  2. Privilege escalation: if the file is run/loaded by root or a service,
#     attackers can inject commands that run with high privileges.
#  3. Information leak: sensitive data (passwords, keys, tokens) becomes
#     readable by everyone.
#  4. Integrity & audit failure: tampering is easy and hard to trace; it
#     violates the principle of least privilege and compliance standards.
#  5. Services (e.g. sshd, sudo) may refuse to start/work with unsafe perms.
#
# BETTER: use minimum permissions, e.g. chmod 640 or 600, owned by root.
