
-- wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Banana Blueberry"
-- config.color_scheme = "arcoiris"
-- config.color_scheme = "duskfox"
-- config.color_scheme = "rose-pine"
config.window_background_opacity = 0.90
config.color_scheme = "kanagawabones"
config.font = wezterm.font "JetBrains Mono"
config.colors = {
  scrollbar_thumb = '444861'
}

config.scrollback_lines = 10000

config.window_frame = {
  font = wezterm.font { family = 'Roboto', weight = 'Bold' },
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}

config.enable_scroll_bar = true
config.mouse_wheel_scrolls_tabs = false

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '%',
    mods = 'CTRL|SHIFT|',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}




return config
