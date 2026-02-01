require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "json" }
vim.lsp.enable(servers)

local lspconfig = require('lspconfig')-- read :h vim.lsp.config for changing options of lsp servers 
lspconfig.jsonls.setup({})
lspconfig.ts_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.lemminx.setup({})
