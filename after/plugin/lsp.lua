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

vim.keymap.set({ 'n', 't' }, '<A-d>', '<cmd>Lspsaga term_toggle<CR>')

require 'mason'.setup {
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗'
    }
  },
  max_concurrent_installers = 12
}

local lsp = require 'lsp-zero'
lsp.extend_lspconfig()

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps { buffer = bufnr }
end)

lsp.set_sign_icons {
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
}

require 'mason-lspconfig'.setup {
  ensure_installed = lsps,
  handlers =  {
    function(lsp)
      require 'lspconfig'[lsp].setup {
        capabilities = require 'cmp_nvim_lsp'.default_capabilities()
      }
    end,
    ['lua_ls'] = function()
      require('lspconfig').lua_ls.setup {
        capabilities = require 'cmp_nvim_lsp'.default_capabilities(),
        settings = { Lua = { diagnostics = { globals = { 'vim' }}}}
      }
    end
  }
}

local cmp = require 'cmp'
cmp.setup {
  snippet = { expand = function(args) vim.fn['vsnip#anonymous'](args.body) end },
  mapping = cmp.mapping.preset.insert {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item { behavior = 'select' },
    ['<Down>'] = cmp.mapping.select_next_item { behavior = 'select' },
    ['<CR>'] = cmp.mapping.confirm { select = false }
  },
  sources = cmp.config.sources(
    {{ name = 'nvim_lsp' }, { name = 'vsnip' }},
    {{ name = 'buffer' }}),
  formatting = {
    format = require 'lspkind'.cmp_format {
      mode = 'symbol_text',
      maxwidth = 50,
      ellipsis_char = '...',
      show_labelDetails = true,
      before = function(_, item) return item end
    }
  }
}

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {{ name = 'buffer' }}
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources(
    {{ name = 'path' }},
    {{ name = 'cmdline' }}),
  matching = { disallow_symbol_nonprefix_matching = false }
})

vim.diagnostic.config { virtual_text = true }
