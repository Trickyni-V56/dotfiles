return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    toggle = { enabled = true },
    explorer = { enabled = true },
    picker = {
      sources = {
        explorer = { layout = { preset = "sidebar" } },
        recent = { layout = { preset = "select" } },
        projects = { layout = { preset = "select" } },
        zoxide = { layout = { preset = "select" } },
        diagnostics = {
          layout = { preset = "right" },
          win = { list = { wo = { wrap = true } } },
        },
        notifications = {
          layout = { preset = "select" },
          win = { list = { wo = { wrap = true } } },
        },
        grep = { enabled = true },
      },
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
        Snacks.picker.zoxide({ layout = { preset = "select" } })
      end,
      desc = "Zoxide",
    },
    {
      "<leader>d",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Diagnostics",
    },
    {
      "<leader>;",
      function()
        Snacks.picker.lsp_config()
      end,
      desc = "LSP config list",
    },
    {
      "<leader>p",
      function()
        Snacks.picker.projects()
      end,
      desc = "Projects",
    },
    {
      "<leader>r",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>t",
      function()
        Snacks.picker.todo_comments()
      end,
      desc = "List TODO comments",
    },
  },
}
