#!/bin/bash
# Linux Administration Lab Sheet - 2
# Question 31:
# Change group ownership of a directory named project_dir to group devteam
# using the chgrp command with sudo.

# ---------- Solution ----------
mkdir -p project_dir
sudo groupadd devteam            # create the group if it does not exist
sudo chgrp devteam project_dir
ls -ld project_dir
