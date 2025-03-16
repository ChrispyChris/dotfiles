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
    map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = "Find files" })
    map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Live grep" })
    map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Search buffers" })
    map("n", "<Leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = "Search help tags" })
    map("n", "<leader>sw", "<cmd>lua require('telescope.builtin').grep_string()<CR>", { desc = "Search current word" })
    map("n", "<leader>sd", "<cmd>lua require('telescope.builtin').diagnostics()<CR>", { desc = "Search diagnostics" })
    map("n", "<leader>cb", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", { desc = "Search current buffer fuzzily" })
    map("n", "<leader>sc", "<cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })<CR>", { desc = "Search Neovim configuration files" })

    -- Telescope autocommands for the LSP.
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
        map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
        map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
        map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
        map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
        map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
        map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
        map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
        map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
      end,
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
  end
}
