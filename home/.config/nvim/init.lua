local vim = vim
-- OPTION  ----------------------------------------------------
vim.g.mapleader = " " -- leader key (spacebar)
vim.g.have_nerd_font = true
vim.o.number = true -- number column
vim.o.relativenumber = true -- relative number column
vim.o.ignorecase = true -- search ignores case
vim.o.smartcase = true -- search ignores case unless uppercase letter exists
vim.opt.grepprg = "rg --vimgrep" -- external grep
vim.o.wrap = true
vim.o.textwidth = 80
vim.opt.linebreak = true
vim.o.tabstop = 2 -- tab width
vim.o.shiftwidth = 2 -- indentation width
vim.o.expandtab = true -- turns tabs into spaces
vim.o.showmode = false -- hides mode indicator, since we have a status line
vim.o.cursorline = true -- highlights cursor line
vim.o.scrolloff = 10 -- keeps 10 lines above/below the cursor when scrolling
vim.o.breakindent = true
vim.o.signcolumn = "yes:1" -- gutter to the left of the number column
vim.o.inccommand = "nosplit" -- shows find/replace results live
vim.opt.backspace = { "start", "eol", "indent" }
vim.o.list = true -- whow trailing whitespaces and tab characters
vim.opt.listchars = { leadmultispace = "▏ ", tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.timeoutlen = 300 --timeout on keys with followups
vim.o.background = "dark" -- dark mode
vim.o.winborder = "rounded" --border for floating windows

-- KEYMAPS ----------------------------------------------------
-- move line up/down
vim.keymap.set("n", "<S-up>", ":m-2<CR>")
vim.keymap.set("n", "<S-down>", ":m+1<CR>")
vim.keymap.set("v", "<S-up>", ":'<,'>m '<-2<CR>gv")
vim.keymap.set("v", "<S-down>", ":'<,'>m '>+1<CR>gv")

-- indent/unindent
vim.keymap.set("n", "<S-right>", ">>")
vim.keymap.set("n", "<S-left>", "<<")
vim.keymap.set("v", "<S-left>", "<gv")
vim.keymap.set("v", "<S-right>", ">gv")

-- creates new buffer
vim.keymap.set("n", "<C-n>", ":enew<CR>")

-- next/prev buffer
vim.keymap.set("n", "<C-]>", ":bn<CR>")
vim.keymap.set("n", "<C-[>", ":bp<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "zm", ":ZenMode<CR>")

-- Behaviors --------------------------------------------------
-- defines markers to determine a project's root dir
local project_markers = { ".git", ".root", "cargo.toml", "selene.toml", "stylua.toml", "package.json" }
-- Finds a project's root directory
vim.api.nvim_create_user_command("Root", function()
  print(vim.fs.root(0, project_markers))
end, {})

-- automatically stay on root directory
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePre" }, {
  callback = function()
    vim.cmd.lcd(vim.fs.root(0, project_markers))
  end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- sync OS/nvim clipboards
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- Diagnostic configs -----------------------------------------
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
  update_in_insert = true,
  inlay_hints = true,
})

-- LSP --------------------------------------------------------
vim.lsp.config("lua_ls", {
  filetypes = { "lua" },
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = "vim" },
    },
  },
})
vim.lsp.enable({ "lua_ls", "bashls", "tinymist", "eslint", "djlint", "ts_ls", "cssls" })
----------------------------
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(args)
    -- explicitly start treesitter for markdown
    vim.treesitter.start(args.buf, "markdown")
  end,
})
--Plugins----------------------------------
vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/sitiom/nvim-numbertoggle" })
vim.pack.add({ "https://github.com/nvim-tree/nvim-web-devicons" })
vim.pack.add({ "https://github.com/preservim/vim-pencil" })
vim.pack.add({ "https://github.com/bullets-vim/bullets.vim" })
vim.pack.add({ "https://github.com/folke/zen-mode.nvim" })
vim.pack.add({ "https://github.com/folke/twilight.nvim" })

-- vim.pack.add({ "https://github.com/nvim-mini/mini.base16" })
-- require("mini.base16").setup({ --TODO: theme
--   palette = {
--     base00 = "#3b3228", -- bg
--     base01 = "#4c4134", -- bg75
--     base02 = "#5d4f40", -- altbg
--     base03 = "#6b6055", -- bg25
--     base04 = "#c1a387", -- sand
--     base05 = "#afd2e9", -- fg
--     base06 = "#FF00FF",
--     base07 = "#00FF00",
--     base08 = "#e86045",
--     base09 = "#e68d53",
--     base0A = "#f8e2a0",
--     base0B = "#92a650",
--     base0C = "#ace1af",
--     base0D = "#3eccbe",
--     base0E = "#FF0000",
--     base0F = "#f8e2a0",
--   },
-- })

require("desert-witch").setup()

vim.pack.add({ "https://github.com/smjonas/live-command.nvim" })
require("live-command").setup({ commands = { Norm = { cmd = "norm" } } })
vim.cmd("cnoreabbrev norm Norm")

vim.pack.add({ "https://github.com/mason-org/mason.nvim" })
require("mason").setup()

vim.pack.add({ "https://github.com/stevearc/conform.nvim" })
require("conform").setup({
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
  },
  formatters = {
    stylua = { prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" } },
    shfmt = { prepend_args = { "-i=2" } },
    prettier = { prepend_args = { "--tab-width", "2" } },
  },
})

vim.pack.add({ { src = "https://github.com/saghen/blink.cmp", version = "1.*" } })
require("blink.cmp").setup({
  keymap = { preset = "super-tab" },
  fuzzy = { implementation = "prefer_rust", prebuilt_binaries = { force_version = "0.6.0" } },
  appearance = { nerd_font_variant = "mono" },
  completion = {
    accept = { auto_brackets = { enabled = true } },
    documentation = { auto_show = true },
  },
  sources = { default = { "lsp", "path", "snippets", "buffer" } },
  cmdline = { enabled = true },
  signature = { enabled = false },
})

vim.pack.add({ "https://github.com/akinsho/bufferline.nvim" }) --TODO:
require("bufferline").setup()

vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })
require("gitsigns").setup()

vim.pack.add({ "https://github.com/folke/which-key.nvim" })
require("which-key").setup({ preset = "helix", plugins = { presets = { motions = false } } })

vim.pack.add({ "https://github.com/karb94/neoscroll.nvim" })
require("neoscroll").setup({ easing = "quintic" })

vim.pack.add({ "https://github.com/mikavilpas/yazi.nvim" })
require("yazi").setup()
vim.keymap.set({ "n", "v" }, "<Bslash>", "<cmd>Yazi<CR>")

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })
require("nvim-treesitter.configs").setup({
  highlight = { enable = false },
  ensure_installed = {
    "bash",
    "caddy",
    "css",
    "csv",
    "diff",
    "dockerfile",
    "html",
    "javascript",
    "jq",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "qmljs",
    "regex",
    "sql",
    "toml",
    "typst",
    "sway",
    "yaml",
  },
})

vim.pack.add({ "https://github.com/MeanderingProgrammer/render-markdown.nvim" })
require("render-markdown").setup({
  render_modes = true,
  completions = { lsp = { enabled = true } },
  checkbox = { checked = { scope_highlight = "RenderMarkdownCheckedItem" } },
  bullet = { icons = { "󰆧" } },
  pipe_table = {
    preset = "round",
    alignment_indicator = "┈",
  },
  dash = {
    enabled = true,
    render_modes = false,
    icon = "─",
    width = "full",
    left_margin = 0,
  },
  latex = { enabled = false },
  html = {
    enabled = true,
    comment = { conceal = false },
  },
})

vim.pack.add({ "https://github.com/nvim-mini/mini.hipatterns" })
require("mini.hipatterns").setup({
  highlighters = {
    fixme = { pattern = "FIXME", group = "MiniHipatternsFixme" },
    hack = { pattern = "HACK", group = "MiniHipatternsHack" },
    todo = { pattern = "TODO", group = "MiniHipatternsTodo" }, --TODO
    note = { pattern = "NOTE", group = "MiniHipatternsNote" },
    base00 = { pattern = "base00", group = "MiniHiPatternsBase00" }, -- "#3b3228",
    base01 = { pattern = "base01", group = "MiniHiPatternsBase01" }, -- "#4c4134",
    base02 = { pattern = "base02", group = "MiniHiPatternsBase02" }, -- "#5d4f40",
    base03 = { pattern = "base03", group = "MiniHiPatternsBase03" }, -- "#6b6055",
    base04 = { pattern = "base04", group = "MiniHiPatternsBase04" }, -- "#c1a387",
    base05 = { pattern = "base05", group = "MiniHiPatternsBase05" }, -- "#afd2e9",
    base06 = { pattern = "base06", group = "MiniHiPatternsBase06" }, -- "#FF00FF",
    base07 = { pattern = "base07", group = "MiniHiPatternsBase07" }, -- "#00FF00",
    base08 = { pattern = "base08", group = "MiniHiPatternsBase08" }, -- "#e86045",
    base09 = { pattern = "base09", group = "MiniHiPatternsBase09" }, -- "#e68d53",
    base0A = { pattern = "base0A", group = "MiniHiPatternsBase0A" }, -- "#f8e2a0",
    base0B = { pattern = "base0B", group = "MiniHiPatternsBase0B" }, -- "#92a650",
    base0C = { pattern = "base0C", group = "MiniHiPatternsBase0C" }, -- "#ace1af",
    base0D = { pattern = "base0D", group = "MiniHiPatternsBase0D" }, -- "#3eccbe",
    base0E = { pattern = "base0E", group = "MiniHiPatternsBase0E" }, -- "#FF0000",
    base0F = { pattern = "base0F", group = "MiniHiPatternsBase0F" }, -- "#f8e2a0",

    hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
  },
})

vim.pack.add({ "https://github.com/abecodes/tabout.nvim" })
require("tabout").setup()

vim.pack.add({ "https://github.com/nvim-mini/mini.comment" })
require("mini.comment").setup()

vim.pack.add({ "https://github.com/nvim-mini/mini.pairs" })
require("mini.pairs").setup()

vim.pack.add({ "https://github.com/nvim-mini/mini.surround" })
require("mini.surround").setup()

vim.pack.add({ "https://github.com/nvim-mini/mini.align" })
require("mini.align").setup()

vim.pack.add({ "https://github.com/chrisgrieser/nvim-rip-substitute" })
vim.keymap.set({ "n", "x" }, "<leader>s", "<Cmd>RipSubstitute<CR>", { desc = " rip substitutdde" })

vim.pack.add({ "https://github.com/nguyenvukhang/nvim-toggler" })
require("nvim-toggler").setup({
  inverses = {
    ["- [ ]"] = "- [x]",
  },
})

vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })
require("lualine").setup()

vim.pack.add({ "https://github.com/NMAC427/guess-indent.nvim" })
require("guess-indent").setup()

vim.pack.add({ "https://gitlab.com/HiPhish/rainbow-delimiters.nvim" })
vim.g.rainbow_delimiters = {
  highlight = {
    "RainbowDelimiterRed",
    "RainbowDelimiterYellow",
    "RainbowDelimiterCyan",
    "RainbowDelimiterViolet",
  },
}

vim.pack.add({ "https://github.com/lukas-reineke/indent-blankline.nvim" })
require("ibl").setup({ indent = { char = "▏", highlight = none } })

vim.pack.add({
  { src = "https://github.com/folke/snacks.nvim", { load = false } },
})
require("snacks").setup({
  picker = {
    sources = {
      recent = { layout = { preset = "select" } },
      projects = {
        layout = { preset = "select" },
        patterns = { ".git", "package.json", "Makefile", ".root", "stylua.toml" },
        dev = { "~/git", "~/.shells", "~/.config/nvim" },
      },
      zoxide = { layout = { preset = "select" } },
      notifications = {
        layout = { preset = "select" },
        win = { list = { wo = { wrap = true } } },
      },
    },
  },
  dashboard = {
    enabled = true,
    width = 40,
    preset = {
      keys = {
        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        { icon = " ", key = "y", desc = "File Explorer", action = ":Yazi" },
        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('recent')" },
        {
          icon = " ",
          key = "p",
          desc = "Projects",
          action = ":lua Snacks.picker.projects()",
        },
        {
          icon = " ",
          key = "c",
          desc = "Config",
          action = ":cd ~/.config/nvim | Yazi",
        },
        { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
      },
      header = {
        [[
  ,-.       _,---._ __  / \
 /  )    .-'       `./ /   \
(  (   ,'            `/    /|
 \  `-"             \'\   / |
  `.              ,  \ \ /  |
   /`.          ,'-`----Y   |
  (            ;        |   '
  |  ,-.    ,-'         |  /
  |  | (   |            | /
  )  |  \  `.___________|/
  `--'   `--']],
      },
    },
    formats = {},
    sections = {
      { section = "header", indent = 5 },
      { title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
      { section = "keys", indent = 2, padding = 1 },
    },
  },
})
vim.keymap.set("n", "<leader>p", "<cmd>lua Snacks.picker.projects()<CR>", { desc = "Projects" })
vim.keymap.set("n", "<leader>r", "<cmd>lua Snacks.picker.recent()<CR>", { desc = "Recent Files" })
vim.keymap.set("n", "<leader>z", "<cmd>lua Snacks.picker.zoxide()<CR>", { desc = "Zoxide" })

vim.pack.add({ "https://github.com/folke/trouble.nvim" })
require("trouble").setup({ focus = true, win = { position = "bottom" }, open_no_results = true })
vim.keymap.set("n", "<leader>d", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics" })

-- vim.pack.add({ "https://github.com/nvim-mini/mini.starter" })
-- local starter = require("mini.starter")
-- starter.setup({
--   evaluate_single = true,
--   items = {
--     starter.sections.recent_files(5, false),
--     starter.sections.builtin_actions(),
--   },
--   content_hooks = {
--     -- starter.gen_hook.adding_bullet(),
--     starter.gen_hook.indexing("all", { "Builtin actions" }),
--     starter.gen_hook.padding(3, 2),
--     starter.gen_hook.aligning("center", "center"),
--   },
-- })
vim.pack.add({ "https://github.com/rktjmp/lush.nvim" })
