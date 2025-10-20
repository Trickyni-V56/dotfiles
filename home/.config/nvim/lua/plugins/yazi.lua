return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  opts = {},
  keys = {
    {
      "<Bslash>",
      mode = { "n", "v" },
      "<cmd>Yazi<CR>",
      desc = "Open yazi at the current file",
    },
  },
}
