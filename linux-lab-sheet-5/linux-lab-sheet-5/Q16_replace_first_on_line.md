# Q16. Replace the first occurrence on the current line

**Question:** Replace the first occurrence of a specified word on the current line using vi/vim.

## Command (Command-Line mode)

```vim
:s/old/new/
```

| Part | Meaning |
|------|---------|
| `:s` | substitute on the **current line** only |
| `/old/` | the word to search for |
| `/new/` | replacement text |
| (no `g` flag) | only the **first** occurrence on the line is replaced |

## Demonstration

```bash
vim lab5.txt
```

1. Move to line 1: `1G`
2. Type `:s/Linux/Ubuntu/` and press `Enter`
3. Only the first `Linux` on that line is replaced
4. Press `u` to undo if needed, `:w` to save
