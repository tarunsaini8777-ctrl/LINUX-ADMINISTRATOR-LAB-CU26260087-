# Q8. Exit without saving

**Question:** Exit vi/vim without saving the changes made to a file.

## Commands

| Command | Action |
|---------|--------|
| `:q!` + `Enter` | Quit and **discard** all changes |
| `ZQ` (Normal mode) | Same as `:q!` |
| `:e!` | Discard changes but stay in vim (reload the last saved version) |
| `:q` | Quit only if there are NO unsaved changes (otherwise error `E37`) |

## Demonstration

```bash
vim lab5.txt
```

1. Press `i`, type `THIS WILL NOT BE SAVED`, press `Esc`
2. Try `:q` -> error: `E37: No write since last change (add ! to override)`
3. Type `:q!` and press `Enter`  -> exits without saving

## Verify

```bash
cat lab5.txt          # the unsaved text is not present
```
