local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  -- HTML CSS
  "html",
  "cssls",
  "tailwindcss",

  -- TypeScript, JavaScript
  "tsserver",

  -- PHP
  "intelephense",
  "eslint",

  -- Go
  "gopls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
