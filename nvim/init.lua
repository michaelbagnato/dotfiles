package.path = package.path .. ";/home/michael/.config/nvim/?.lua"
require('plugins')
require('statusline')
require('treesitter')
require('lsp')
require('keymappings')
vim.o.number = true

-- Three space tabs
vim.o.tabstop = 3
vim.o.shiftwidth = 3

-- Smart tabs
vim.o.smarttab = true

vim.o.viminfo = false

vim.g.copilot_assume_mapped = true

local fm = require('fluoromachine')
fm.setup {
	glow = true,
	transparent = 'true',
}
vim.cmd.colorscheme('fluoromachine')

require('nvim-tree').setup()


vim.cmd([[
" Enable autocompletion
COQnow --shut-up
]])
