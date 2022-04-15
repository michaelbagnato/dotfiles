" Basic vim settings
" ==============================================================================

" Display line numbers
set number

" Three space tabs
set tabstop=3
set shiftwidth=3

" Smart tabs
set smarttab

set viminfo=""
map <C-E> :NERDTreeToggle<CR>

" Plugins (using vim-plug)
" ==============================================================================
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim',{'as':'dracula'}
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'alexaandru/nvim-lspupdate'
Plug 'ms-jpq/coq_nvim',{'branch':'coq'}
call plug#end()

colorscheme dracula


" Setup LSP
" ==============================================================================
lua << EOF
local on_attach = function(client, bufnr)
end


local lspServers = {'tsserver'}
local nvim_lsp = require('lspconfig')
local coq = require('coq')

for _, lsp in ipairs(lspServers) do
	nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
	--	nvim_lsp[lsp].setup {
		on_attach = on_attach
	}))
end
EOF

" Enable autocompletion
COQnow

