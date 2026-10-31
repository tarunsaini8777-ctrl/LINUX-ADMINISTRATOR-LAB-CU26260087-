# Q11. Delete a character, a word and a line

**Question:** Delete a character, a word and a complete line using appropriate vi/vim commands.

## Commands (Normal mode)

| Keys | Action |
|------|--------|
| `x` | Delete the **character** under the cursor |
| `X` | Delete the character **before** the cursor |
| `dw` | Delete a **word** (from the cursor to the start of the next word) |
| `dd` | Delete the **complete line** |
| `D` (or `d$`) | Delete from the cursor to the end of the line |
| `3x`, `2dw`, `2dd` | Repeat with a count (3 characters, 2 words, 2 lines) |
| `u` | Undo if you delete something by mistake |

## Demonstration

```bash
vim lab5.txt
```

1. Put the cursor on any character of line 1 -> press `x` (one character deleted)
2. Put the cursor at the start of a word -> press `dw` (word deleted)
3. Move to line 4 (`4G`) -> press `dd` (the entire line deleted)
4. Save with `:w`
