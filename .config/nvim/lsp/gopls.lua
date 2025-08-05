return {
   cmd = { "gopls" },
   root_markers = { "go.mod" },
   filetypes = { "go" },
   on_attach = function(client, buffnr)
      vim.opt.completeopt="fuzzy,menuone,popup,noselect"
      vim.lsp.completion.enable(true, client.id, bufnr, {
         autotrigger = true
      })
   end
}
