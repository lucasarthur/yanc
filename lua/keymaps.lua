local set = vim.keymap.set
vim.g.mapleader = ' '

set('n', '<leader>fe', vim.cmd.Ex)

set('n', '<C-A-h>', '<cmd>tabp<CR>')
set('n', '<C-A-l>', '<cmd>tabn<CR>')
set('n', '<C-A-w>', '<cmd>tabc<CR>')

set('x', '<leader>p', [["_dP]])
set({ 'n', 'v' }, '<leader>y', [["+y]])
set('n', '<leader>Y', [["+Y]])
set({ 'n', 'v' }, '<leader>d', [["_d]])

set('i', '<C-c>', '<Esc>')
set('n', 'Q', '<nop>')
set('n', '<leader>f', vim.lsp.buf.format)
