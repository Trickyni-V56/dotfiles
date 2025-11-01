  return {
    "saghen/blink.indent",
    enabled = false,
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
        underline = { enabled = false },
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
