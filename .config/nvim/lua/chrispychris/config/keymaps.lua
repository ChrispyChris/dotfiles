local opts = { noremap = true, silent = true }
local map = function(mode, lhs, rhs, options)
  vim.keymap.set(mode, lhs, rhs, options)
end
local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup

-- Set Neovim Escape.
map("i", "jj", "<Esc>", opts)

-- Set Control+D/U to center the cursor vertically in the buffer on move.
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Set leader key to space bar.
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Highlight when yanking text.
create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text.",
  group = create_augroup("yank_highlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set Emmet leader key.
vim.g.user_emmet_leader_key = ","

-- Set NERDTree key.
-- map("n", "<Leader>n", "<cmd>NERDTreeToggle<CR>", opts)

-- Telescope autocommands.
map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
map("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
