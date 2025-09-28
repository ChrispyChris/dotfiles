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

    -- Telescope commands.
    map("n", "<Leader>ff", function() require('telescope.builtin').find_files({}) end, { desc = "Telescope Find Files (CWD)" })
    map("n", "<Leader>fg", function() require('telescope.builtin').live_grep() end, { desc = "Live grep" })
    map("n", "<Leader>fb", function() require('telescope.builtin').buffers() end, { desc = "Search buffers" })
    map("n", "<Leader>fh", function() require('telescope.builtin').help_tags() end, { desc = "Search help tags" })
    map("n", "<leader>sw", function() require('telescope.builtin').grep_string() end, { desc = "Search current word" })
    map("n", "<leader>sd", function() require('telescope.builtin').diagnostics() end, { desc = "Search diagnostics" })
    map("n", "<leader>cb", function() require('telescope.builtin').current_buffer_fuzzy_find() end, { desc = "Search current buffer fuzzily" })
    map("n", "<leader>sc", function() require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') }) end, { desc = "Search Neovim configuration files" })
    end
}
