-- snacks-explorer
return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    notifier = { enabled = true },
    picker = {
      layout = { preset = "sidebar" },
    },
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
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>h",
      function()
        Snacks.picker.notifications()
      end,
      desc = "Notification History",
    },
    {
      "<leader>z",
      function()
        Snacks.picker.zoxide()
      end,
      desc = "Notification History",
    },
  },
}
