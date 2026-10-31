#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 25:
# Start two background sleep processes (sleep 100 & and sleep 200 &), list
# them with jobs, and bring job 1 to the foreground using fg.

# ---------- Solution ----------
sleep 100 &
sleep 200 &
jobs
fg %1            # job 1 (sleep 100) comes to the foreground
