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
-- Bring up the greeter
vim.api.nvim_create_user_command("Greeter", function()
  require("snacks").dashboard()
end, {})

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
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#e86045" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#e68d53" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#ace1af" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#92a650" })

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
-- Calls the right treeitter for markdown
--FIX: move this to text_rendering.lua or treesitter.lua
--
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(args)
    -- explicitly start treesitter for markdown
    vim.treesitter.start(args.buf, "markdown")
  end,
})

--override random highlights FIX: move to text-rendering.lua or make new file/section. organize anyhow.
vim.api.nvim_set_hl(0, "RenderMarkdownBullet", { fg = "#92a650" })
vim.api.nvim_set_hl(0, "RenderMarkdownCheckedItem", { fg = "#868686", strikethrough = true })


vim.pack.add({
  { src = "https://github.com/nvim-mini/mini.base16"}
})
require("mini.base16").setup({      
  palette = {
        base00 = "#3b3228", -- bg
        base01 = "#4c4134", -- bg75
        base02 = "#5d4f40", -- altbg
        base03 = "#6b6055", -- bg25
        base04 = "#c1a387", -- sand
        base05 = "#afd2e9", -- fg
        base06 = "#FF00FF",
        base07 = "#00FF00",
        base08 = "#e86045",
        base09 = "#e68d53",
        base0A = "#f8e2a0",
        base0B = "#92a650",
        base0C = "#ace1af",
        base0D = "#3eccbe",
        base0E = "#FF0000",
        base0F = "#f8e2a0",
      },
    })
vim.pack.add({  
  {src= "https://github.com/mason-org/mason.nvim"},
  {src="https://github.com/stevearc/conform.nvim"}
})
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


