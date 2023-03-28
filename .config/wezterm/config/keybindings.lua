local wezterm = require("wezterm")
local act = wezterm.action

return {
	{
		key = "f",
		mods = "CMD",
		action = act.ToggleFullScreen,
	},
	{
		key = "t",
		mods = "CMD",
		action = act.SpawnCommandInNewTab,
	},
	{
		key = ";",
		mods = "CMD",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "'",
		mods = "CMD",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "d",
		mods = "SHIFT|CMD",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD",
		action = act.SplitPane({ direction = "Right" }),
	},
	{
		key = "h",
		mods = "CMD",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CMD",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CMD",
		action = act.ActivatePaneDirection("Down"),
	},

	{ key = "v", mods = "CMD", action = wezterm.action.PasteFrom 'Clipboard' },
	{ key = "c", mods = "CMD", action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection' },

	-- Font size
	{ key = "-", mods = "CMD", action = wezterm.action.DecreaseFontSize },
	{ key = "=", mods = "CMD", action = wezterm.action.IncreaseFontSize },

	-- resize window
	{
		key = "h",
		mods = "CMD|ALT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "j",
		mods = "CMD|ALT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{ key = "k", mods = "CMD|ALT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{
		key = "l",
		mods = "CMD|ALT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
}
