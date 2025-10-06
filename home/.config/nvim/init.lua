vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.lazy")

vim.g.have_nerd_font = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- whitespace characters
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.cursorline = true -- highlights cursor line
vim.o.scrolloff = 10 -- keeps 10 lines above/below the cursor when scrolling
vim.o.breakindent = true
vim.o.signcolumn = 'auto' 
vim.o.inccommand = 'nosplit' -- shows find/replace results live

-- sync clipboard between OS and nvim
-- vim.schedule(function()
--   vim.o.clipboard = 'unnamedplus'
-- end)

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

require("bufferline").setup()
require('Comment').setup()
require('guess-indent').setup()
require('nvim-toggler').setup({
    inverses = {
    ['- [ ]'] = '- [x]'
  },
})

-- theme
vim.o.background = "dark" -- or "light" for light mode

