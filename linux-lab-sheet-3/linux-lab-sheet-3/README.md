# Linux Administration Lab Sheet — 3

Bash Scripting — 20 Practice Problems (COER University).

**Objective:** Practice writing and executing Bash scripts using variables, user input, conditions, loops, file tests, command-line arguments, exit codes, redirection and pipelines.

Run `00_lab_setup.sh` first (creates `~/linux_lab3` with sample files), then run each question script. Make a script executable with `chmod +x script.sh` and run it with `./script.sh`.


- [Lab Setup](00_lab_setup.sh)
- [Q01 — Hello Script](Q01_hello.sh) — Create hello.sh using a shebang and a variable that prints a personalized greeting. Make it executable and run it using ./hello.sh and bash hello.sh.
- [Q02 — User Input Script](Q02_user_input.sh) — Create user_input.sh that asks for a student's name, branch and semester using read, then prints a formatted welcome message.
- [Q03 — Arithmetic Calculator](Q03_calculator.sh) — Create calculator.sh that reads two integers and displays their sum, difference, product and quotient using Bash arithmetic.
- [Q04 — Command Substitution](Q04_system_info.sh) — Create system_info.sh that stores the current date, current working directory and logged-in username in variables using command substitution, then displays them.
- [Q05 — Number Classification](Q05_number_type.sh) — Create number_type.sh that reads an integer and reports whether it is positive, negative or zero using if/elif/else.
- [Q06 — Even or Odd](Q06_even_odd.sh) — Create even_odd.sh that accepts one integer as $1 and reports whether it is even or odd. If the argument is missing, display a usage message and exit with a non-zero status.
- [Q07 — File and Directory Tests](Q07_file_check.sh) — Create file_check.sh that accepts a path as $1 and reports whether the path is a regular file, a directory, or neither. Also report whether a regular file is executable when applicable.
- [Q08 — For Loop Practice](Q08_multiplication.sh) — Create multiplication.sh that accepts a number as $1 and prints its multiplication table from 1 to 10 using a for loop.
- [Q09 — Loop Through Files](Q09_list_txt.sh) — Create list_txt.sh that loops through all .txt files inside the data directory and prints each filename with a short message.
- [Q10 — While Loop](Q10_countdown.sh) — Create countdown.sh that uses a while loop to print a countdown from 10 to 1 and then prints 'Done!'.
- [Q11 — Script Arguments](Q11_arguments.sh) — Create arguments.sh that displays $0, $1, $2, $#, and $@. Test it with at least two different command-line argument sets.
- [Q12 — Exit Codes](Q12_status.sh) — Create status.sh that accepts a directory name. Exit with 0 when the directory exists and exit with 1 when it does not. After running it, inspect the result using echo $?.
- [Q13 — Output Redirection](Q13_output_redirection.sh) — Write commands that redirect the listing of the data directory to output/files.txt, first overwriting the file and then demonstrating the difference between > and >>.
- [Q14 — Append a Log](Q14_log_entry.sh) — Create log_entry.sh that appends the current date/time and a user-supplied message to logs/activity.log without overwriting previous entries.
- [Q15 — Input Redirection and Sorting](Q15_sort_names.sh) — Use data/names.txt and input redirection to sort the names. Extend the command so duplicate names are removed.
- [Q16 — Error Logging](Q16_error_logging.sh) — Run a command that deliberately produces an error, redirect only standard error to logs/errors.log, and then display the log.
- [Q17 — Combined Output and Error Logging](Q17_combined_logging.sh) — Run one command containing both a valid and invalid path and redirect standard output and standard error into logs/combined.log. Verify the file.
- [Q18 — Pipeline Practice](Q18_pipeline.sh) — Use a pipeline with ps aux and grep to find processes matching a word of your choice. Then create another pipeline that counts the matching lines.
- [Q19 — Backup Checker Script](Q19_backup_check.sh) — Create backup_check.sh that accepts a directory as $1, verifies that it exists, scans for .bak files, counts them, reports each backup found, and appends a 'No backup files found' message to logs/backup_log.txt when the count is zero.
- [Q20 — Integrated File Report](Q20_file_report.sh) — Create file_report.sh that accepts exactly one filename, verifies that it exists and is readable, displays its line/word/character counts using wc, and appends a timestamped processing record to logs/execution_history.log. Test both successful and failure cases.
