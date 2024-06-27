local vim = vim
local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup {
  snippet = {
    expand = function(args) vim.fn["vsnip#anonymous"](args.body) end
  },
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
    format = lspkind.cmp_format {
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
