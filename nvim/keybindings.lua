local function keybind(shortcut, cmd)
   vim.keymap.set('n', shortcut, cmd)
end

-- Toggle File Explorer
keybind('<C-E>', '<cmd>Lex<CR>')

-- Open telescope for file search
keybind('<C-F>', '<cmd>Telescope find_files<CR>')
