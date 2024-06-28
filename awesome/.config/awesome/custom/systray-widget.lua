-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")

local icon = wibox.widget({
    widget = wibox.widget.imagebox,
    resize = false,
})

icon:set_image("/usr/share/icons/Arc/actions/symbolic/go-bottom-symbolic.svg")

local systray_widget = wibox.widget({
    {
        icon,
        valign = "center",
        layout = wibox.container.place,
    },
    top = 3,
    widget = wibox.container.margin,
})


local function worker()
    local systray = wibox.widget.systray()
    systray.set_base_size(24)

    local popup = awful.popup({
        bg = beautiful.bg_normal,
        ontop = true,
        visible = false,
        shape = gears.shape.rounded_rect,
        border_width = 1,
        border_color = "#000000",
        maximum_width = 400,
        offset = { y = 5 },
        widget = {},
    })

    local myroundsystray = wibox.widget({
        {
            systray,
            left = 10,
            top = 2,
            bottom = 2,
            right = 10,
            widget = wibox.container.margin,
        },
        bg = beautiful.bg_normal,
        shape = gears.shape.rounded_rect,
        shape_clip = true,
        widget = wibox.container.background,
    })

    local content = {
        layout = wibox.layout.fixed.vertical,
        myroundsystray,
    }

    systray_widget:buttons(awful.util.table.join(awful.button({}, 1, function()
        if popup.visible then
            popup.visible = not popup.visible
        else
            popup:setup(content)
            popup:move_next_to(mouse.current_widget_geometry)
        end
    end)))

    return systray_widget
end

return setmetatable(systray_widget, {
    __call = function(_, ...)
        return worker()
    end,
})
