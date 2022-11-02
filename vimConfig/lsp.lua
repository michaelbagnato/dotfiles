local on_attach = function(client, bufnr)
end

local lspServers = {'tsserver', 'sumneko_lua', 'gopls'}
local nvim_lsp = require('lspconfig')
local coq = require('coq')

require("nvim-lsp-installer").setup{}
for _, lsp in ipairs(lspServers) do
	if(lsp == "sumneko_lua")
	then
		nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
			on_attach = on_attach,
			settings = {
   			Lua = {
			      diagnostics = {
			        globals = {'vim'},
      			}
    			}
  			}
		}))
	else
		nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
			on_attach = on_attach
		}))
	end
end

-- Diagnostic window
vim.diagnostic.config({
	virtual_text = false
})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, border='double'})]]
