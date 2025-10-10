--conform
--nvim-lint
return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      format_on_save = true,
      formatters_by_ft = {
        lua = { "stylua" },
        bash = { "shfmt" },
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
        lua = { "selene" },
      },
    },
  },
}
