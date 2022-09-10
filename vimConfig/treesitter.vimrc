lua<<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "typescript", "vim" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true
	},
}
EOF
