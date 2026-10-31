#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 13:
# Bring a background job with Job ID 1 back to the foreground using the fg
# command.

# ---------- Solution ----------
sleep 300 &
jobs
fg %1            # job 1 is now in the foreground (Ctrl+C to stop it)
