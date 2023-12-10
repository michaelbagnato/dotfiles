local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'maxmx03/FluoroMachine.nvim',
	'nvim-lualine/lualine.nvim',
	'neovim/nvim-lspconfig',
	'williamboman/nvim-lsp-installer',
	'github/copilot.vim',
	{ 
		'nvim-treesitter/nvim-treesitter', 
		cmd = "TSUpdate" 
	},
	{ 
		'ms-jpq/coq_nvim', 
		branch = 'coq' 
	},
	{ 
		'nvim-tree/nvim-tree.lua', 
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		}
	}

})
