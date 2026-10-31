#!/bin/bash
# Linux Lab 7: Process Management
# Q11
# Bring a background job to the foreground using the fg command and then
# terminate it safely.

# ---------- Solution ----------
set -m

sleep 300 &
pid=$!
jobs -l

# MANUAL:  fg %1   then press Ctrl+C  (SIGINT stops it safely)
# AUTOMATED: a timer sends SIGTERM (polite termination) 2 seconds after fg
( sleep 2; kill -TERM $pid ) &
echo "Bringing the job to the foreground..."
fg %?300
echo "Job terminated, fg returned status $?"
