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

" Terminal GUI colours
set termguicolors

" Plugins (using vim-plug)
" ==============================================================================
call plug#begin('~/.vim/plugged')
" Dracula - Colourscheme
Plug 'dracula/vim',{'as':'dracula'} 

" NERDTree - File explorer
Plug 'preservim/nerdtree' 

" LSP Config - Configurations for LSPs
Plug 'neovim/nvim-lspconfig' 

Plug 'alexaandru/nvim-lspupdate' 

" Coq - Autocompletion
Plug 'ms-jpq/coq_nvim',{'branch':'coq'} 

" Synthwave84 - Colourscheme
Plug 'artanikin/vim-synthwave84'

" Fugitive - Git support for Vim
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme synthwave84


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
		on_attach = on_attach
	}))
end
EOF

" Enable autocompletion
COQnow

