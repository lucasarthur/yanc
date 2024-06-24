local vim = vim
local options = {
  compatible = false,
  showmatch = true,
  ignorecase = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  number = true,
  wildmode = { 'longest', 'list' },
  mouse = 'a',
  clipboard = 'unnamedplus',
  cursorline = true,
  ttyfast = true,
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  history = 5000,
  hlsearch = true,
  incsearch = true
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd 'filetype plugin on'

-- TERMGUIColors - 24 bits
if vim.fn.has 'termguicolors' == 1 then
  vim.opt.termguicolors = true
end

require 'plugins'

-- Set color scheme
vim.cmd 'silent! colorscheme dracula'

-- When we open a file, it should be nice to be at the file's directory, right?
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function() vim.cmd('silent! lcd ' .. vim.fn.expand('%:p:h')) end
})
