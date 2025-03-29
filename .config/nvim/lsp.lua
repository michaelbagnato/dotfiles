vim.lsp.config.lua_ls = {
   cmd = { "lua-language-server" },
   root_markers = { ".git", "lua" },
   filetypes = { "lua" },
}

vim.lsp.config.ts_ls = {
   cmd = { "typescript-language-server", "--stdio" },
   root_markers = { ".git", "tsconfig.json" },
   filetypes = { "typescript", "javascript" },
}

vim.lsp.enable({"lua_ls", "ts_ls"})
