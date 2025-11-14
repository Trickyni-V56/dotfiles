-- chrisgrieser/nvim-rip-substitute
-- nguyenvukhang/nvim-toggler
-- abecodes/tabout.nvim
-- nvim-mini/mini.comment
-- nvim-mini/mini.pairs
-- nvim-mini/mini.surround
-- nvim-mini/mini.splitjoin
-- nvim-mini/mini.align
-- [DISABLED] windwp/nvim-ts-autotag

return {
  {
    "chrisgrieser/nvim-rip-substitute",
    enabled = true,
    cmd = "RipSubstitute",
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
    "nvim-mini/mini.comment",
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
    "nvim-mini/mini.align",
    enabled = true,
    opts = { mappings = {
      start = "gA",
      start_with_preview = "ga",
    } },
  },
  {
    "nvim-mini/mini.snippets",
    config = function()
      local ms = require("mini.snippets")
      ms.setup({
        mappings = { expand = "<C-e>" },
      })
      snippets = {
        ms.gen_loader.from_lang({
          markdown_inline = {
            { prefix = "-[]", body = "- [ ] $1$0" },
          },
        }),
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    enabled = false,
    opts = {},
  },
}
