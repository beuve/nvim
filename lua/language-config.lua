local lspconfig = require('lspconfig')
-- local capabilities = require('completion')

-- dart
lspconfig.dartls.setup {}
require("flutter-tools").setup {}

-- lua
lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

-- general
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  underline = false
}
)

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "dart" },
  sync_install = false,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
