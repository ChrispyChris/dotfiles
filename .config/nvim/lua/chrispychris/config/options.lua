local opt = vim.opt

vim.cmd("syntax enable")
opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.colorcolumn = "81"
opt.completeopt = {"menu", "menuone", "noselect"}
opt.conceallevel = 0
opt.cursorline = true
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.guifont = "TerminessTTF Nerd Font Mono 11"
opt.hlsearch = true
opt.ignorecase = true
opt.mouse = "a"
opt.number = true
opt.numberwidth = 4
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 8
opt.shiftwidth = 4
opt.shortmess:append "c"
opt.showmode = false
opt.showtabline = 1
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 1000
opt.undofile = true
opt.updatetime = 300
opt.wrap = false
opt.writebackup = false

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Load Gruvbox theme.
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Configure and load Lualine.
require("lualine").setup()
