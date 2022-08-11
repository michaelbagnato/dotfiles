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

" Terminal GUI colours
set termguicolors

source ~/.vimConfig/plugins.vimrc
source ~/.vimConfig/lsp.vimrc
source ~/.vimConfig/keymappings.vimrc
source ~/.vimConfig/lualine.vimrc
source ~/.vimConfig/treesitter.vimrc
colorscheme dracula 

" Enable autocompletion
COQnow

