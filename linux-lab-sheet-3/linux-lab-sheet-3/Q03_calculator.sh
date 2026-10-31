#!/bin/bash
# Linux Administration Lab Sheet - 3
# Arithmetic Calculator
# Create calculator.sh that reads two integers and displays their sum,
# difference, product and quotient using Bash arithmetic.

# ---------- Solution ----------
read -p "Enter first integer : " a
read -p "Enter second integer: " b

echo "Sum        : $((a + b))"
echo "Difference : $((a - b))"
echo "Product    : $((a * b))"

if [ "$b" -eq 0 ]; then
    echo "Quotient   : Cannot divide by zero"
else
    echo "Quotient   : $((a / b))"
    echo "Remainder  : $((a % b))"
fi

# Run: chmod +x Q03_calculator.sh && ./Q03_calculator.sh
