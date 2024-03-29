local awful = require("awful")

local weather_widget = require("widgets.weather")
local battery_widget = awful.widget.watch("acpi", 10, function(widget, stdout)
	local color = ''
	local output = string.match(stdout, "%d+%%")
	local battery_level = tonumber(string.match(output, "%d+"))
	if string.match(stdout, "Charging") and battery_level < 100 then
		color = '#00FF00'
	elseif battery_level < 15 then
		color = '#FF0000'
	else
		color = '#FF00FF'
	end
	widget:set_markup("<span color='" .. color .. "'>" .. "Battery: " .. output .. "</span>")
	widget.font = "JetBrainsMono Nerd Font 9"
end)


return {
	battery_widget = battery_widget,
	weather_widget = weather_widget
}
