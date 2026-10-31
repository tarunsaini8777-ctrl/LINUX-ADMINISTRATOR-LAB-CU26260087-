#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 40:
# Write a single-line command using chaining (&&) to create a folder demo,
# enter it, and list its contents.

# ---------- Solution ----------
mkdir demo && cd demo && ls -la
# Note: run in your interactive shell (not via ./script) if you want to stay inside demo.
