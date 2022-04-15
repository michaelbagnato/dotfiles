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
