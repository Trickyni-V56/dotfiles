-- OPTION  ----------------------------------------------------
vim.g.mapleader = " " -- leader key (spacebar)
vim.g.maplocalleader = " " -- leader key (spacebar)
require("config.lazy")
vim.g.have_nerd_font = true
vim.o.number = true -- number column
vim.o.relativenumber = true -- relative number column
vim.o.ignorecase = true -- search ignores case
vim.o.smartcase = true -- search ignores case unless uppercase letter exists
vim.opt.grepprg = "rg --vimgrep" -- external grep
vim.opt.grepformat = "%f:%l:%c:%m"
vim.o.wrap = true
vim.opt.linebreak = true
vim.o.tabstop = 2 -- tab width
-- vim.o.shiftwidth = 2 -- indentation width
vim.o.expandtab = true -- turns tabs into spaces
vim.o.showmode = false -- hides mode indicator, since we have a status line
vim.o.cursorline = true -- highlights cursor line
vim.o.scrolloff = 10 -- keeps 10 lines above/below the cursor when scrolling
vim.o.breakindent = true
vim.o.signcolumn = "yes" -- gutter to the left of the number column
vim.o.inccommand = "nosplit" -- shows find/replace results live
vim.opt.backspace = { "start", "eol", "indent" }
vim.o.list = true -- whow trailing whitespaces and tab characters
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.timeoutlen = 300 --timeout on keys with followups
vim.o.winborder = "none" --border for floating windows
vim.o.background = "dark" -- dark mode

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

vim.keymap.set(
  { "n", "x", "v" },
  "<leader>l",
  ":lua vim.diagnostic.config({ virtual_lines =  not vim.diagnostic.config().virtual_lines})<CR>",
  { desc = "Toggle Virtual Text", silent = true }
)

-- Custom Commands --------------------------------------------
-- Bring up the greeter
vim.api.nvim_create_user_command("Greeter", function()
  require("snacks").dashboard()
end, {})

-- AUTOCMDS ---------------------------------------------------
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
  virtual_lines = true,
  -- virtual_text = {
  --   severity = { min = vim.diagnostic.severity.ERROR },
  --   spacing = 2,
  --  prefix = "𖦹",
  --   current_line = nil,
  -- },
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
vim.lsp.enable({ "lua_ls", "bashls" })
