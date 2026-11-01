#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q5
# Display the size of a selected directory including its subdirectories using
# du with an appropriate option.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
dir=/etc

du -sh "$dir" 2>/dev/null            # -s summary total, -h human readable (includes subdirectories)
du -h "$dir" 2>/dev/null | tail -5   # every subdirectory (the last line is the total)
du -h --max-depth=1 "$dir" 2>/dev/null | sort -rh | head -5
du -ch "$dir"/*.conf 2>/dev/null | tail -1    # -c grand total for chosen items

# Other useful options:  -a (files too)  --max-depth=N  -x (stay on one filesystem)
