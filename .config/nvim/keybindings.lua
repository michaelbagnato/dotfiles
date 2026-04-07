local function keybind(shortcut, cmd)
   vim.keymap.set('n', shortcut, cmd)
end

keybind('<C-M>', function()
   vim.diagnostic.open_float(nil, { focusable = false })
end)

-- Open a terminal
keybind('<C-`>', function()
   vim.cmd.tabnew("term://fish")
end)
