# Linux Administration Lab Sheet — 2

Basic Linux Commands — 50 Practice Problems (COER University).

Each question has its own file containing the question (as comments) and the solution commands.

> Note: Q22, Q35, Q39, Q42, Q44, Q46-Q48 include explanations as comments. Q50's kill command is commented out for safety.


- [Q01](Q01.sh) — Create a file named notes.txt and display its permissions string using the ls -l command.
- [Q02](Q02.sh) — Change the permissions of notes.txt to 644 using numeric (octal) mode, and verify the changes using ls -l.
- [Q03](Q03.sh) — Change notes.txt permissions to 600 (owner read/write only, no permissions for group and others) and verify.
- [Q04](Q04.sh) — Create an executable file named script.sh and grant execute permission exclusively to the owner using symbolic mode.
- [Q05](Q05.sh) — Use the whoami command and ls -l notes.txt to identify the user and group ownership of notes.txt.
- [Q06](Q06.sh) — Run the ps command in your terminal and record how many processes are active in your current shell session.
- [Q07](Q07.sh) — Run ps aux and count or estimate the total number of running processes across the entire operating system.
- [Q08](Q08.sh) — Start a background process using sleep 60 & and immediately run jobs to verify that it is active in the background.
- [Q09](Q09.sh) — Use the kill command with the Process ID (PID) to terminate the active sleep process created in Exercise 8.
- [Q10](Q10.sh) — Search for an available software package named tree using your system's package manager without installing it.
- [Q11](Q11.sh) — Display the current umask value of your terminal shell environment.
- [Q12](Q12.sh) — Use symbolic chmod syntax to remove write permissions from the group on a file named document.txt.
- [Q13](Q13.sh) — Bring a background job with Job ID 1 back to the foreground using the fg command.
- [Q14](Q14.sh) — Send a background job with Job ID 1 to resume execution in the background using the bg command.
- [Q15](Q15.sh) — Display the kernel information and system architecture using uname -a.
- [Q16](Q16.sh) — Display a snapshot of all processes running for your user account using ps -u $USER.
- [Q17](Q17.sh) — Use pkill to terminate a test process running under the name sleep.
- [Q18](Q18.sh) — Check the current repository package index updates on an Ubuntu/Debian system using sudo apt update.
- [Q19](Q19.sh) — Display the list of currently installed packages on your system using apt list --installed (or dnf list installed).
- [Q20](Q20.sh) — Use chown to change the owner of script.sh to yourself explicitly, and verify with ls -l.
- [Q21](Q21.sh) — Set permissions on script.sh so that the owner has full access (rwx), the group has read and execute (r-x), and others have zero permissions — write the numeric command.
- [Q22](Q22.sh) — Explain the exact difference in rights between running chmod 700 file and running chmod 007 file.
- [Q23](Q23.sh) — Use chown to change both the user owner and group owner of a file to student:student in a single command.
- [Q24](Q24.sh) — Launch the top interactive process monitor, press 'P' to sort processes by CPU utilization, and press 'q' to exit.
- [Q25](Q25.sh) — Start two background sleep processes (sleep 100 & and sleep 200 &), list them with jobs, and bring job 1 to the foreground using fg.
- [Q26](Q26.sh) — Use pkill with a safe target process name to terminate all active instances of that command simultaneously.
- [Q27](Q27.sh) — Install the tree package using your system's package manager (apt or dnf), and run tree on your home directory.
- [Q28](Q28.sh) — Remove the tree package after testing, and verify its uninstallation using the package manager list command.
- [Q29](Q29.sh) — Check your default umask setting, create a new file named test_mask.txt, and analyze how umask influenced its permissions.
- [Q30](Q30.sh) — Filter system processes to list only those belonging to your logged-in username using ps aux | grep $USER.
- [Q31](Q31.sh) — Change group ownership of a directory named project_dir to group devteam using the chgrp command with sudo.
- [Q32](Q32.sh) — Launch a process with a lower scheduling priority using nice -n 10 sleep 300 & and confirm its priority using ps or top.
- [Q33](Q33.sh) — Modify the priority of an already running process using the renice command by specifying its PID.
- [Q34](Q34.sh) — Search for the apache2 or nginx package in apt/dnf, install it, and check its system status using systemctl status.
- [Q35](Q35.sh) — Explain why executing apt install <package> without running apt update first on a fresh session might cause installation failure.
- [Q36](Q36.sh) — Create a shell script file, grant execute permissions using symbolic mode (chmod +x), execute it with ./script.sh, and explain why execution fails if the shebang line (#!/bin/bash) is missing or invalid.
- [Q37](Q37.sh) — Set up permissions for shared.txt so the owner has read/write, the group has read-only, and others have zero access — write out both symbolic AND numeric commands.
- [Q38](Q38.sh) — Start a background task with nice -n 15 sleep 300 &, locate its PID in top, and explain how the 'nice value' impacts CPU time allocation.
- [Q39](Q39.sh) — Debug Scenario: A student runs kill 1234 but the process refuses to terminate. What escalating command should be used next, and why is it considered a 'last resort'?
- [Q40](Q40.sh) — Display the top 5 CPU-consuming processes currently active on the system using ps aux --sort=-%cpu | head -5.
- [Q41](Q41.sh) — Construct a single-line command using find and chmod to grant execute permissions (+x) to all .sh files in your working directory tree simultaneously.
- [Q42](Q42.sh) — Explain the security risks associated with running chmod 777 on a sensitive system configuration file in production.
- [Q43](Q43.sh) — Install a package (e.g., tree), and use the low-level package tool (dpkg -L <pkg> or rpm -ql <pkg>) to list every file installed onto the filesystem by that package.
- [Q44](Q44.sh) — Conceptual Analysis: Explain the difference between process termination via SIGTERM (Signal 15) vs SIGKILL (Signal 9), and why applications should handle SIGTERM.
- [Q45](Q45.sh) — Create two files owned by different users (using sudo chown), then write a single find command that filters and lists files owned by a specific user.
- [Q46](Q46.sh) — Set the Set User ID (SUID) bit on an executable binary custom_tool, write the chmod command, and explain its execution privilege implications.
- [Q47](Q47.sh) — Set the Set Group ID (SGID) bit on a shared folder /shared_dir using octal mode (2775), and explain how newly created files inherit group ownership.
- [Q48](Q48.sh) — Set the Sticky Bit on a directory /public_tmp using symbolic (chmod o+t) or octal (chmod 1777) mode, and explain why it prevents unauthorized file deletion.
- [Q49](Q49.sh) — Demonstrate job management: Suspend a running command using Ctrl+Z, verify its stopped state with jobs, resume it in the background with bg, and then attach it with fg.
- [Q50](Q50.sh) — Write a shell command pipeline that identifies the process consuming the most memory (%MEM), logs its PID and details to a file named top_memory.log, and gracefully requests its termination using SIGTERM.
