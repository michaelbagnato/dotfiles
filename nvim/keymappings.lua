vim.keymap.set("n", "<C-E>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

