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
call plug#end()

colorscheme dracula


" Setup LSP
" ==============================================================================
lua << EOF
local on_attach = function(client, bufnr)
  -- Sets up completion upon Ctrl-X Ctrl-O
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end


local lspServers = {'tsserver'}
local nvim_lsp = require('lspconfig')

for _, lsp in ipairs(lspServers) do
	nvim_lsp[lsp].setup {
		on_attach = on_attach
	}
end
EOF
