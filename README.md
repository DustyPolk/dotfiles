# Neovim Configuration - Keybinding Cheatsheet

This is a minimal, modular Neovim configuration using lazy.nvim with Tokyo Night theme.

## Leader Key
**Space** is the leader key for all mappings below.

## File Operations
| Key | Action |
|-----|--------|
| `<Space><Space>` | Find files (Telescope) |
| `<Space>ff` | Find files (alternative) |
| `<Space>fg` | Find git files |
| `<Space>fr` | Recent files |
| `<Space>/` | Live grep (search in files) |
| `<Space>,` | Switch buffers |

## Buffer Management
| Key | Action |
|-----|--------|
| `<Space>bb` | Switch to other buffer |
| `<Space>,` | Buffer picker |
| `Shift-H` | Previous buffer |
| `Shift-L` | Next buffer |
| `[b` | Previous buffer |
| `]b` | Next buffer |

## File & Session
| Key | Action |
|-----|--------|
| `<Space>w` | Save file |
| `<Space>q` | Quit all |
| `Ctrl-S` | Save file (insert/normal/visual) |

## Window Management
| Key | Action |
|-----|--------|
| `<Space>ww` | Switch to other window |
| `<Space>wd` | Delete window |
| `<Space>w-` | Split window below |
| `<Space>w\|` | Split window right |
| `<Space>-` | Split window below (shortcut) |
| `<Space>\|` | Split window right (shortcut) |
| `Ctrl-H/J/K/L` | Navigate between windows |
| `Ctrl-Up/Down` | Resize window height |
| `Ctrl-Left/Right` | Resize window width |

## Git Operations (Gitsigns)
| Key | Action |
|-----|--------|
| `]h` | Next git hunk |
| `[h` | Previous git hunk |
| `<Space>ghs` | Stage hunk |
| `<Space>ghr` | Reset hunk |
| `<Space>ghS` | Stage buffer |
| `<Space>ghu` | Undo stage hunk |
| `<Space>ghR` | Reset buffer |
| `<Space>ghp` | Preview hunk inline |
| `<Space>ghb` | Blame line |
| `<Space>ghd` | Diff this |
| `<Space>ghD` | Diff this ~ |
| `<Space>gc` | Git commits (Telescope) |
| `<Space>gs` | Git status (Telescope) |

## Search & Navigation
| Key | Action |
|-----|--------|
| `<Space>sb` | Search in current buffer |
| `<Space>sc` | Command history |
| `<Space>sC` | Commands |
| `<Space>sh` | Help pages |
| `<Space>sk` | Keymaps |
| `<Space>so` | Vim options |
| `<Space>sR` | Resume last search |
| `<Space>sw` | Search word under cursor |
| `gw` | Search word under cursor |
| `n` | Next search result |
| `N` | Previous search result |
| `<Esc>` | Clear search highlight |

## Code & Diagnostics
| Key | Action |
|-----|--------|
| `<Space>cf` | Format code |
| `<Space>cd` | Line diagnostics |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `<Space>xl` | Location list |
| `<Space>xq` | Quickfix list |
| `]q` | Next quickfix |
| `[q` | Previous quickfix |

## Editing
| Key | Action |
|-----|--------|
| `gsa` | Add surrounding |
| `gsd` | Delete surrounding |
| `gsr` | Replace surrounding |
| `gsf` | Find surrounding |
| `gsh` | Highlight surrounding |
| `j/k` | Move by visual lines |
| `<` | Unindent (visual mode, repeatable) |
| `>` | Indent (visual mode, repeatable) |

## Tabs
| Key | Action |
|-----|--------|
| `<Space><Tab>l` | Last tab |
| `<Space><Tab>f` | First tab |
| `<Space><Tab><Tab>` | New tab |
| `<Space><Tab>]` | Next tab |
| `<Space><Tab>[` | Previous tab |
| `<Space><Tab>d` | Close tab |

## Plugin Management
| Key | Action |
|-----|--------|
| `<Space>ul` | Open Lazy plugin manager |

## Terminal
| Key | Action |
|-----|--------|
| `<Esc><Esc>` | Enter normal mode (in terminal) |
| `Ctrl-H/J/K/L` | Navigate windows (from terminal) |

## Miscellaneous
| Key | Action |
|-----|--------|
| `<Space>uC` | Colorscheme picker with preview |

## Text Objects
| Key | Action |
|-----|--------|
| `ih` | Git hunk text object |

---

## Plugins Included
- **Telescope**: Fuzzy finder for files, buffers, and more
- **Gitsigns**: Git integration with hunk operations
- **Which-key**: Shows available keybindings
- **Treesitter**: Enhanced syntax highlighting
- **Tokyo Night**: Beautiful dark theme
- **Lualine**: Minimal statusline
- **Autopairs**: Auto-close brackets and quotes
- **Comment**: Easy commenting
- **Mini.surround**: Surround text operations
- **Indent guides**: Visual indentation helpers