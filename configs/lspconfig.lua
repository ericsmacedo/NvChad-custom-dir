local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["pylsp"].setup {
  cmd = {"/home/emacedo/.config/nvim/pyenv/bin/pylsp"},
  on_attach = on_attach,
  capabilities = capabilities,
}

require'lspconfig'.jedi_language_server.setup{
  cmd = {"/home/emacedo/.config/nvim/pyenv/bin/jedi-language-server"},
  on_attach = on_attach,
  capabilities = capabilities,
}

-- 
-- lspconfig.pyright.setup { blabla}
