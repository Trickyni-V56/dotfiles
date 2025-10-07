return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  { -- adds a row for git changes sumbols
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      },
    },
  },
  { -- toggles relative numbers in normal mode and absolute numbers in insert/command mode
    "sitiom/nvim-numbertoggle" 
  },
}

