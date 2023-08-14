local battery_widget = require("battery-widget") {
	battery_prefix = utf8.char(128267),
	ac_prefix = utf8.char(128268),
	widget_font = "JetBrainsMono Nerd Font 8"
}

return {
	battery_widget = battery_widget
}
