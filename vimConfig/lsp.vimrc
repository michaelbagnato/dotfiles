lua << EOF
local on_attach = function(client, bufnr)
end


local lspServers = {'tsserver', 'angularls', 'sumneko_lua'}
local nvim_lsp = require('lspconfig')
local coq = require('coq')

for _, lsp in ipairs(lspServers) do
	nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
		on_attach = on_attach
	}))
end

-- Diagnostic window
vim.diagnostic.config({
	virtual_text = false
})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, border='double'})]]
EOF
