# Q10. Move to the beginning and end of the file

**Question:** Move the cursor to the beginning and end of the file using vi/vim commands.

## Commands (Normal mode)

| Keys | Action |
|------|--------|
| `gg` | Go to the **first line** of the file |
| `1G` or `:1` | Go to the first line (alternative) |
| `G` | Go to the **last line** of the file |
| `:$` | Go to the last line (alternative) |
| `Ctrl+f` / `Ctrl+b` | Page forward / backward (extra) |

## Demonstration

```bash
vim lab5.txt
```

1. Press `G` -> cursor moves to the last line
2. Press `gg` -> cursor moves to the first line
