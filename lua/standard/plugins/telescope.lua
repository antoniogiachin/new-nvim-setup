return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        defaults = {
          defaults = {
            preview = {
              treesitter = false,
              filesize_hook = function(filepath, bufnr, opts)
                local max_bytes = 5000
                local cmd = { "head", "-c", max_bytes, filepath }
                require('telescope.previewers.utils').job_maker(cmd, bufnr, opts)
              end
            },
          },
        }
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
      vim.keymap.set('n', '<leader>fS', builtin.lsp_document_symbols, {})
      vim.keymap.set('n', '<leader>fwS', builtin.lsp_workspace_symbols, {})
      vim.keymap.set('n', '<leader>fI', builtin.lsp_implementations, {})
      vim.keymap.set('n', '<leader>fD', builtin.diagnostics, {})
      vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set('n', '<leader>fF', "<Cmd>Telescope flutter commands<CR>", {})

      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("flutter")
      require('telescope').load_extension('fzf')
    end,
  },
}
