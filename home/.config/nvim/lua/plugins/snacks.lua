-- snacks-explorer
return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    notifier = { enabled = true },
  },
  keys = {
    {
      "<Bslash>",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
    {
      "<leader>h",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
  },
}
