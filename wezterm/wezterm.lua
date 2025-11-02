local wezterm = require 'wezterm';
return {
  font = wezterm.font("VictorMono Nerd Font Mono", {weight="DemiBold", style="Normal"}),
  -- cell_width = 1.05,
  -- font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("Iosevka Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("FiraCode Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  -- font = wezterm.font("JetBrains Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  font_size = 13,
  tab_bar_at_bottom = false,
  exit_behavior = "Close",
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  enable_tab_bar = false,
  keys = {
    {key="Tab", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},
    {key="Tab", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="m", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  }
}
