return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      decorations = {
        statusline = {
          -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
          -- this will show the current version of the flutter app from the pubspec.yaml file
          app_version = true,
          -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
          -- this will show the currently running device if an application was started with a specific
          -- device
          device = true,
        },
      },
      flutter_path = "/Users/antoniogiachin/flutter/bin/flutter",
    })

    require("flutter-tools").setup_project({
      {
        name = "Development",                 -- an arbitrary name that you provide so you can recognise this config
        flavor = "development",               -- your flavour
        target = "lib/main_development.dart", -- your target
      },
    })
  end,
}
