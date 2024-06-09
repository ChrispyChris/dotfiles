local map = require("chrispychris.utils.keymap").map

return {
  "nvim-telescope/telescope.nvim", branch = "0.1.x",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable "make" == 1
      end,
    },
    { 
      "nvim-tree/nvim-web-devicons",
      enabled = vim.g.have_nerd_font,
    },
  },
  config = function()
    require("telescope").setup {
      defaults = {
        mappings = {
        },
      },
    }
    pcall(require("telescope").load_extension, "fzf")

    -- Telescope autocommands.
    map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = "Find files" })
    map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Live grep" })
    map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Search buffers" })
    map("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = "Search help tags" })
    map("n", "<leader>sw", "<cmd>lua require('telescope.builtin').grep_string()<CR>", { desc = "Search current word" })
    map("n", "<leader>sd", "<cmd>lua require('telescope.builtin').diagnostics()<CR>", { desc = "Search diagnostics" })
    map("n", "<leader>cb", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", { desc = "Search current buffer fuzzily" })
    map("n", "<leader>sc", "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })<CR>", { desc = "Search Neovim configuration files" })
  end,
}
