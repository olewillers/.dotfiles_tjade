-- -- Config for the WezTerm Terminal Emulator
-- -- Author: Ole Willers
--
local wezterm = require("wezterm")
local config = {}

-- sets dark or light mode for consistency with desktop environment settings
function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- font settings
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0

-- window settings
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}
config.window_background_opacity = 0.8
-- config.enable_wayland = false
config.enable_tab_bar = false
config.initial_rows = 40
config.initial_cols = 153

-- wezterm.on("gui-startup", function(cmd)
-- 	local mux = wezterm.mux
-- 	local _, _, window = mux.spawn_window(cmd or {})
-- 	local gui = window:gui_window()
-- 	gui:set_inner_size(2000, 1200) -- falls nötig
-- 	gui:set_position(1000, 100) -- X/Y Pixelposition
-- end)

return config
