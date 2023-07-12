vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

-- FluoroMachine colour scheme
use 'maxmx03/FluoroMachine.nvim'

-- Lualine.nvim - Status line config
use 'nvim-lualine/lualine.nvim'

-- Nvim-tree-lua: Neovim file explorer
use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons',
	}
}

-- LSP Config - Configurations for LSPs
use 'neovim/nvim-lspconfig'
use 'williamboman/nvim-lsp-installer'

-- Coq - Autocompletion
use {'ms-jpq/coq_nvim', branch = 'coq'}

-- Fugitive - Git support for Vim
-- TODO Look for Nvim replacement
use 'tpope/vim-fugitive'

-- Treesitter - Highlighting improvements
use {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'}


-- Markdown Preview
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use 'github/copilot.vim'
end)
