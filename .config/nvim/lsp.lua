-- Setting up LSP configs with default keymaps
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach = function(client, bufnr)
   lsp_zero.default_keymaps(client, bufnr)
end
lsp_zero.setup()

-- Automatic installation of LSPs
local lsps = {
   "lua_ls",
   "ts_ls"
}

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = lsps,
  handlers = {
      lsp_zero.default_setup,
  }
})

-- Setting up autocompletion
local cmp = require("cmp")
cmp.setup({
   mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
   },
})
