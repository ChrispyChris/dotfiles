local api = vim.api

local format_group = api.nvim_create_augroup("FormatGroup", { clear = true })
api.nvim_create_autocmd(
    { "BufReadPost", "FileReadPost" },
    { pattern = "*", command = "normal zR", group = format_group })
