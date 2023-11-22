local function map(lhs, rhs)
	vim.keymap.set("n", lhs, rhs, { noremap = true, silent = true })
end

map("<C-E>", ":NvimTreeToggle<CR>")
map("ga", ":Git add %<CR>")
map("gc", ":Git commit<CR>")
map("gl", ":Git pull<CR>")
map("gp", ":Git push<CR>")
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

