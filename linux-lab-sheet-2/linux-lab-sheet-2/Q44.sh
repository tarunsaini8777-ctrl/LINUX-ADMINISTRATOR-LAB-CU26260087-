#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 44:
# Conceptual Analysis: Explain the difference between process termination via
# SIGTERM (Signal 15) vs SIGKILL (Signal 9), and why applications should
# handle SIGTERM.

# ---------- Solution ----------
# SIGTERM (15) - "please terminate"
#   * Default signal of kill. Can be caught, handled or ignored.
#   * Lets the program do graceful shutdown: save data, close files and
#     connections, remove temp files, stop child processes.
#
# SIGKILL (9) - "terminate NOW"
#   * Cannot be caught, blocked or ignored. Kernel kills the process instantly.
#   * No cleanup is possible -> risk of corruption / leftover resources.
#
# WHY HANDLE SIGTERM: so the app can shut down cleanly (flush buffers,
# finish transactions, release locks). systemd, Docker, and Kubernetes
# send SIGTERM first and use SIGKILL only after a timeout.

# Demo: a script that handles SIGTERM
cat > sigterm_demo.sh <<'EOF'
#!/bin/bash
trap 'echo "SIGTERM received, cleaning up..."; exit 0' SIGTERM
while true; do sleep 1; done
EOF
chmod +x sigterm_demo.sh
./sigterm_demo.sh &
kill -15 $!
