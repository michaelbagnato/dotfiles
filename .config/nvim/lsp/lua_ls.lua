return {
   cmd = { "lua-language-server" },
   root_markers = { ".git", "lua" },
   filetypes = { "lua" },
   settings = {
      Lua = {
          diagnostics = {
            globals = { "vim" }
          },
          analysis = {
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
            diagnosticMode = 'openFilesOnly',
          },
      }
   },
    on_attach = function(client, buffnr)
      vim.opt.completeopt="fuzzy,menuone,popup,noselect"
      vim.lsp.completion.enable(true, client.id, bufnr, {
         autotrigger = true
      })
    end
}
