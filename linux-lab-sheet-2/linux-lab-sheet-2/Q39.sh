#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 39:
# Debug Scenario: A student runs kill 1234 but the process refuses to
# terminate. What escalating command should be used next, and why is it
# considered a 'last resort'?

# ---------- Solution ----------
kill 1234          # sends SIGTERM (15) - polite request, can be ignored
kill -9 1234       # sends SIGKILL (9)  - escalation   (same as: kill -KILL 1234)

# WHY 'LAST RESORT':
#  SIGKILL cannot be caught, blocked or ignored; the kernel ends the process
#  immediately. The process gets NO chance to clean up: it cannot save data,
#  close files, release locks, or remove temp files, which can cause data
#  corruption, orphaned child processes, and leftover resources.
#  So always try SIGTERM first, and use SIGKILL only if it still fails.
