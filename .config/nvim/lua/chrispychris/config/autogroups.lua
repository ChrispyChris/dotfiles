local api = vim.api

local format_group = api.nvim_create_augroup("FormatGroup", { clear = true })
api.nvim_create_autocmd(
    { "BufReadPost", "FileReadPost" },
    { pattern = "*", command = "normal zR", group = format_group })

local nerdtree_group = api.nvim_create_augroup("NerdtreeGroup", { clear = true})
api.nvim_create_autocmd(
    { "StdinReadPre" },
    { pattern = "*", command = "let s:std_in=1" })
api.nvim_create_autocmd(
    { "VimEnter" },
    { pattern = "*", command = "if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree", group = nerdtree_group })
