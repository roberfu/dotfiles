local wezterm = require("wezterm")

local config = {
	default_prog = { "pwsh.exe" },
	font = wezterm.font("Hack Nerd Font"),
	font_size = 10,
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	window_background_opacity = 0.95,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	initial_cols = 120,
	initial_rows = 30,

	colors = {
		foreground = "#c0caf5",
		background = "#24283b",
		cursor_bg = "#c0caf5",
		cursor_border = "#c0caf5",
		cursor_fg = "#24283b",
		selection_bg = "#2e3c64",
		selection_fg = "#c0caf5",
		split = "#7aa2f7",
		compose_cursor = "#ff9e64",
		scrollbar_thumb = "#292e42",
		ansi = {
			"#1d202f",
			"#f7768e",
			"#9ece6a",
			"#e0af68",
			"#7aa2f7",
			"#bb9af7",
			"#7dcfff",
			"#a9b1d6",
		},
		brights = {
			"#414868",
			"#f7768e",
			"#9ece6a",
			"#e0af68",
			"#7aa2f7",
			"#bb9af7",
			"#7dcfff",
			"#c0caf5",
		},
		tab_bar = {
			inactive_tab_edge = "#1f2335",
			background = "#24283b",
			active_tab = {
				fg_color = "#1f2335",
				bg_color = "#7aa2f7",
			},
			inactive_tab = {
				fg_color = "#545c7e",
				bg_color = "#292e42",
			},
			inactive_tab_hover = {
				fg_color = "#7aa2f7",
				bg_color = "#292e42",
			},
			new_tab_hover = {
				fg_color = "#7aa2f7",
				bg_color = "#24283b",
				intensity = "Bold",
			},
			new_tab = {
				fg_color = "#7aa2f7",
				bg_color = "#24283b",
			},
		},
	},
}

return config
