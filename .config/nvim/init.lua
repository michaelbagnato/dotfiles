require("keybindings")
require("lsp")
require("netrw")

-- Show line numbers
vim.opt.number = true

-- Tab width of 3
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Clear registers on load
vim.opt.shada = ""

vim.pack.add({
  { src = "https://github.com/dracula/vim.git", name = "dracula-theme" }
})

vim.cmd.colorscheme "dracula"
