local awful = require("awful")

local weather_widget = awful.widget.watch("curl wttr.in/Melbourne?format=1", 60, function(widget, stdout, stderr, exitreason, exitcode)
	widget.font = "JetBrainsMono Nerd Font 9"
	if exitcode ~= 0 then
		widget:set_markup("<span color='#04D9FF'>" .. "Weather: " .. "Error" .. "</span>")
	else
		widget:set_markup("<span color='#04D9FF'>" .. stdout .. "</span>")
	end
end)

return weather_widget
