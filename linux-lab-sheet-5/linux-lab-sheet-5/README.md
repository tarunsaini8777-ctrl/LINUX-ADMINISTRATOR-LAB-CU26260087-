# Linux Lab Sheet 5: vi/vim Editor

**Aim:** To understand and practice creating, editing, searching, replacing, copying, pasting and managing text files using the vi/vim editor and its essential commands.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and File & Directory Management.

> vi/vim work is done with keystrokes inside the editor, so each question is a Markdown file with the commands/keys and the steps to follow. To quickly recreate the sample file used in the questions:

```bash
cat > lab5.txt <<'EOF'
Linux is an open-source operating system.
Vim is a powerful text editor.
The vi editor has three main modes.
Practice makes a person perfect.
Linux commands are powerful.
EOF
```

## Questions

- [Q01 — Create a new file using vi/vim](Q01_create_file.md) — Create a new file named lab5.txt using the vi/vim editor and enter at least five lines of text.
- [Q02 — Open an existing file](Q02_open_existing_file.md) — Open an existing file named lab5.txt using vi/vim and display its contents.
- [Q03 — Normal, Insert and Command-Line modes](Q03_modes.md) — Demonstrate switching between Normal mode, Insert mode and Command-Line mode in vi/vim.
- [Q04 — Insert text before and after the cursor](Q04_insert_before_after.md) — Insert new text before and after the current cursor position and verify the changes.
- [Q05 — Open a new line below / above](Q05_new_line_above_below.md) — Add a new line below the current line and another new line above the current line using vi/vim commands.
- [Q06 — Save without exiting](Q06_save_without_exit.md) — Save the current file without exiting vi/vim.
- [Q07 — Save and exit](Q07_save_and_exit.md) — Save the current file and exit vi/vim using the appropriate command.
- [Q08 — Exit without saving](Q08_exit_without_saving.md) — Exit vi/vim without saving the changes made to a file.
- [Q09 — Move to the beginning and end of a line](Q09_line_start_end.md) — Move the cursor to the beginning and end of a line using vi/vim commands.
- [Q10 — Move to the beginning and end of the file](Q10_file_start_end.md) — Move the cursor to the beginning and end of the file using vi/vim commands.
- [Q11 — Delete a character, a word and a line](Q11_delete.md) — Delete a character, a word and a complete line using appropriate vi/vim commands.
- [Q12 — Copy the current line and paste it below](Q12_copy_paste_line.md) — Copy the current line and paste it below the current line.
- [Q13 — Copy multiple lines and paste elsewhere](Q13_copy_multiple_lines.md) — Copy multiple lines and paste them at another location in the file.
- [Q14 — Search forward](Q14_search_forward.md) — Search forward for a specified word in the file and move between matching occurrences.
- [Q15 — Search backward](Q15_search_backward.md) — Search backward for a specified word in the file and move between matching occurrences.
- [Q16 — Replace the first occurrence on the current line](Q16_replace_first_on_line.md) — Replace the first occurrence of a specified word on the current line using vi/vim.
- [Q17 — Replace all occurrences in the file](Q17_replace_all.md) — Replace all occurrences of a specified word throughout the file using a suitable substitution command.
- [Q18 — Undo and redo](Q18_undo_redo.md) — Undo the last change and then redo the change using vi/vim commands.
- [Q19 — Line numbers and jumping to a line](Q19_line_numbers.md) — Use line numbers to display the current line number and jump directly to a specified line.
- [Q20 — Complete vi/vim workflow](Q20_complete_workflow.md) — Create, edit, search, replace, copy, paste, save and exit a text file using vi/vim as a complete workflow.
