return {
  {
    "nvim-mini/mini.base16",
    enabled = true,
    opts = {
      palette = {
        base00 = "#3b3228", -- bg
        base01 = "#4c4134", -- bg75
        base02 = "#5d4f40", -- altbg
        base03 = "#6b6055", -- bg25
        base04 = "#c1a387", -- sand
        base05 = "#afd2e9", -- fg
        base06 = "#FF00FF",
        base07 = "#00FF00",
        base08 = "#e86045",
        base09 = "#e68d53",
        base0A = "#f8e2a0",
        base0B = "#92a650",
        base0C = "#ace1af",
        base0D = "#3eccbe",
        base0E = "#FF0000",
        base0F = "#f8e2a0",
      },
    },
  },
  { "nvim-lualine/lualine.nvim", opts = {} },
  {
    "rktjmp/lush.nvim",
    -- if you wish to use your own colorscheme:
    -- { dir = '/absolute/path/to/colorscheme', lazy = true },
  },
}
