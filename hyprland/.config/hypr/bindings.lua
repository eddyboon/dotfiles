-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Move Keybindings menu from SUPER+K to SUPER+SHIFT+K
hl.unbind("SUPER + K")
o.bind("SUPER + SHIFT + K", "Keybindings", "omarchy-menu-keybindings")

-- Move Toggle window split from SUPER+J to SUPER+SHIFT+J
hl.unbind("SUPER + J")
o.bind("SUPER + SHIFT + J", "Toggle window split", hl.dsp.layout("togglesplit"))

-- Move Toggle workspace layout from SUPER+L to SUPER+SHIFT+L
hl.unbind("SUPER + L")
o.bind("SUPER + SHIFT + L", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")

-- Rebind youtube
hl.unbind("SUPER + SHIFT + Y")
o.bind("SUPER + SHIFT + Y", "Youtube in Zen", "xdg-open 'https://youtube.com'")

-- Vim-style focus movement (SUPER+H/J/K/L are free after the remaps above)
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))

-- Snipaste: its own internal global hotkeys never fire under Hyprland
-- (it's an XWayland client and Hyprland doesn't forward key grabs to
-- unfocused XWayland apps). Bind the keys here instead and call its
-- CLI directly -- Snipaste must already be running for this to work,
-- which autostart.lua now ensures.
o.bind("F1", "Snipaste snip", "Snipaste snip")
o.bind("F3", "Snipaste paste", "Snipaste paste")
