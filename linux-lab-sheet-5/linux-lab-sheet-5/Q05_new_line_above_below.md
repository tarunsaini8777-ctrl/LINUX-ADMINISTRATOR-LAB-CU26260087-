# Q5. Open a new line below / above

**Question:** Add a new line below the current line and another new line above the current line using vi/vim commands.

## Commands

| Keys | Action |
|------|--------|
| `o` | Open a **new line below** the current line and enter Insert mode |
| `O` | Open a **new line above** the current line and enter Insert mode |
| `Esc` | Return to Normal mode |

## Demonstration

```bash
vim lab5.txt
```

1. Go to line 3: `3G`
2. Press `o`, type `This line is BELOW line 3.`, press `Esc`
3. Go to line 3 again: `3G`
4. Press `O`, type `This line is ABOVE line 3.`, press `Esc`
5. Save with `:w`

## Verify

```bash
cat -n lab5.txt
```
