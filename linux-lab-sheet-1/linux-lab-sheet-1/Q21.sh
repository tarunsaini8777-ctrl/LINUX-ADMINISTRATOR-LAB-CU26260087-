#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 21:
# Create a file named students.txt and add 5 student names (one per line)
# using echo and the append redirection operator (>>).

# ---------- Solution ----------
echo "Aman"   >> students.txt
echo "Riya"   >> students.txt
echo "Karan"  >> students.txt
echo "Neha"   >> students.txt
echo "Rahul"  >> students.txt
cat students.txt
