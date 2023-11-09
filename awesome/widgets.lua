local awful = require("awful")
local wibox = require("wibox")

local battery_widget = awful.widget.watch("acpi", 10, function(widget, stdout)
	local output = string.match(stdout, "%d+%%")
	local battery_level = tonumber(string.match(output, "%d+"))
	if string.match(stdout, "Charging") and battery_level < 100 then
		widget:set_markup("<span color='#00FF00'>" .. "Battery: " .. output .. "</span>")
	elseif battery_level < 15 then
		widget:set_markup("<span color='#FF0000'>" .. "Battery: " .. output .. "</span>")
	else
		widget:set_markup("<span color='#FF00FF'>" .. "Battery: " .. output .. "</span>")
	end
	widget.font = "JetBrainsMono Nerd Font 9"
end)


return {
	battery_widget = battery_widget
}
