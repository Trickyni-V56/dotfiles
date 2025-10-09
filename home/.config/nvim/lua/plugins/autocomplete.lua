return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- C-e: Hide menu
      keymap = { preset = 'super-tab' },
      cmdline = { enabled = false },
      appearance = {nerd_font_variant = 'mono'},
      completion = {documentation = { auto_show = false },},
      sources = {default = { 'lsp', 'path', 'snippets', 'buffer' },},
      },
    opts_extend = { "sources.default" }
  },
  {
    'gelguy/wilder.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      modes = {':', '/', '?'},
    },
  },
}

