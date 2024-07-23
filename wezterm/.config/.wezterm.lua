local wezterm = require("wezterm")

return {
	default_prog = { "pwsh.exe" },
	font = wezterm.font("MesloLGS Nerd Font"),
	font_size = 11.0,
	color_scheme = "Dracula",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.95,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
}
