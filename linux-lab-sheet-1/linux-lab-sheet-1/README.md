# Linux Administration Lab Sheet — 1

Basic Linux Commands — 50 Practice Problems (COER University).

Each question has its own file containing the question (as comments) and the solution commands.

> Note: Q46 is explanatory; its destructive command is intentionally not executable.

- [Q01](Q01.sh) — Print your current working directory to verify your location in the filesystem.
- [Q02](Q02.sh) — List all files and directories in your current location using the basic ls command.
- [Q03](Q03.sh) — List all contents of your home directory, including hidden files (starting with a dot), using appropriate flags.
- [Q04](Q04.sh) — Display all files in long-listing format with human-readable file sizes using ls.
- [Q05](Q05.sh) — Create a new directory named myfirstlab in your current directory.
- [Q06](Q06.sh) — Navigate into the newly created myfirstlab directory using cd.
- [Q07](Q07.sh) — Inside myfirstlab, create three empty text files: a.txt, b.txt, and c.txt using a single command.
- [Q08](Q08.sh) — Display the full contents of the system file /etc/os-release on your terminal screen.
- [Q09](Q09.sh) — Check the username of the user currently logged into the terminal session.
- [Q10](Q10.sh) — Display your system's hostname on the terminal.
- [Q11](Q11.sh) — Check how much disk space is currently free on your system in human-readable format.
- [Q12](Q12.sh) — Check the total system RAM and current memory usage in human-readable units.
- [Q13](Q13.sh) — Check how long your Linux system has been continuously running.
- [Q14](Q14.sh) — Display full system and kernel operating information using uname.
- [Q15](Q15.sh) — Use the manual pages to look up the documentation for the ls command.
- [Q16](Q16.sh) — Display a short quick-usage summary for the cp command using the --help flag.
- [Q17](Q17.sh) — Use the whatis command to get a one-line description of the mv command.
- [Q18](Q18.sh) — Navigate back to your home directory using the shorthand tilde (~) symbol.
- [Q19](Q19.sh) — Create a nested folder hierarchy project/src/data in a single command using mkdir.
- [Q20](Q20.sh) — Delete the file c.txt you created inside the myfirstlab directory.

- [Q21](Q21.sh) — Create a file named students.txt and add 5 student names (one per line) using echo and the append redirection operator (>>).
- [Q22](Q22.sh) — Display only the first 2 names from students.txt using the head command.
- [Q23](Q23.sh) — Display only the last 2 names from students.txt using the tail command.
- [Q24](Q24.sh) — Create a directory named backup and copy students.txt into it without navigating out of your current directory.
- [Q25](Q25.sh) — Rename students.txt to class_list.txt using the mv command.
- [Q26](Q26.sh) — Use grep to search inside class_list.txt for any name containing a specific letter (e.g., 'a' or 'R').
- [Q27](Q27.sh) — Display line numbers along with matching text when searching for a string in class_list.txt using grep -n.
- [Q28](Q28.sh) — Change permissions of class_list.txt so only the owner has read and write rights (no execute), and verify using long listing.
- [Q29](Q29.sh) — Find all files ending with .txt in your home directory tree using the find command.
- [Q30](Q30.sh) — Use wc -l to count the exact number of lines (students) in class_list.txt.
- [Q31](Q31.sh) — Display the first 5 lines of /etc/passwd on the terminal.
- [Q32](Q32.sh) — Display the last 5 lines of /var/log/dpkg.log or /var/log/syslog.
- [Q33](Q33.sh) — Copy an entire directory structure (project/) into a new folder named project_backup/ recursively.
- [Q34](Q34.sh) — View a large text file page-by-page using less and identify the key used to quit the pager.
- [Q35](Q35.sh) — Move two files (a.txt and b.txt) simultaneously into a target folder named archive/.

- [Q36](Q36.sh) — Combine commands: Create a directory logs, inside it create app.log with 10 lines of dummy text using a loop or repeated echo >>, then view the last 3 lines using tail.
- [Q37](Q37.sh) — Use find paired with -exec to locate all .log files in your current working path and display their contents in a single command line.
- [Q38](Q38.sh) — Recursively search all files in your current directory tree for the word 'error' using grep -r.
- [Q39](Q39.sh) — Create a shell script file test.sh, grant it execute permissions using symbolic chmod syntax (+x), and write a comment inside explaining the permission string rwxr-xr--.
- [Q40](Q40.sh) — Write a single-line command using chaining (&&) to create a folder demo, enter it, and list its contents.
- [Q41](Q41.sh) — Combine find and wc -l in a single pipeline to count how many total .txt files exist under your home directory tree.
- [Q42](Q42.sh) — Find all directories (not regular files) inside /var/log using find -type d.
- [Q43](Q43.sh) — Search for a specific file system configuration entry inside /etc/fstab using grep, ignoring case sensitivity.
- [Q44](Q44.sh) — Check the disk space consumption of a specific folder in human-readable format using du -sh.
- [Q45](Q45.sh) — Write a command that displays the 3 largest files in a directory by sorting ls output by file size.
- [Q46](Q46.sh) — Debug / Safety Habit: Explain why running rm -rf * in an unverified path is hazardous, and state the safety verification command habit that prevents accidental deletion.
- [Q47](Q47.sh) — Use touch on an existing file to update its access and modification timestamp to the current system time without modifying its contents.
- [Q48](Q48.sh) — Create a file containing multiple duplicate lines, then use sort and uniq to display only unique lines from the file.
- [Q49](Q49.sh) — Redirect the stdout of a command (e.g., uname -a) to a file named sys_info.txt, then view its content.
- [Q50](Q50.sh) — Find all files in /var/log that were modified within the last 7 days using find -mtime.
