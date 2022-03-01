local Plug = vim.fn["plug#"]

vim.call("plug#begin", "/home/chris/.config/nvim/plugged")
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("saadparwaiz1/cmp_luasnip")
Plug("L3MON4D3/LuaSnip")
Plug("scrooloose/nerdtree", {on = "NERDTreeToggle"})
Plug("mattn/emmet-vim", {["for"] = {"css", "html"}})
Plug("ellisonleao/gruvbox.nvim")
vim.call("plug#end")
