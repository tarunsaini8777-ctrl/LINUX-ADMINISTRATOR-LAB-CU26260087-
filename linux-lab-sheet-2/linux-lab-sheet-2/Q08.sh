#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 8:
# Start a background process using sleep 60 & and immediately run jobs to
# verify that it is active in the background.

# ---------- Solution ----------
sleep 60 &
jobs
