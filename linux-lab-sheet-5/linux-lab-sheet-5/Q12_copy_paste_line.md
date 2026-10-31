# Q12. Copy the current line and paste it below

**Question:** Copy the current line and paste it below the current line.

## Commands (Normal mode)

| Keys | Action |
|------|--------|
| `yy` (or `Y`) | **Yank** (copy) the current line |
| `p` | **Paste** below the current line |
| `P` | Paste **above** the current line |
| `:t.` | Copy the current line below itself using Ex command (alternative) |

## Demonstration

```bash
vim lab5.txt
```

1. Go to line 2: `2G`
2. Press `yy` -> line copied (message: `1 line yanked`)
3. Press `p` -> a duplicate of line 2 appears **below** it
4. Save with `:w`

## Verify

```bash
cat -n lab5.txt       # line 2 appears twice
```
