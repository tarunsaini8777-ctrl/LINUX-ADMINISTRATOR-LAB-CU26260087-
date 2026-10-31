#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 14:
# Send a background job with Job ID 1 to resume execution in the background
# using the bg command.

# ---------- Solution ----------
sleep 300        # start it, then press Ctrl+Z to suspend it
jobs             # [1]+ Stopped
bg %1            # resume job 1 in the background
jobs             # [1]+ Running
