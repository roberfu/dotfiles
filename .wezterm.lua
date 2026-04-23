local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.colors = {
  foreground = "#abb2bf",
  background = "#282c34",
  cursor_bg = "#528bff",
  cursor_border = "#528bff",
  cursor_fg = "#282c34",
  selection_bg = "#3e4451",
  selection_fg = "#abb2bf",

  ansi = {
    "#282c34",
    "#e06c75",
    "#98c379",
    "#e5c07b",
    "#61afef",
    "#c678dd",
    "#56b6c2",
    "#abb2bf",
  },
  brights = {
    "#3e4451",
    "#e06c75",
    "#98c379",
    "#e5c07b",
    "#61afef",
    "#c678dd",
    "#56b6c2",
    "#ffffff",
  },

  tab_bar = {
    background = "#21252b",
    inactive_tab_edge = "#181a1f",
    active_tab = {
      fg_color = "#abb2bf",
      bg_color = "#282c34",
    },
    inactive_tab = {
      fg_color = "#5c6370",
      bg_color = "#21252b",
    },
    inactive_tab_hover = {
      fg_color = "#abb2bf",
      bg_color = "#21252b",
    },
    new_tab = {
      fg_color = "#5c6370",
      bg_color = "#21252b",
    },
    new_tab_hover = {
      fg_color = "#abb2bf",
      bg_color = "#21252b",
      intensity = "Bold",
    },
  },
}

config.font = wezterm.font("Hack Nerd Font", { weight = "Regular" })
config.font_size = 12.0

config.initial_cols = 160
config.initial_rows = 40

config.window_background_opacity = 0.9
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true

config.scrollback_lines = 10000
config.audible_bell = "Disabled"

return config
