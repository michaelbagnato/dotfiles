" Basic vim settings
" ==============================================================================

" Display line numbers
set number

" Three space tabs
set tabstop=3
set shiftwidth=3

" Smart tabs
set smarttab



" NerdTREE setup
" ==============================================================================
autocmd VimEnter * NERDTree


" Miscellaneous
" ==============================================================================

" Load all plugins
packloadall

" Regenerate help files
silent! helptags ALL

" Theme setup
syntax enable
colors dracula

filetype indent plugin on
