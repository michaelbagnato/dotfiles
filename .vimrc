" Basic vim settings
" ==============================================================================

" Display line numbers
set number

" Three space tabs
set tabstop=3
set shiftwidth=3

" Smart tabs
set smarttab

" Generic keybindings
nmap <silent> <buffer> <C-e> :NERDTree<CR>


" OmniSharp settings
" ==============================================================================

" Keybindings
augroup omnisharp_commands
	autocmd FileType cs nmap <silent> <buffer> <C-r>a :OmniSharpRunTestsInFile<CR>
augroup END

" Lightline setup
" ==============================================================================
let g:lightline = { 'colorscheme': 'Tomorrow_Night_Blue' }

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
