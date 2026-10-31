# Q19. Line numbers and jumping to a line

**Question:** Use line numbers to display the current line number and jump directly to a specified line.

## Commands

| Keys / Command | Action |
|----------------|--------|
| `:set number` (or `:set nu`) | Show line numbers on the left |
| `:set nonumber` | Hide line numbers |
| `Ctrl+g` | Show file name and **current line number** at the bottom |
| `:.=` | Print the current line number |
| `:=` | Print the total number of lines |
| `:5` or `5G` | **Jump** directly to line 5 |
| `:$` or `G` | Jump to the last line |

## Demonstration

```bash
vim lab5.txt
```

1. Type `:set number` and press `Enter`
2. Press `Ctrl+g` -> shows something like `"lab5.txt" 5 lines --60%--`
3. Type `:4` and press `Enter` -> jumps to line 4
4. Type `:.=` -> prints `4`
