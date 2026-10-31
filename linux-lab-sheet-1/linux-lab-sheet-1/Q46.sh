#!/bin/bash
# Linux Administration Lab Sheet - 1
# Question 46:
# Debug / Safety Habit: Explain why running rm -rf * in an unverified path is
# hazardous, and state the safety verification command habit that prevents
# accidental deletion.

# ---------- Solution ----------
# WHY IT IS HAZARDOUS
#  - 'rm -rf *' deletes EVERYTHING in the current directory recursively (-r)
#    and forcefully (-f), with no prompts and no recycle bin. It is irreversible.
#  - If you are in the wrong directory (e.g. / , ~ , /etc), you can wipe out
#    your home data or even break the whole system.
#  - A typo or an empty variable (rm -rf $DIR/*) can expand to 'rm -rf /*'.
#
# SAFETY HABIT (verify before you delete)
pwd              # 1. Confirm where you are
ls -la           # 2. Look at exactly what is there
ls *             # 3. Preview what the wildcard * will expand to
# rm -ri *       # 4. Use interactive mode (asks before each deletion)
# Only after verifying, run:  rm -rf <specific-folder>
# (never run the destructive command below blindly)
