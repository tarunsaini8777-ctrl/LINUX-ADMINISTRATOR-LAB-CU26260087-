#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 36:
# Create a shell script file, grant execute permissions using symbolic mode
# (chmod +x), execute it with ./script.sh, and explain why execution fails if
# the shebang line (#!/bin/bash) is missing or invalid.

# ---------- Solution ----------
cat > script.sh <<'EOF'
#!/bin/bash
echo "Hello from script.sh"
EOF

chmod +x script.sh
./script.sh

# EXPLANATION:
#  The shebang (#!/bin/bash) on the first line tells the kernel which
#  interpreter must run the file. If it is missing, ./script.sh may run
#  with the wrong shell (or fail with "Exec format error" when started
#  from another program). If the path is invalid (e.g. #!/bin/bsh), the
#  shell reports "bad interpreter: No such file or directory" and the
#  script fails to execute.
