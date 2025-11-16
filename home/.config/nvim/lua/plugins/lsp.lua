-- nvim-lspconfig
-- mason
-- mfussenegger/nvim-lint
-- stevearc/conform.nvim
-- folke/lazydev.nvim
return {
  {
    "lepture/vim-jinja",
  },
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function() end,
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
    "mfussenegger/nvim-lint",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        lua = { "selene" },
        bash = { "shellcheck" },
        javascript = { "eslint" },
        nunjucks = { "djlint" },
      }
      local selene = require("lint").linters.selene
      selene.args = {
        "--config ~/.config/nvim/selene.toml",
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
  {
    "folke/lazydev.nvim",
    enabled = true,
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}


