#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 32:
# Launch a process with a lower scheduling priority using nice -n 10 sleep 300
# & and confirm its priority using ps or top.

# ---------- Solution ----------
nice -n 10 sleep 300 &
ps -o pid,ni,cmd -p $!      # NI column should show 10
# or check the NI column in: top -p $!
