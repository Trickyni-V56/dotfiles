-- nvim-lspconfig
-- mason
-- mfussenegger/nvim-lint
-- stevearc/conform.nvim
-- folke/lazydev.nvim
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig["lua_ls"].setup({ capabilities = capabilities })
    end,
  },

  {
    "mason-org/mason.nvim",
    enabled = true,
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = { library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } } } },
  },
}
