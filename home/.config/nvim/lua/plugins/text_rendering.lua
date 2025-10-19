-- catgoose/nvim-colorizer.lua
-- MeanderingProgrammer/render-markdown.nvim
-- folke/todo-comments.nvim
-- smjonas/live-command.nvim
return {
  { -- colors the background of hex color text #afd2e9
    "catgoose/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
  { -- renders markdown inline
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    opts = {
      render_modes = true,
      completions = { lsp = { enabled = true } },
      checkbox = { checked = { scope_highlight = "@markup.strikethrough" } },
      bullet = { icons = { "─" } },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        multiline = false,
        before = "",
        keyword = "bg",
        after = "fg",
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#e86045" },
        warning = { "DiagnosticWarn", "WarningMsg", "#e68d53" },
        info = { "DiagnosticInfo", "#ace1af" },
        hint = { "DiagnosticHint", "#92a650" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
    },
  },
  {
    "smjonas/live-command.nvim",
    opts = {
      commands = {
        Norm = { cmd = "norm" },
      },
    },
  },
}
