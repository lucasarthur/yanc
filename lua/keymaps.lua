require 'plugins'
require 'plugins.telescope'
require 'plugins.lspsaga'

local vim = vim
local opts = { noremap = true, silent = true }

-- NERDTree
local function nerd_tree_find()
  local path = vim.fn.input('Enter path: ')

  if path == '' then
    vim.cmd('NERDTreeFind')
  else
    vim.cmd('NERDTreeFind ' .. path)
  end
end

vim.keymap.set('n', '<C-b>', ':NERDTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-f>', nerd_tree_find, opts)
vim.keymap.set('n', '<C-A-h>', ':tabp<CR>', opts)
vim.keymap.set('n', '<C-A-l>', ':tabn<CR>', opts)
vim.keymap.set('n', '<C-A-w>', ':tabc<CR>', opts)

-- write as su
vim.keymap.set('c', 'w!!', 'SudaWrite', opts)

-- telescope
vim.keymap.set('n', '<leader>ff', require 'telescope.builtin'.find_files, opts)

-- lspsaga
vim.keymap.set({ 'n', 't' }, '<A-d>', '<cmd>Lspsaga term_toggle<CR>', opts)
