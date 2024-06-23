local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local themes_path = "~/.config/awesome/"
local theme = {}

theme.font = "monospace 12"

theme.bg_normal = "#191724"
theme.bg_focus = "#31748f"
theme.bg_urgent = "#eb6f92"
theme.bg_minimize = "#1f1d2e"
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#faf4ed"
theme.fg_focus = theme.fg_normal
theme.fg_urgent = theme.fg_normal
theme.fg_minimize = theme.fg_nomal

theme.useless_gap = dpi(2)
theme.border_width = dpi(2)
theme.border_normal = "#000000"
theme.border_focus = "#9ccfd8"
theme.border_marked = "#c4a7e7"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

theme.menu_submenu_icon = themes_path .. "rose-pine/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

theme.wallpaper = themes_path .. "rose-pine/background-alt.jpg"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)
theme.icon_theme = nil
theme.tasklist_disable_icon = true

return theme
