-- wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Favorite Themes
-- config.color_scheme = "Catppuccin Mocha" -- Dark
config.color_scheme = "Catppuccin Frappe" -- Light(ish)
-- config.color_scheme = "Sweet Love (terminal.sexy)"
-- config.color_scheme = "Atelierdune (light) (terminal.sexy)"

-- ***** DARK THEMES *****
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Banana Blueberry"
-- config.color_scheme = "arcoiris"
-- config.color_scheme = "duskfox"
-- config.color_scheme = "rose-pine"
-- config.color_scheme = "kanagawabones"

-- ***** LIGHT THEMES *****
-- config.color_scheme = "rose-pine-dawn"

config.window_background_opacity = 1.0

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.colors = {
	scrollbar_thumb = "444861",
}

config.scrollback_lines = 10000

config.window_frame = {
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#333333",
}

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false
config.enable_scroll_bar = true
config.mouse_wheel_scrolls_tabs = false

-- Shortcut to modify current command in nvim
config.keys = {
	{
		key = "E",
		mods = "CTRL",
		action = wezterm.action({ SendString = "fc\n" }),
	},
}

config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = "%",
		mods = "CTRL|SHIFT|",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- TODO: AdjustPaneSize isn't working
function pane_default_1()
	return wezterm.action.Multiple({
		wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		wezterm.action.ActivatePaneDirection("Right"),
		wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		wezterm.action.AdjustPaneSize({ "Right", 40 }),
	})
end

-- TODO: Activate pane isn't working
function pane_default_2()
	return wezterm.action.Multiple({
		wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		wezterm.action.ActivatePaneDirection("Up"),
		wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	})
end

-- tmux-esq congig
config.leader = { key = "g", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "b",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "n",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "LEADER",
		key = "'",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 40 }),
	},
	{
		mods = "LEADER",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 40 }),
	},
	{
		mods = "LEADER",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 25 }),
	},
	{
		mods = "LEADER",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 25 }),
	},
	-- Pane Management Defaults
	{
		mods = "LEADER",
		key = "a",
		action = pane_default_1(),
	},
	{
		mods = "LEADER",
		key = "s",
		action = pane_default_2(),
	},
}

-- Mod + Num to switch to active tab
for i = 0, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i),
	})
end

return config
