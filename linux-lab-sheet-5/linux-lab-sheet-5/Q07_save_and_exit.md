# Q7. Save and exit

**Question:** Save the current file and exit vi/vim using the appropriate command.

## Commands

| Command | Action |
|---------|--------|
| `:wq` + `Enter` | Write (save) and quit |
| `:x` + `Enter` | Save (only if changed) and quit |
| `ZZ` (Normal mode) | Same as `:x` - save and quit |
| `:wq!` | Force save and quit |

## Demonstration

```bash
vim lab5.txt
```

1. Edit the file (`i` ... `Esc`)
2. Type `:wq` and press `Enter`  -> vim saves and returns to the shell

## Verify

```bash
cat lab5.txt          # changes are saved
```
