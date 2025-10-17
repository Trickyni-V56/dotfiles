local vim = vim
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.lazy")

vim.g.have_nerd_font = true
-- Number column
vim.o.relativenumber = true
vim.o.number = true

-- Search options
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

--tabs
vim.o.tabstop = 2
-- vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.showmode = false -- hides mode indicator, since we have a status line
vim.o.cursorline = true -- highlights cursor line
vim.o.scrolloff = 10 -- keeps 10 lines above/below the cursor when scrolling
vim.o.breakindent = true
vim.o.signcolumn = "yes"
vim.o.inccommand = "nosplit" -- shows find/replace results live
vim.opt.backspace = { "start", "eol", "indent" }
-- whitespace characters
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.timeoutlen = 300
vim.o.winborder = "none"

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

vim.keymap.set("n", "<C-n>", ":enew<CR>") -- creates new buffer
vim.keymap.set("n", "<C-]>", ":bn<CR>")
vim.keymap.set("n", "<C-[>", ":bp<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

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

-- theme
vim.o.background = "dark" -- or "light" for light mode
