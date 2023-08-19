local wezterm = require("wezterm")
local keybindings = require("config.keybindings")

-- require("config.right-status").setup()
-- require("config.tab-tittle").setup()

local config = {
	font_size = 18,
	line_height = 1.0,
	-- font = wezterm.font("OperatorMono Nerd Font", { weight = "Light" }),
  font = wezterm.font("JetBrainsMono Nerd Font"), -- 325
	font_rules = {
		{
			italic = true,
			font = wezterm.font({
				family = "FiraCode Nerd Font",
				-- weight = "Book",
			}),
		},
	},
  window_background_opacity = 0.92,
  macos_window_background_blur = 30,

	adjust_window_size_when_changing_font_size = false,
	window_decorations = "RESIZE",
	enable_tab_bar = true,
  tab_max_width = 36,
  use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Whimsy",
	colors = {
		background = "#262a33",
	},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	initial_cols = 110,
	initial_rows = 32,
	enable_csi_u_key_encoding = true,

	-- keybindings
	disable_default_key_bindings = true,
	keys = keybindings,
}

return config
