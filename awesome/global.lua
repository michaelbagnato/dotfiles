terminal = "terminator"
editor = "nvim"
editor_cmd = terminal .. " -e " .. editor

return {
	terminal = terminal,
	editor = editor,
	editor_cmd = editor_cmd,
	modkey = "Mod4"
}
