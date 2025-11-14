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
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      format_on_save = true,
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        javascript = { "prettier" },
        markdown = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        yaml = { "prettier" },
        nunjucks = { "djlint" },
        jinja = { "djlint" },
        -- typst = {"typstyle"},
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        },
        shfmt = {
          prepend_args = { "-i=2" },
        },
        djlint = {
          prepend_args = { "--indent", "2" },
        },
      },
    },
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
        javascript = { "eslint_d" },
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
