lua << EOF
local on_attach = function(client, bufnr)
end


local lspServers = {'tsserver', 'intelephense'}
local nvim_lsp = require('lspconfig')
local coq = require('coq')

for _, lsp in ipairs(lspServers) do
	nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
		on_attach = on_attach
	}))
end
EOF
