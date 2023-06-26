local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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
