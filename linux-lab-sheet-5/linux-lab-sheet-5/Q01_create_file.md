# Q1. Create a new file using vi/vim

**Question:** Create a new file named lab5.txt using the vi/vim editor and enter at least five lines of text.

## Commands

```bash
vim lab5.txt          # opens (creates) lab5.txt in Normal mode
```

| Step | Keys | Action |
|------|------|--------|
| 1 | `i` | Switch to Insert mode (`-- INSERT --` appears at the bottom) |
| 2 | type the text | Enter at least 5 lines (press `Enter` after each line) |
| 3 | `Esc` | Return to Normal mode |
| 4 | `:wq` + `Enter` | Write (save) and quit |

## Sample text to type

```text
Linux is an open-source operating system.
Vim is a powerful text editor.
The vi editor has three main modes.
Practice makes a person perfect.
Linux commands are powerful.
```

## Verify

```bash
cat lab5.txt
wc -l lab5.txt        # should show 5 (or more) lines
```
