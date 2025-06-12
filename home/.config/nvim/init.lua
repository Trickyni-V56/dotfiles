-- Movement remap in normal mode
vim.keymap.set('n', 'o', 'k', { noremap = true })
vim.keymap.set('n', 'k', 'h', { noremap = true })
vim.keymap.set('n', 'l', 'j', { noremap = true })
vim.keymap.set('n', ';', 'l', { noremap = true })

-- Movement remap in visual mode
vim.keymap.set('v', 'o', 'k', { noremap = true })
vim.keymap.set('v', 'k', 'h', { noremap = true })
vim.keymap.set('v', 'l', 'j', { noremap = true })
vim.keymap.set('v', ';', 'l', { noremap = true })

-- Ctrl-Backspace: delete word before cursor
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })

-- Ctrl-Delete: delete word after cursor
vim.api.nvim_set_keymap("i", "<C-Del>", "<C-o>dw", { noremap = true })

vim.keymap.set('n', '<C-Up>', 'gg', { noremap = true })
vim.keymap.set('n', '<C-Down>', 'G', { noremap = true })
vim.keymap.set('n', '<C-Left>', '^', { noremap = true })
vim.keymap.set('n', '<C-Right>', '$', { noremap = true })
