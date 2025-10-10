-- HiPhish/rainbow-delimiters.nvim',
-- lukas-reineke/indent-blankline.nvim
return {
  { -- colors brackets in matching sets
    'https://gitlab.com/HiPhish/rainbow-delimiters.nvim',
    event = {"BufReadPre", "BufNewFile"},
  },
  {
    "lukas-reineke/indent-blankline.nvim", -- Add indentation guides
    main = "ibl",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
        }
      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#e86045" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#3eccbe" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#f8e2a0" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#e68d53" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#c1a387" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#ace1af" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#92a650" })
      end)
    vim.g.rainbow_delimiters = { highlight = highlight }
    require("ibl").setup({
      scope = {
        highlight = highlight
        },
      indent = {
        highlight = highlight,
        char = "▏"
        },
      exclude = {
        filetypes = {
          "markdown",
          },
        },
      })
      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end
  },
}
