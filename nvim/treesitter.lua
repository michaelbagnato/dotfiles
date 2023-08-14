return require('nvim-treesitter.configs').setup {
	ensure_installed = { "typescript", "vim", "lua", "go", "dockerfile", "markdown", "svelte" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true
	},
}