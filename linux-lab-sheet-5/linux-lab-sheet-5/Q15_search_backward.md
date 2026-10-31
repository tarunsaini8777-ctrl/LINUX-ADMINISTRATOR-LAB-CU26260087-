# Q15. Search backward

**Question:** Search backward for a specified word in the file and move between matching occurrences.

## Commands (Normal mode)

| Keys / Command | Action |
|----------------|--------|
| `?word` + `Enter` | Search **backward** for `word` |
| `n` | Next match **in the same direction as the search** (i.e. further backward) |
| `N` | Match in the **opposite** direction (i.e. forward) |
| `#` | Search backward for the word under the cursor |

## Demonstration

```bash
vim lab5.txt
```

1. Press `G` to go to the end of the file
2. Type `?Linux` and press `Enter` -> cursor jumps to the previous match above
3. Press `n` -> moves to the next earlier match
4. Press `N` -> moves forward again
