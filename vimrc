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
" Dracula theme
Plug 'dracula/vim',{'as':'dracula'}
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme dracula

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
