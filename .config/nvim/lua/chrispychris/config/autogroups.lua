local api = vim.api

--[[local nerdtree_group = api.nvim_create_augroup("NerdtreeGroup", { clear = true})

api.nvim_create_autocmd(
    { "VimEnter" },
    { pattern = "*",
      callback = function()
        if vim.fn.argc() == 0 and vim.api.nvim_get_vvar('this_session') == '' then
          vim.cmd("NERDTree")
        end
      end,
      group = nerdtree_group })]]--
