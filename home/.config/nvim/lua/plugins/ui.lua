-- lewis6991/gitsigns.nvim
-- sitiom/nvim-numbertoggle
-- akinsho/bufferline.nvim
-- nvim-lualine/lualine.nvim
-- stevearc/dressing.nvim
-- karb94/neoscroll.nvim
-- lewis6991/satellite.nvim"

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
    config = function()
      require("bufferline").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "stevearc/dressing.nvim",
    enabled = false,
    opts = {},
  },
  {
    "karb94/neoscroll.nvim",
    opts = {
      easing = "quintic",
    },
  },
  --nnoremap
  {
    "lewis6991/satellite.nvim",
    opts = {
      width = 1,
      handlers = {
        cursor = { enable = true, symbols = { "█" } },
        search = {
          enable = true,
          symbols = { "▓" },
        },
        diagnostics = {
          enabled = true,
          symbols = { "▓" },
          signs = { "▓" },
          min_severity = vim.diagnostic.severity.HINT,
        },
        gitsigns = { enable = false },
      },
    },
  },
}
