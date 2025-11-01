-- lewis6991/gitsigns.nvim
-- sitiom/nvim-numbertoggle
-- akinsho/bufferline.nvim
-- nvim-mini/mini.statusline
-- stevearc/dressing.nvim
-- karb94/neoscroll.nvim
-- lewis6991/satellite.nvim"
-- folke/which-key.nvim
-- snacks.notifier
return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  { -- adds a row for git changes sumbols
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },
  { -- toggles relative numbers in normal mode and absolute numbers in insert/command mode
    "sitiom/nvim-numbertoggle",
  },
  { -- shows open buffers as tabs
    "akinsho/bufferline.nvim",
    enabled = true,
    opts = {},
  },
  {
    "karb94/neoscroll.nvim",
    opts = {
      easing = "quintic",
    },
  },
  {
    "lewis6991/satellite.nvim",
    enabled = true,
    opts = {
      width = 1,
      handlers = {
        cursor = { enable = false },
        search = { enable = true, symbols = { "━" } },
        diagnostic = { enable = false },
        gitsigns = { enable = false },
      },
    },
    config = function(_, opts)
      require("satellite").setup(opts)
      -- vim.api.nvim_set_hl(0, "SatelliteSearch", { fg = "#f8e2a0", bg = "NONE" })
      vim.api.nvim_set_hl(0, "SatelliteSearchCurrent", { fg = "#3eccbe", bg = "NONE" })
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = { preset = "helix" },
  },
  { "folke/snacks.nvim", priority = 1000, opts = { notifier = { enabled = true } } },
}
