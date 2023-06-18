package.path = package.path .. ";/home/michaelb/vimConfig/?.lua" .. ";/Users/michael/vimConfig/?.lua"
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

local fm = require('fluoromachine')
fm.setup {
	glow = true,
	transparent = 'true',
}
vim.cmd.colorscheme('fluoromachine')

require('nvim-tree').setup()

vim.cmd([[
" Enable autocompletion
COQnow
]])
