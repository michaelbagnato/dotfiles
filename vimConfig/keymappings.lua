local function map(kind, lhs, rhs, opts)
	vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local silentnoremap = {
	noremap = true,
	silent = true
}

map("n", "<C-E>", ":NERDTreeToggle<CR>", silentnoremap)
map("n", "ga", ":Git add %<CR>", silentnoremap)
map("n", "gc", ":Git commit<CR>", silentnoremap)
map("n", "gl", ":Git pull<CR>", silentnoremap)
map("n", "gp", ":Git push<CR>", silentnoremap)

