return {
   cmd = { "dart", "language-server", "--protocol=lsp" },
   root_markers = { "pubspec.yaml" },
   filetypes = { "dart" },
   on_attach = function(client, buffnr)
      vim.opt.completeopt="fuzzy,menuone,popup,noselect"
      vim.lsp.completion.enable(true, client.id, bufnr, {
         autotrigger = true
      })
   end,
   init_options = {
      closingLabels = true,
      flutterOutline = true,
      onlyAnalyzeProjectsWithOpenFiles = true,
      outline = true,
      suggestFromUnimportedLibraries = true
   },
   settings = {
      completeFunctionCalls = true,
      showTodos = true
   }
}
