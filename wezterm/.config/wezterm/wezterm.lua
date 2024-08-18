local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true

-- Font
config.font = wezterm.font("MonoLisa Nerd Font")
config.font_size = 12

-- Window
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

-- Theme
config.color_scheme = "Catppuccin Mocha (Gogh)"

return config
