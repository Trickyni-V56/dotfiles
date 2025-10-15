-- chrisgrieser/nvim-rip-substitute
-- nguyenvukhang/nvim-toggler
-- numToStr/Comment.nvim
-- abecodes/tabout.nvim
-- nvim-mini/mini.pairs
-- nvim-mini/mini.surround
-- nvim-mini/mini.splitjoin
-- [DISABLED] windwp/nvim-ts-autotag

return {
  {
    "chrisgrieser/nvim-rip-substitute",
    cmd = "Rg",
    opts = {},
    keys = {
      {
        "<leader>s",
        function()
          require("rip-substitute").sub()
        end,
        mode = { "n", "x" },
        desc = " rip substitute",
      },
    },
  },
  {
    "bullets-vim/bullets.vim",
  },
  { -- INFO: Inverts value (true -> false, etc.)
    --       space-i to invert
    "nguyenvukhang/nvim-toggler",
    opts = {
      inverses = {
        ["- [ ]"] = "- [x]",
      },
    },
  },
  { -- INFO: Commentate/uncomment text blocks.
    --       g-c-c to comment/uncomment
    "numToStr/Comment.nvim",
  },
  {
    "nvim-mini/mini.pairs",
    enabled = false,
    opts = {},
  },
  {
    "abecodes/tabout.nvim",
    opts = {},
  },
  { -- INFO: Adds brackets around text object.
    --       s-a to add
    --       s-d to delete
    --       s-r to replace
    "nvim-mini/mini.surround",
    opts = {},
  },
  {
    "nvim-mini/mini.splitjoin",
    version = "*",
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    enabled = false,
    opts = {},
  },
}
