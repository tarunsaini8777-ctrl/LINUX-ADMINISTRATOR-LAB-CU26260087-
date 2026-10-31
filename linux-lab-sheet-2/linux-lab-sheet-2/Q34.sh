#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 34:
# Search for the apache2 or nginx package in apt/dnf, install it, and check
# its system status using systemctl status.

# ---------- Solution ----------
apt search nginx
sudo apt install nginx -y
systemctl status nginx
# (for apache2: sudo apt install apache2 -y && systemctl status apache2)
