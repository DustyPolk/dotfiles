# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a modular Neovim configuration with lazy.nvim plugin manager, focused on being beautiful yet minimal with sensible defaults.

## Architecture

The configuration follows a modular structure:
- `init.lua` - Entry point that loads lazy.nvim and config modules
- `lua/config/` - Core configuration modules
  - `lazy.lua` - Plugin manager setup
  - `options.lua` - Editor options and settings
  - `keymaps.lua` - Key mappings
  - `autocmds.lua` - Auto commands
  - `ui.lua` - UI helper functions
- `lua/plugins/` - Plugin configurations
  - `colorscheme.lua` - Tokyo Night theme (no line highlights)
  - `ui.lua` - UI enhancements (lualine, indent guides, noice)
  - `treesitter.lua` - Syntax highlighting
  - `telescope.lua` - Fuzzy finder
  - `editor.lua` - Editor enhancements (gitsigns, which-key, autopairs)

## Common Development Tasks

1. **Testing configuration changes**: 
   - Edit relevant files in `lua/config/` or `lua/plugins/`
   - Restart Neovim or run `:source %` to reload current file
   - Run `:Lazy` to manage plugins

2. **Adding new plugins**:
   - Create a new file in `lua/plugins/` or add to existing category
   - Follow the lazy.nvim plugin spec format
   - Plugins are auto-loaded from the `lua/plugins/` directory

3. **Modifying keymaps**:
   - Edit `lua/config/keymaps.lua` for global keymaps
   - Add plugin-specific keymaps in respective plugin configurations

## Key Features

- **Leader key**: Space (set in init.lua before lazy.nvim loads)
- **Plugin management**: lazy.nvim with automatic loading
- **Theme**: Tokyo Night (moon variant) without cursorline
- **Statusline**: Minimal lualine configuration with time display
- **File navigation**: Telescope for fuzzy finding
- **Syntax**: Treesitter for enhanced highlighting
- **Git integration**: Gitsigns for git status in editor
- **UI enhancements**: Indent guides, which-key for keybinding help
- **Line numbers**: Static line numbers (relative disabled)
- **Editor**: Autopairs, commenting, surround operations

## Current Configuration State

### Fixed Issues
- Leader keys are set in `init.lua` before lazy.nvim loads to avoid warnings
- Fillchars options simplified to avoid invalid argument errors (removed foldsep, foldopen, foldclose)
- Which-key updated to v3 configuration format using `spec` instead of `defaults`
- Noice disabled due to compatibility issues
- Telescope fzf extension loading wrapped in pcall to handle missing extension gracefully
- Relative line numbers disabled to show only static line numbers

### Core Keybindings (Space as leader)
- **File Operations**: `<Space><Space>` find files, `<Space>ff` find files, `<Space>fr` recent files
- **Search**: `<Space>/` live grep, `<Space>,` switch buffers
- **Git**: `<Space>g*` various git operations via gitsigns
- **Windows**: `<Space>w*` window management, `<Space>-` split below, `<Space>|` split right
- **Buffers**: `<Space>bb` switch to other buffer, `Shift-H/L` prev/next buffer
- **Save/Quit**: `<Space>w` save file, `<Space>q` quit all
- **Lazy**: `<Space>ul` open lazy plugin manager

### Plugin Configuration Notes
- Telescope: Uses plenary.nvim dependency, fzf-native optional
- Which-key: Uses new v3 spec format with group definitions
- Gitsigns: Comprehensive git hunk operations with leader+gh prefix
- Tokyo Night: Moon variant theme without cursor line highlighting
- Lualine: Minimal statusline with diagnostics, git diff, and time display