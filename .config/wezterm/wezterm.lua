local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 12.5
config.font = wezterm.font("FantasqueSansM Nerd Font")
config.adjust_window_size_when_changing_font_size = false

config.enable_wayland = false
config.window_decorations = "RESIZE"
config.color_scheme = "catppuccin-mocha"

config.max_fps = 120
config.harfbuzz_features = { "calt=0" }

config.enable_tab_bar = false
config.enable_kitty_graphics = true
config.window_close_confirmation = "NeverPrompt"

config.macos_window_background_blur = 30
config.window_background_opacity = 0.95
config.audible_bell = "Disabled"

config.window_padding = {
	left = 1,
	right = 1,
	bottom = 0,
}

if wezterm.gui then
  local appearance = wezterm.gui.get_appearance();
  if appearance:find 'Dark' then
    config.color_scheme = "catppuccin-mocha"
  else
    config.color_scheme = "catppuccin-latte"
  end
end

return config
