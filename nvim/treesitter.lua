return require('nvim-treesitter.configs').setup {
	ensure_installed = { "typescript", "vim", "go", "dockerfile", "markdown", "tsx" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true
	},
}
