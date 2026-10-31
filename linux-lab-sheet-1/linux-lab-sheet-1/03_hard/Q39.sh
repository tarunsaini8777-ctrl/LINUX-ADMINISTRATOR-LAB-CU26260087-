#!/bin/bash
# Linux Administration Lab Sheet - 1 | Course Code: DCS583
# Question 39:
# Create a shell script file test.sh, grant it execute permissions using
# symbolic chmod syntax (+x), and write a comment inside explaining the
# permission string rwxr-xr--.

# ---------- Solution ----------
cat > test.sh <<'EOF'
#!/bin/bash
# Permission string rwxr-xr-- explained:
#   rwx -> owner (user): read, write, execute
#   r-x -> group       : read, execute (no write)
#   r-- -> others      : read only
# Numeric form: 754
echo "Hello from test.sh"
EOF

chmod +x test.sh
ls -l test.sh
./test.sh
