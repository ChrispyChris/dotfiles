return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 
      'nvim-tree/nvim-web-devicons',
      enabled = vim.g.have_nerd_font,
    },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        },
      },
    }
    pcall(require('telescope').load_extension, 'fzf')
    -- Telescope autocommands.
--    local builtin = require "telescope.builtin"
--    map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = "Find files" })
--    map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Live grep" })
--    map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Search buffers" })
--    map("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = "Search help tags" })
  end,
}
