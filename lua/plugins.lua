return require 'packer'.startup(function(use)
  use { 'wbthomason/packer.nvim' }
  use { 'dracula/vim', as = 'dracula' }
  use { 'github/copilot.vim' }
  use { 'Raimondi/delimitMate' }
  use { 'nvimdev/lspsaga.nvim', after = 'nvim-lspconfig', config = function() require 'lspsaga'.setup {} end }
  use { 'lambdalisue/vim-suda', as = 'suda' }
  use { 'tpope/vim-fireplace', ft = 'clojure' }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require 'nvim-treesitter.install'.update { with_sync = true }
      ts_update()
    end
  }
  use { 'nvim-lualine/lualine.nvim', requires = {{ 'nvim-tree/nvim-web-devicons' }, { 'arkav/lualine-lsp-progress' }}}
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  { 'neovim/nvim-lspconfig' },
		  { 'williamboman/mason.nvim' },
		  { 'williamboman/mason-lspconfig.nvim' },
      { 'onsails/lspkind.nvim' },
		  { 'hrsh7th/nvim-cmp' },
		  { 'hrsh7th/cmp-buffer' },
		  { 'hrsh7th/cmp-path' },
		  { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-cmdline' },
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/vim-vsnip' }
	  }
  }
end)
