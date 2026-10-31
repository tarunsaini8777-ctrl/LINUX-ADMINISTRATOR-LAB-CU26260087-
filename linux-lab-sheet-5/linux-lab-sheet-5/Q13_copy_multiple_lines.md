# Q13. Copy multiple lines and paste elsewhere

**Question:** Copy multiple lines and paste them at another location in the file.

## Commands (Normal mode)

| Keys / Command | Action |
|----------------|--------|
| `3yy` | Copy 3 lines starting from the current line |
| `V` + `j j` + `y` | Visual-line select 3 lines, then yank |
| `:2,4y` | Yank lines 2 to 4 using an Ex command |
| `p` / `P` | Paste below / above the cursor line |
| `:2,4t 6` or `:2,4co 6` | Copy lines 2-4 and place them after line 6 (no register needed) |

## Demonstration

```bash
vim lab5.txt
```

1. Go to line 1: `gg`
2. Press `3yy` -> `3 lines yanked`
3. Go to the last line: `G`
4. Press `p` -> the 3 lines are pasted at the end of the file
5. Save with `:w`

## Verify

```bash
cat -n lab5.txt
```
