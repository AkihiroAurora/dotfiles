-- set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For conciseness
local opts = { noremap = true, silent = true }

-- [[ Basic Keymaps]]
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- open Lazy gui
vim.keymap.set('n', '<leader>l', '<cmd> Lazy <CR>', { noremap = true, silent = true, desc = 'Open Lazy menu' })

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Resize with arrows
vim.keymap.set('n', '<S-j>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<S-k>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<S-h>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<S-l>', ':vertical resize +2<CR>', opts)

-- Navigate between splits
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opts)
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opts)
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', opts)
