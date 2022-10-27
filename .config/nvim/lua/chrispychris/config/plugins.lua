local Plug = vim.fn["plug#"]
local opts = { noremap = true, silent = true }

vim.call("plug#begin", "/home/chris/.config/nvim/plugged")
  -- Neovim LSP.
  Plug("neovim/nvim-lspconfig")

  -- Neovim Treesitter.
  Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})

  -- Neovim completion engine and dependencies.
  Plug("hrsh7th/nvim-cmp")
  Plug("hrsh7th/cmp-buffer")
  Plug("hrsh7th/cmp-nvim-lsp")
  Plug("hrsh7th/cmp-path")
  Plug("saadparwaiz1/cmp_luasnip")
  Plug("L3MON4D3/LuaSnip")

  -- NERDTree.
  Plug("scrooloose/nerdtree", {on = "NERDTreeToggle"})

  -- Emmet.
  Plug("mattn/emmet-vim", {["for"] = {"css", "html"}})

  -- Telescope and dependencies.
  Plug "nvim-lua/plenary.nvim"
  Plug "nvim-telescope/telescope.nvim"
  Plug ("nvim-telescope/telescope-fzf-native.nvim", {["do"] = "make"})

  -- Neovim theme.
  Plug("ellisonleao/gruvbox.nvim")
  Plug("nvim-lualine/lualine.nvim")
  Plug("ryanoasis/vim-devicons")

vim.call("plug#end")

-- Emmet only for html/css.
vim.g.user_emmet_install_global = 0
vim.api.nvim_exec([[ autocmd FileType html,css EmmetInstall]], false)
vim.cmd [[let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
]]
