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

-- Terminal GUI colours
vim.o.termguicolors = true

local success, fluoromachine = pcall(require, 'fluoromachine')
fluoromachine:setup {
	config = {
		glow = true,
		transparent = true
	}
}
vim.cmd 'colorscheme fluoromachine'

vim.cmd([[
" Enable autocompletion
COQnow
]])
