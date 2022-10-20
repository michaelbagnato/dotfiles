vim.cmd([[
call plug#begin('~/.vim/plugged')

" Dracula colour scheme
Plug 'Mofiqul/dracula.nvim'

" Lualine.nvim - Status line config
Plug 'nvim-lualine/lualine.nvim'

" NERDTree - File explorer
Plug 'preservim/nerdtree' 

" LSP Config - Configurations for LSPs
Plug 'neovim/nvim-lspconfig' 

Plug 'alexaandru/nvim-lspupdate' 

" Coq - Autocompletion
Plug 'ms-jpq/coq_nvim',{'branch':'coq'} 

" Fugitive - Git support for Vim
" TODO Look for Nvim replacement
Plug 'tpope/vim-fugitive'

" Treesitter - Highlighting improvements
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Vim DevIcons - file type icons for NERDTree
" (Must be installed as the last plugin)
Plug 'ryanoasis/vim-devicons'

call plug#end()
]])
