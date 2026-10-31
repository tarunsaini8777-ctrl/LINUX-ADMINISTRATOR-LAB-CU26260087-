# Q9. Move to the beginning and end of a line

**Question:** Move the cursor to the beginning and end of a line using vi/vim commands.

## Commands (Normal mode)

| Keys | Action |
|------|--------|
| `0` | Move to the **very beginning** of the line (column 1) |
| `^` | Move to the first **non-blank** character of the line |
| `$` | Move to the **end** of the line |
| `Home` / `End` | Same as `0` / `$` |
| `w` / `b` | Next word / previous word (extra) |

## Demonstration

```bash
vim lab5.txt
```

1. Press `2G` to go to line 2
2. Press `$` -> cursor jumps to the end of the line
3. Press `0` -> cursor jumps to the beginning of the line
