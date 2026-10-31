# Q6. Save without exiting

**Question:** Save the current file without exiting vi/vim.

## Commands

| Command | Action |
|---------|--------|
| `:w` + `Enter` | Write (save) the file and **stay** in vim |
| `:w newname.txt` | Save a copy under another name |
| `:w!` | Force write (for read-only files you own) |

## Demonstration

```bash
vim lab5.txt
```

1. Press `i`, add a line, press `Esc`
2. Type `:w` and press `Enter`  -> message like `"lab5.txt" 6L, 215B written` appears
3. You are still inside vim and can continue editing.
