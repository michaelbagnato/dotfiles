vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

-- Dracula colour scheme
use 'Mofiqul/dracula.nvim'

-- Lualine.nvim - Status line config
use 'nvim-lualine/lualine.nvim'

-- NERDTree - File explorer
use 'preservim/nerdtree'

-- LSP Config - Configurations for LSPs
use 'neovim/nvim-lspconfig'
use 'alexaandru/nvim-lspupdate'

-- Coq - Autocompletion
use {'ms-jpq/coq_nvim', branch = 'coq'}

-- Fugitive - Git support for Vim
-- TODO Look for Nvim replacement
use 'tpope/vim-fugitive'

-- Treesitter - Highlighting improvements
use {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'}

-- Vim DevIcons - file type icons for NERDTree
-- (Must be installed as the last plugin)
use 'ryanoasis/vim-devicons'
end)
