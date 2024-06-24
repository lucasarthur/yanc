local lsp_zero = require 'lsp-zero'

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps { buffer = bufnr }
end)

lsp_zero.set_sign_icons {
 error = '✘',
 warn = '▲',
 hint = '⚑',
 info = '»'
}
