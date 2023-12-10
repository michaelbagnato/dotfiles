local function map(lhs, rhs)
	vim.keymap.set("n", lhs, rhs, { noremap = true, silent = true })
end

map("<C-E>", ":NvimTreeToggle<CR>")
vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

