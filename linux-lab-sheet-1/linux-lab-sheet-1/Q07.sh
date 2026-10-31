#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 7:
# Inside myfirstlab, create three empty text files: a.txt, b.txt, and c.txt
# using a single command.

# ---------- Solution ----------
mkdir -p myfirstlab && cd myfirstlab
touch a.txt b.txt c.txt
# brace expansion alternative:
# touch {a,b,c}.txt
ls
