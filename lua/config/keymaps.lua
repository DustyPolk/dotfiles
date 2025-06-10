local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })

keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

keymap.set({ "n", "x" }, "j", "gj", opts)
keymap.set({ "n", "x" }, "k", "gk", opts)

keymap.set("n", "<leader>ul", "<cmd>Lazy<cr>", { desc = "Lazy" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

keymap.set("n", "gw", "*N", { desc = "Search word under cursor" })

keymap.set({ "n", "v" }, "<leader>cf", function()
  vim.lsp.buf.format()
end, { desc = "Format" })

keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })

keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Telescope
keymap.set("n", "<leader><space>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
keymap.set("n", "<leader>/", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
keymap.set("n", "<leader>,", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent Files" })