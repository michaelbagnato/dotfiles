local awful = require("awful")
local wibox = require("wibox")

local battery_command = "acpi"

local battery_widget = wibox.widget {
	{
		widget = awful.widget.watch(battery_command, 10, function(widget, stdout)
			local output = string.match(stdout, "%d+%%")
			widget:set_text("Battery: " .. output)
		end),
	},
	layout = wibox.layout.fixed.horizontal,
}

return {
	battery_widget = battery_widget
}
