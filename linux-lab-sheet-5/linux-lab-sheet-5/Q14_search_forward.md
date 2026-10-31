# Q14. Search forward

**Question:** Search forward for a specified word in the file and move between matching occurrences.

## Commands (Normal mode)

| Keys / Command | Action |
|----------------|--------|
| `/word` + `Enter` | Search **forward** for `word` |
| `n` | Jump to the **next** match |
| `N` | Jump to the **previous** match |
| `*` | Search forward for the word under the cursor |
| `:set hlsearch` | Highlight all matches |
| `:set ignorecase` | Case-insensitive search (or add `\c` : `/linux\c`) |
| `:noh` | Remove the highlighting |

## Demonstration

```bash
vim lab5.txt
```

1. Press `gg` to start from the top
2. Type `/Linux` and press `Enter` -> cursor jumps to the first match
3. Press `n` repeatedly -> moves through each match (wraps around at the end)
4. Press `N` -> goes back to the previous match
