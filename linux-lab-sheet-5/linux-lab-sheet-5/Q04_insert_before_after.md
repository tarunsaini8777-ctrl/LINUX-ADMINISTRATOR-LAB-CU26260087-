# Q4. Insert text before and after the cursor

**Question:** Insert new text before and after the current cursor position and verify the changes.

## Commands

```bash
vim lab5.txt
```

| Keys | Action |
|------|--------|
| `i` | Insert **before** the cursor |
| `a` | Insert (append) **after** the cursor |
| `I` | Insert at the **beginning of the line** |
| `A` | Append at the **end of the line** |
| `Esc` | Return to Normal mode |

## Demonstration

1. Move to the word `Vim` on line 2 (`2G`, then `w` / `l` to position the cursor).
2. Press `i`, type `[BEFORE] `, press `Esc`  -> text inserted before the cursor.
3. Move the cursor to a character, press `a`, type ` [AFTER]`, press `Esc`  -> text inserted after the cursor.
4. Press `:w` to save.

## Verify

```bash
cat lab5.txt          # the new text is visible
```
