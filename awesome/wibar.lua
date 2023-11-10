-- Import necessary libraries
local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local global = require("global")
local widgets = require("widgets")

local tasklist_buttons = gears.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  c:emit_signal(
                                                      "request::activate",
                                                      "tasklist",
                                                      {raise = true}
                                                  )
                                              end
                                          end),
                     awful.button({ }, 3, function()
                                              awful.menu.client_list({ theme = { width = 250 } })
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                          end))

local taglist_buttons = gears.table.join(
                    awful.button({ }, 1, function(t) t:view_only() end),
                    awful.button({ global.modkey }, 1, function(t)
                                              if client.focus then
                                                  client.focus:move_to_tag(t)
                                              end
                                          end),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ global.modkey }, 3, function(t)
                                              if client.focus then
                                                  client.focus:toggle_tag(t)
                                              end
                                          end),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
                )

-- Create a text widget to display the date and time
local datetime_widget = wibox.widget.textclock("%a %b %d, %H:%M")

-- Create the wibar
awful.screen.connect_for_each_screen(function(s)
    gears.wallpaper.maximized("/home/michael/Pictures/Wallpaper.jpg", s)
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = taglist_buttons
    }

	-- Create a text widget to display the layout
	local layout_widget = awful.widget.layoutbox(s)
	layout_widget:buttons(gears.table.join(
   	awful.button({}, 1, function () awful.layout.inc(1) end),
    	awful.button({}, 3, function () awful.layout.inc(-1) end),
	   awful.button({}, 4, function () awful.layout.inc( 1) end),
	   awful.button({}, 5, function () awful.layout.inc(-1) end)
	))

	-- Create a widget for open application icons
	local app_icons_widget = awful.widget.tasklist {
		screen  = s,
		filter  = awful.widget.tasklist.filter.currenttags,
		buttons = tasklist_buttons,
	}

    -- Create the wibar itself
    s.mywibar = awful.wibar({
        position = "top",
        screen = s,
    })

    -- Add widgets to the wibar
    s.mywibar:setup {
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
				{
					widget = wibox.container.margin,
					left = 5,
					right = 5,
					layout_widget
				},
        },
        app_icons_widget,
        {
            layout = wibox.layout.fixed.horizontal,
				widgets.battery_widget,
				wibox.widget.systray(),
				datetime_widget,
        }
    }
end)

