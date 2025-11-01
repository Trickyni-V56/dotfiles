-- gruvbox.nvim
return {
  {
    "ellisonleao/gruvbox.nvim",
    -- "nyngwang/nvimgelion",
    enabled = true,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
