# Q18. Undo and redo

**Question:** Undo the last change and then redo the change using vi/vim commands.

## Commands (Normal mode)

| Keys / Command | Action |
|----------------|--------|
| `u` | **Undo** the last change |
| `Ctrl+r` | **Redo** the change that was undone |
| `U` | Undo all changes on the last changed line |
| `:undo` / `:redo` | Ex-command forms of undo / redo |
| `5u` | Undo the last 5 changes |

## Demonstration

```bash
vim lab5.txt
```

1. Press `dd` to delete a line
2. Press `u` -> the line comes back (`1 more line`)
3. Press `Ctrl+r` -> the deletion is redone (`1 line less`)
