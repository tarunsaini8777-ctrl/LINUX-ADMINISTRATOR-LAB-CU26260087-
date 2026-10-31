# Q2. Open an existing file

**Question:** Open an existing file named lab5.txt using vi/vim and display its contents.

## Commands

```bash
vim lab5.txt          # open for editing - contents are displayed on the screen
view lab5.txt         # open in READ-ONLY mode (safe viewing)
vim -R lab5.txt       # same as view
vim +3 lab5.txt       # open and jump to line 3
```

## Inside vim

| Keys / Command | Action |
|----------------|--------|
| `:set number` | Show line numbers |
| `Ctrl+f` / `Ctrl+b` | Page down / page up |
| `:q` | Quit (no changes made) |

## Verify (outside vim)

```bash
cat lab5.txt
```
