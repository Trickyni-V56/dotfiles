-- nvim-lspconfig
-- mason
-- mason-lspconfig
-- mfussenegger/nvim-lint
-- stevearc/conform.nvim
return {
  {
    "mason-org/mason.nvim",
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
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- "bashls",
        -- "cssls",
        -- "html",
        -- "lua_ls",
        -- "pyright",
        -- "pylsp",
        -- "qmlls",
        -- "stylua",
        -- "ts_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "saghen/blink.cmp" },
    config = function()
      vim.diagnostic.config({
        severity_sort = true,
        float = { border = "rounded", source = "if_many" },
        underline = { severity = vim.diagnostic.severity.ERROR },
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
          },
        },
        virtual_text = {
          severity = { min = vim.diagnostic.severity.ERROR },
          spacing = 2,
          -- prefix = "𖦹",
          prefix = "║",
          suffix = " ║",
          current_line = nil,
        },
        update_in_insert = true,
        inlay_hints = true,
      })
      vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })
      vim.lsp_enable({ "lua_ls" })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    -- event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        lua = { "selene" },
        bash = { "shellcheck" },
        javascript = { "eslint_d" },
      }
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
      local toggle_lint = function()
        linting = not linting
        if linting then
          vim.diagnostic.show()
        else
          vim.diagnostic.hide()
        end
      end

      vim.keymap.set({ "n" }, "<leader>l", toggle_lint, { noremap = true })
    end,
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
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        },
        shfmt = {
          prepend_args = { "-i=2" },
        },
      },
    },
  },
}
