package.path = package.path .. ";/home/michael/vimConfig/?.lua"
require('plugins')
require('statusline')
require('treesitter')
require('lsp')
vim.o.number = true

-- Three space tabs
vim.o.tabstop = 3
vim.o.shiftwidth = 3

-- Smart tabs
vim.o.smarttab = true

vim.o.viminfo = false

-- Terminal GUI colours
vim.o.termguicolors = true

vim.cmd('colorscheme dracula')

vim.cmd([[
source ~/vimConfig/keymappings.vimrc

" Enable autocompletion
COQnow
]])