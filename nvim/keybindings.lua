local function keybind(shortcut, cmd)
   vim.keymap.set('n', shortcut, cmd)
end

-- Toggle File Explorer
keybind('<C-E>', '<cmd>Lex<CR>')
