local Plug = vim.fn["plug#"]
local opts = { noremap = true, silent = true }

vim.call("plug#begin", "/home/chris/.config/nvim/plugged")
  -- Neovim LSP and dependencies.
  Plug("neovim/nvim-lspconfig")
  Plug("hrsh7th/nvim-cmp")
  Plug("hrsh7th/cmp-nvim-lsp")
  Plug("saadparwaiz1/cmp_luasnip")
  Plug("L3MON4D3/LuaSnip")

  -- NERDTree.
  Plug("scrooloose/nerdtree", {on = "NERDTreeToggle"})

  -- Emmet.
  Plug("mattn/emmet-vim", {["for"] = {"css", "html"}})

  -- Neovim theme.
  Plug("ellisonleao/gruvbox.nvim")

  -- Telescope and dependencies.
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
vim.call("plug#end")


-- Load Gruvbox theme.
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Emmet only for html/css.
vim.g.user_emmet_install_global = 0
vim.api.nvim_exec([[ autocmd FileType html,css EmmetInstall]], false)
