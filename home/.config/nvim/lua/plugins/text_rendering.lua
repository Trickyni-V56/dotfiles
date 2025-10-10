-- "catgoose/nvim-colorizer.lua",
-- 'MeanderingProgrammer/render-markdown.nvim',
-- "folke/todo-comments.nvim",

return {
  { -- colors the background of hex color text #ace1c2
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
  { -- highlights TODO: tags
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      highlight = {
        before = "",
        keyword = "wide_bg",
        after = "fg",
      },
      colors = {
        aerror = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
    },
  },
}
