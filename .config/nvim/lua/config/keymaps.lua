local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Set leader key to space bar
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap("n", "<Leader>n", ":NERDTree<CR>", opts)
vim.api.nvim_set_keymap("i", "jj", "<Esc>", opts)
