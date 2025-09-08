local function keybind(shortcut, cmd)
   vim.keymap.set('n', shortcut, cmd)
end

-- Toggle File Explorer
keybind('<C-E>', '<cmd>NvimTreeToggle<CR>')

-- Fzf file search
keybind('<C-P>', function() require('fzf-lua').files() end)

-- Show LSP error currently under cursor
keybind('<C-M>', function()
   vim.diagnostic.open_float(nil, { focusable = false })
end)

-- Open a terminal
keybind('<C-`>', '<cmd>tabe term://fish<CR>')
