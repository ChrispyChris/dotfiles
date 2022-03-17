local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Set Neovim Escape.
vim.api.nvim_set_keymap("i", "jj", "<Esc>", opts)

-- Set leader key to space bar.
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set Emmet leader key.
vim.g.user_emmet_leader_key = ","

-- Set NERDTree key.
vim.api.nvim_set_keymap("n", "<Leader>n", ":NERDTreeToggle<CR>", opts)

-- Telescope autocommands.
map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
map("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
