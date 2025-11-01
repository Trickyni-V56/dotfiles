-- saghen/blink.pairs
-- nmac427/guess-indent.nvim
return {
  {
    "saghen/blink.pairs",
    enabled = true,
    priority = 100,
    version = "*", -- (recommended) only required with prebuilt binaries
    --- @module 'blink.pairs'
    --- @type blink.pairs.Config
    dependencies = { "saghen/blink.download", "nvim-mini/mini.base16" },
    opts = {
      highlights = {
        enabled = true,
        groups = {
          "BlinkPairsOne",
          "BlinkPairsTwo",
          "BlinkPairsThree",
          "BlinkPairsFour",
        },
        -- unmatched_group = "BlinkPairsUnmatched",
        matchparen = {
          enabled = true,
          group = "BlinkPairsMatchParen",
        },
      },
    },
    config = function(_, opts)
      require("blink.pairs").setup(opts)
      vim.api.nvim_set_hl(0, "BlinkPairsOne", { fg = "#e86045" })
      vim.api.nvim_set_hl(0, "BlinkPairsTwo", { fg = "#3eccbe" })
      vim.api.nvim_set_hl(0, "BlinkPairsThree", { fg = "#f8e2a0" })
      vim.api.nvim_set_hl(0, "BlinkPairsFour", { fg = "#c1a387" })
    end,
  },
  {
    "nmac427/guess-indent.nvim",
    opts = {},
  },
}
