-- saghen/blink.pairs
-- saghen/blink.indent

return {
  {
    "saghen/blink.pairs",
    enabled = true,
    priority = 100,
    version = "*", -- (recommended) only required with prebuilt binaries
    --- @module 'blink.pairs'
    --- @type blink.pairs.Config
    dependencies = "saghen/blink.download",
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
      vim.api.nvim_set_hl(0, "BlinkPairsOne", { fg = "#e86045", bold = true })
      vim.api.nvim_set_hl(0, "BlinkPairsTwo", { fg = "#3eccbe", italic = true })
      vim.api.nvim_set_hl(0, "BlinkPairsThree", { fg = "#f8e2a0" })
      vim.api.nvim_set_hl(0, "BlinkPairsFour", { fg = "#c1a387" })
    end,
  },
  {
    "saghen/blink.indent",
    enabled = true,
    priority = 60,
    --- @module 'blink.indent'
    --- @type blink.indent.Config
    opts = {
      static = {
        enabled = true,
        char = "▏",
        priority = 1,
        highlights = {
          { "BlinkIndent" },
          -- "BlinkIndentTwo",
          -- "BlinkIndentOne",
          -- "BlinkIndentThree",
        },
      },
      scope = {
        enabled = true,
        priority = 1024,
        char = "▏",
        highlights = {
          -- { "BlinkIndent" },
          "BlinkIndentOne",
          "BlinkIndentTwo",
          "BlinkIndentThree",
          "BlinkIndentFour",
        },
        underline = {
          enabled = true,
          highlights = {
            -- { "BlinkIndent" },
            "BlinkIndentOneUnderline",
            "BlinkIndentTwoUnderline",
            "BlinkIndentThreeUnderline",
            "BlinkIndentFournderline",
          },
        },
      },
    },
    config = function(_, opts)
      require("blink.indent").setup(opts)
      vim.api.nvim_set_hl(0, "BlinkIndentOne", { fg = "#e86045", bold = true })
      vim.api.nvim_set_hl(0, "BlinkIndentTwo", { fg = "#3eccbe", italic = true })
      vim.api.nvim_set_hl(0, "BlinkIndentThree", { fg = "#f8e2a0" })
      vim.api.nvim_set_hl(0, "BlinkIndentFour", { fg = "#c1a387" })
    end,
  },
}
