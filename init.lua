-- Basic Neovim configuration

-- Line numbers
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Additional useful defaults
vim.opt.wrap = false           -- Don't wrap lines
vim.opt.scrolloff = 8          -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8      -- Keep 8 columns left/right of cursor

-- Tab settings
vim.opt.tabstop = 4           -- Tab width
vim.opt.shiftwidth = 4        -- Indent width
vim.opt.expandtab = true      -- Use spaces instead of tabs

-- Search settings
vim.opt.ignorecase = true     -- Case insensitive search
vim.opt.smartcase = true      -- Case sensitive when uppercase present
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.incsearch = true      -- Incremental search

-- Enable mouse support
vim.opt.mouse = 'a'

-- Better completion
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
