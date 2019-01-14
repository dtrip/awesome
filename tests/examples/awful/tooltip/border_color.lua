--DOC_GEN_IMAGE
--DOC_NO_USAGE
--DOC_HIDE_ALL
screen[1]._resize {width = 640, height = 55}
screen.no_outline = true
local awful = {tooltip = require("awful.tooltip")}
local beautiful = require("beautiful")

-- mouse.coords{x=50, y= 10}

awesome.emit_signal("refresh")

local x_offset = 0

for _, color in ipairs{ "#ff0000", "#00ff00", "#0000ff", "#00ffff" } do
    local tt = awful.tooltip {
        text = color,
        mode = "mouse",
        border_width = 2,
        border_color = color,
    }
    tt.bg = beautiful.bg_normal
    awesome.emit_signal("refresh")
    tt:show()
    awesome.emit_signal("refresh")
    tt.wibox.x = x_offset
    x_offset = x_offset + 640/5
end

mouse.coords{x=125, y= 0}
-- mouse.push_history()
awesome.emit_signal("refresh")
