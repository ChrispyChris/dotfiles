local opts = { noremap = true, silent = true }

-- Set leader key to space bar
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set emmet leader key
vim.g.user_emmet_leader_key = ","

-- Configure keymaps
vim.api.nvim_set_keymap("n", "<Leader>n", ":NERDTreeToggle<CR>", opts)
vim.api.nvim_set_keymap("i", "jj", "<Esc>", opts)
