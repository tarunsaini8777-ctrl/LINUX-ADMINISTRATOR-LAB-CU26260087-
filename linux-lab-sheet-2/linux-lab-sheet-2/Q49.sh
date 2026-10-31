#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 49:
# Demonstrate job management: Suspend a running command using Ctrl+Z, verify
# its stopped state with jobs, resume it in the background with bg, and then
# attach it with fg.

# ---------- Solution ----------
sleep 500        # 1. start a long-running command
# Press Ctrl+Z   # 2. suspend it -> "[1]+ Stopped  sleep 500"
jobs             # 3. verify: shows Stopped
bg %1            # 4. resume in the background -> Running
jobs             #    verify: shows Running
fg %1            # 5. bring it to the foreground (Ctrl+C to end it)
