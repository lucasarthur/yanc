local set = vim.keymap.set
vim.g.mapleader = ' '

set('n', '<leader>fe', vim.cmd.Ex)

set('n', '<C-A-h>', '<cmd>tabp<CR>')
set('n', '<C-A-l>', '<cmd>tabn<CR>')
set('n', '<C-A-w>', '<cmd>tabc<CR>')

set('v', 'J', '<cmd>m \'>+1<CR>gv=gv')
set('v', 'K', '<cmd>m \'<-2<CR>gv=gv')

set('n', 'J', 'mzJ`z')
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

set('x', '<leader>p', [["_dP]])
set({ 'n', 'v' }, '<leader>y', [["+y]])
set('n', '<leader>Y', [["+Y]])

set({ 'n', 'v' }, '<leader>d', [["_d]])
set('i', '<C-c>', '<Esc>')
set('n', 'Q', '<nop>')
set('n', '<leader>f', vim.lsp.buf.format)

set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
