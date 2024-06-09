local map = require("chrispychris.utils.keymap").map

local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup

-- Set leader key to space bar.
map("", "<Space>", "<Nop>", { desc = "Leader key" })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set Neovim Escape.
map("i", "jj", "<Esc>", { desc = "Move focus to the left window" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Set Control+D/U to center the cursor vertically in the buffer on move.
map("n", "<C-d>", "<C-d>zz", options)
map("n", "<C-u>", "<C-u>zz", options)

-- Highlight when yanking text.
create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text.",
  group = create_augroup("yank_highlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Clear highlight from searching when pressing <Esc> in normal mode.
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Set Emmet leader key.
-- vim.g.user_emmet_leader_key = ","
