-- Set leader keys before lazy.nvim loads
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set clipboard option
vim.opt.clipboard = "unnamedplus"

require("config.lazy")
require("config")


