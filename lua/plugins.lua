local vim = vim
local Plug = vim.fn['plug#']
local tools = require 'tools'

vim.call('plug#begin')

Plug('dracula/vim')
Plug('preservim/nerdtree')
Plug('Raimondi/delimitMate')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('github/copilot.vim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('godlygeek/tabular')
Plug('preservim/vim-markdown', { branch = 'master' })
Plug('iamcco/markdown-preview.nvim', { ['do'] = function() vim.fn['mkdp#util#install']() end, ['for'] = { 'markdown', 'vim-plug' }})
Plug('arkav/lualine-lsp-progress')
Plug('onsails/lspkind.nvim')
Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v3.x'})
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvimdev/lspsaga.nvim')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })
Plug('norcalli/nvim-colorizer.lua')
Plug('nvim-tree/nvim-web-devicons')
Plug('ryanoasis/vim-devicons')
Plug('lambdalisue/vim-suda')

vim.call('plug#end')

tools.load_plugins 'plugins'
