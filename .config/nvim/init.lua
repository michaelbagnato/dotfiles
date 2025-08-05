package.path = os.getenv("HOME") .. "/.config/nvim/?.lua;" .. package.path
require("keybindings")
require("plugins")
require("lsp")

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Show line numbers
vim.opt.number = true

-- Tab width of 3
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

-- Clear registers on load
vim.opt.shada = nil

