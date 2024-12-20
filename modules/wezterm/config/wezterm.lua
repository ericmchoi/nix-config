local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.default_prog = {
    "/Users/emchoi/.nix-profile/bin/fish", "-l", "-i"
}

config.quit_when_all_windows_are_closed = false
config.tab_bar_at_bottom = true
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.check_for_updates = false

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 14.0
config.front_end = "WebGpu"

config.color_scheme = "Kanagawa (Gogh)"

return config
