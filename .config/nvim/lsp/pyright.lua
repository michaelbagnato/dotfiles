return {
   cmd = { "pyright-langserver", "--stdio" },
   root_markers = { "requirements.txt", "pyproject.toml" },
   filetypes = { "python" },
   single_file_support = true,
   settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = 'openFilesOnly',
        },
      },
   },
   on_attach = function(client, buffnr)
      vim.opt.completeopt="fuzzy,menuone,popup,noselect"
      vim.lsp.completion.enable(true, client.id, bufnr, {
         autotrigger = true
      })
   end
}
