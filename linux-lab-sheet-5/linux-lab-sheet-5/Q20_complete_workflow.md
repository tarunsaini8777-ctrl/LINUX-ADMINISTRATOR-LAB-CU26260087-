# Q20. Complete vi/vim workflow

**Question:** Create, edit, search, replace, copy, paste, save and exit a text file using vi/vim as a complete workflow.

## Workflow

```bash
vim workflow.txt
```

| Step | Keys / Command | Action |
|------|----------------|--------|
| 1 Create | `i`, type the sample text, `Esc` | Enter 5 lines in Insert mode |
| 2 Save | `:w` | Save without exiting |
| 3 Edit | `gg`, `A`, type ` (edited)`, `Esc` | Append text to line 1 |
| 4 New lines | `o` ... `Esc`, `O` ... `Esc` | Add a line below and above |
| 5 Delete | `3G`, `dd` | Delete line 3 |
| 6 Undo/redo | `u`, `Ctrl+r` | Undo then redo the deletion |
| 7 Search | `/Linux` `Enter`, `n`, `N` | Find and move between matches |
| 8 Replace | `:%s/Linux/Ubuntu/g` | Replace all occurrences |
| 9 Copy/Paste | `gg`, `2yy`, `G`, `p` | Copy 2 lines and paste at the end |
| 10 Line numbers | `:set number` | Show line numbers |
| 11 Save & exit | `:wq` | Save and quit |

## Sample text for step 1

```text
Linux is an open-source operating system.
Vim is a powerful text editor.
The vi editor has three main modes.
Practice makes a person perfect.
Linux commands are powerful.
```

## Verify

```bash
cat -n workflow.txt
```
