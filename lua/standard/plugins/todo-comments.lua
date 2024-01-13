return {
  "folke/todo-comments.nvim",
  cmd = { "TodoTrouble", "TodoTelescope" },
  config = true,
  -- stylua: ignore
  keys = {
    { "<leader>fT", "<cmd>TodoTelescope<cr>", desc = "Todo" },
  },
}
