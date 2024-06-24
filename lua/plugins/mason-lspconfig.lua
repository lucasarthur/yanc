require 'plugins.mason'
require 'plugins.lsp-zero'

local lsps = {
  'asm_lsp',
  'bashls',
  'clangd',
  'clojure_lsp',
  'dockerls',
  'docker_compose_language_service',
  'gradle_ls',
  'jsonls',
  'hls',
  'html',
  'jdtls',
  'tsserver',
  'kotlin_language_server',
  'lua_ls',
  'autotools_ls',
  'marksman',
  'pyright',
  'rust_analyzer',
  'sqls',
  'taplo',
  'lemminx',
  'vimls',
  'yamlls',
  'zls'
}

require 'mason-lspconfig'.setup {
  ensure_installed = lsps,
  handlers =  {
    function(lsp)
      require 'lspconfig'[lsp].setup {
        capabilities = require 'cmp_nvim_lsp'.default_capabilities()
      }
    end
  }
}
