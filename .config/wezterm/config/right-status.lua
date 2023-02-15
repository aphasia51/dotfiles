local wezterm = require("wezterm")
local math_floor = math.floor
local math_ceil = math.ceil
local M = {}

local default_color = {
	foreground = "#c0caf5",
	background = "#24283b",
	ansi = { "#1d202f", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
	rosewater = "#f5e0dc",
}

local function clamp(x, min, max)
	return x < min and min or (x > max and max or x)
end

local function round(x, increment)
	if increment then
		return round(x / increment) * increment
	end
	return x >= 0 and math_floor(x + 0.5) or math_ceil(x - 0.5)
end

M.separator_char = " "

local icons = {
	time = " ",
	battery = "",
	rightpoint = "❱",
}

M.colors = {
	time = {
		fg = default_color.ansi[3],
		bg = default_color.background,
	},
	battery = {
		fg = default_color.rosewater,
		bg = default_color.background,
	},
	separator = {
		fg = default_color.ansi[8],
		bg = default_color.background,
	},
}

M.cells = {} -- wezterm FormatItems (ref: https://wezfurlong.org/wezterm/config/lua/wezterm/format.html)

M.push = function(text, icon, fg, bg, blank, separate)
	table.insert(M.cells, { Foreground = { Color = fg } })
	table.insert(M.cells, { Background = { Color = bg } })
	table.insert(M.cells, { Attribute = { Intensity = "Bold" } })
	if blank then
		table.insert(M.cells, { Text = icon .. " " .. text .. " " })
	else
		table.insert(M.cells, { Text = icon .. text })
	end

	if separate then
		table.insert(M.cells, { Foreground = { Color = M.colors.separator.fg } })
		table.insert(M.cells, { Background = { Color = M.colors.separator.bg } })
		table.insert(M.cells, { Text = M.separator_char })
	end

	table.insert(M.cells, "ResetAttributes")
end

M.set_date = function()
	local time = wezterm.strftime("%H:%M")

	M.push(time, icons.time, M.colors.time.fg, M.colors.time.bg, true, true)
end

M.set_battery = function()
	-- ref: https://wezfurlong.org/wezterm/config/lua/wezterm/battery_info.html
	local discharging_icons = { "", "", "", "", "", "", "", "", "", "" }
	local charging_icons = { "", "", "", "", "", "", "", "", "", "" }

	local charge = ""
	local icon = ""

	for _, b in ipairs(wezterm.battery_info()) do
		local idx = clamp(round(b.state_of_charge * 10), 1, 10)
		charge = string.format("%.0f%%", b.state_of_charge * 100)

		if b.state == "Charging" then
			icon = charging_icons[idx]
		else
			icon = discharging_icons[idx]
		end
	end

	M.push(charge, icon, M.colors.battery.fg, M.colors.battery.bg, true, false)
end

M.set_symbol = function()
	M.push("", icons.rightpoint, default_color.ansi[7], default_color.background, false, false)
	M.push("", icons.rightpoint, default_color.ansi[4], default_color.background, false, false)
	M.push("", icons.rightpoint, default_color.ansi[2], default_color.background, false, false)
end

M.setup = function()
	wezterm.on("update-right-status", function(window, _)
		M.cells = {}
		M.set_date()
		M.set_battery()
		M.set_symbol()

		window:set_right_status(wezterm.format(M.cells))
	end)
end
return M
