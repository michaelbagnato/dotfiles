" Basic vim settings
" ==============================================================================

" Display line numbers
set number

" Three space tabs
set tabstop=3
set shiftwidth=3

" Smart tabs
set smarttab

" Disabling viminfo
let skip_defaults_vim=1
set viminfo=""

" Generic keybindings
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-S-m> :LspDocumentDiagnostics<CR>

" OmniSharp settings
" ==============================================================================

" Keybindings
augroup omnisharp_commands
	autocmd FileType cs nmap <silent> <buffer> <C-r>a :OmniSharpRunTestsInFile<CR>
augroup END

" Lightline setup
" ==============================================================================

let g:lightline = { 'colorscheme': 'one' }

" Miscellaneous
" ==============================================================================

" Load all plugins
packloadall

" Regenerate help files
silent! helptags ALL

" Theme setup
syntax enable
colorscheme synthwave

filetype indent plugin on

" Always display the status line.
" I have no idea why this is necessary, only that it's the only way I can get
" NERDTree to play nice with Lightline
set laststatus=2
