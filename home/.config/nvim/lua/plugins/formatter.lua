return {
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
        json = { "prettier" },
        -- typst = {"typstyle"},
      },
      formatters = {
        stylua = { prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" } },
        shfmt = { prepend_args = { "-i=2" } },
        prettier = { prepend_args = { "--tab-width", "2" } },
      },
    },
  },
}
