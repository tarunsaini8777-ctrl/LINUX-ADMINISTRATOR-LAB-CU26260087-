# Q17. Replace all occurrences in the file

**Question:** Replace all occurrences of a specified word throughout the file using a suitable substitution command.

## Commands (Command-Line mode)

| Command | Action |
|---------|--------|
| `:%s/old/new/g` | Replace **all** occurrences in the **whole file** |
| `:%s/old/new/gc` | Same, but **ask for confirmation** for each match (`y` yes, `n` no, `a` all, `q` quit) |
| `:%s/old/new/gi` | Case-insensitive replace |
| `:3,5s/old/new/g` | Replace only in lines 3 to 5 |

## Demonstration

```bash
vim lab5.txt
```

1. Type `:%s/Linux/Ubuntu/g` and press `Enter`
2. vim reports e.g. `2 substitutions on 2 lines`
3. Save with `:w`

## Verify

```bash
grep -c "Ubuntu" lab5.txt
```
