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

" Fugitive - Git support for Vim
Plug 'tpope/vim-fugitive'

" Airline - status bar config
Plug 'vim-airline/vim-airline'

" Vim DevIcons - file type icons for NERDTree
" (Must be installed as the last plugin)
Plug 'ryanoasis/vim-devicons'

call plug#end()
