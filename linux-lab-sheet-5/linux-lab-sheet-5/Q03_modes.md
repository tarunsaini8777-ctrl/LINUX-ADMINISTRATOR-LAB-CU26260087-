# Q3. Normal, Insert and Command-Line modes

**Question:** Demonstrate switching between Normal mode, Insert mode and Command-Line mode in vi/vim.

## Modes in vi/vim

| Mode | How to enter | Indicator | Purpose |
|------|--------------|-----------|---------|
| **Normal** (Command) | `Esc` (default on start) | nothing shown | Move, delete, copy, paste, undo |
| **Insert** | `i`, `a`, `o`, `I`, `A`, `O` | `-- INSERT --` | Type / edit text |
| **Command-Line** (Ex) | `:` from Normal mode | `:` prompt at the bottom | Save, quit, search/replace, set options |
| **Visual** (extra) | `v`, `V`, `Ctrl+v` | `-- VISUAL --` | Select text |

## Demonstration

```bash
vim lab5.txt
```

1. File opens in **Normal mode**.
2. Press `i` -> **Insert mode** (`-- INSERT --`). Type: `This line was typed in Insert mode.`
3. Press `Esc` -> back to **Normal mode**.
4. Press `:` -> **Command-Line mode**. Type `set number` and press `Enter` (line numbers appear), you return to Normal mode automatically.
5. Press `:q!` + `Enter` to quit without saving (or `:wq` to keep the line).

> Tip: if you are unsure which mode you are in, press `Esc` once or twice -> you are in Normal mode.
