return {
  "MunifTanjim/prettier.nvim",
  dependencies = {
    { "jose-elias-alvarez/null-ls.nvim" },
  },
  config = function()
    vim.keymap.set("n", "<leader>P", "<cmd>Prettier<CR>")
  end,
}
