package.path = os.getenv("HOME") .. "/.config/nvim/?.lua;" .. package.path
require("keybindings")
require("plugins")
require("lsp")

-- Show line numbers
vim.opt.number = true

-- Tab width of 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

-- Clear registers on load
vim.opt.shada = nil

-- Colour scheme
vim.opt.termguicolors = true
vim.cmd("colorscheme dracula")
