-- snacks-explorer
return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
    {
      "<Bslash>",
      function()
        Snacks.explorer({ layout = { preset = "sidebar" } })
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
        Snacks.picker.notifications({ layout = { preset = "select" } })
      end,
      desc = "Notification History",
    },
    {
      "<leader>z",
      function()
        Snacks.picker.zoxide({ layout = { preset = "select" } })
      end,
      desc = "Zoxide",
    },
    {
      "<leader>d",
      function()
        Snacks.picker.diagnostics({ layout = { preset = "right" } })
      end,
      desc = "Diagnostics",
    },
  },
}
