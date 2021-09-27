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

" Plugins (using vim-plug)
" ==============================================================================
call plug#begin('~/.vim/plugged')
" Dracula theme
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

colorscheme dracula

