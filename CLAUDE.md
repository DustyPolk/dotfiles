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

- **Leader key**: Space
- **Plugin management**: lazy.nvim with automatic loading
- **Theme**: Tokyo Night (moon variant) without cursorline
- **Statusline**: Minimal lualine configuration
- **File navigation**: Telescope for fuzzy finding
- **Syntax**: Treesitter for enhanced highlighting
- **Git integration**: Gitsigns for git status in editor
- **UI enhancements**: Noice for better notifications, indent guides